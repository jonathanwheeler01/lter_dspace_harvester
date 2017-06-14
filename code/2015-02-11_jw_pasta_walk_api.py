import string
import os
import xml.dom.minidom
import hashlib
import urllib2
import codecs

metaList = []
serviceList = []
scopeList = []
dpIdentifiers = []
revisionDict =  {}
packageDict = {}

baseURL = 'https://pasta.lternet.edu/package'

def listDataPackageIdentifiers(baseURL, scope):
    # empty the list of identifiers
    dpIdentifiers[:] = []
    req = urllib2.Request(baseURL + '/eml/' + scope)
    req.add_header('Accept', 'text/plain')
    req.add_header('Request type', 'GET')
    response = urllib2.urlopen(req)
    for line in response.readlines():
        dpIdentifiers.append(string.replace(line, '\n', ''))
    dpIdentifiers.sort()
    return dpIdentifiers

def listDataPackageScopes(baseURL):
    req = urllib2.Request(baseURL + '/eml')
    req.add_header('Accept', 'text/plain')
    req.add_header('Request type', 'GET')
    response = urllib2.urlopen(req)
    for line in response.readlines():
        scopeList.append(string.replace(line, '\n', ''))
    scopeList.sort()
    return scopeList

def serviceMethods(baseURL):
    req = urllib2.Request(baseURL + '/service-methods')
    req.add_header('Accept', 'text/plain')
    req.add_header('Request type', 'GET')
    response = urllib2.urlopen(req)
    for line in response.readlines():
        serviceList.append(string.replace(line, '\n', ''))
    serviceList.sort()
    return serviceList
        
def seeOptions(List):
    for each in List:
        eachIndex = str(List.index(each))
        print each + ": " + eachIndex
    return
    
def getIdList():
    seeScopes = raw_input('View scopes (y or n)? ')
    if seeScopes == 'y':
        seeOptions(scopeList)
    scopeReq = raw_input('Enter the index number of the scope to view: ')
    scope = scopeList[int(scopeReq)]
    pList = listDataPackageIdentifiers(baseURL, scope)
    print "Number of identifiers in the selected scope: " + str(len(pList))
    save = raw_input('Save identifiers (y or n)?: ')
    if save == 'y':
        for item in pList:
            packageDict[item] = scope
    return
    
def getRevisionList():
    seeIds = raw_input('View identifier/scope pairs? ')
    if seeIds == 'y':
        for k, v in packageDict.iteritems():
            print v + ': ' + k
    getRevs = raw_input('Retrieve revisions for this scope (y or n)?: ')
    if getRevs == 'y':
        for k, v in packageDict.iteritems():
            req = urllib2.Request(baseURL + '/eml/' + v + '/' + k)
            req.add_header('Accept', 'text/plain')
            req.add_header('Request type', 'GET')
            response = urllib2.urlopen(req)
            for line in response.readlines():
                wsStrp = string.replace(line, '\n', '')
                # just build the whole URL here
                revisionDict[k + '-' + wsStrp] = baseURL + '/eml/' + v + '/' + k + '/' + wsStrp
    print 'The scope includes ' + str(len(revisionDict)) + ' revisions.'
    return
    
def validate(bitstream, fname, ckname):
    cFile = open(ckname + '.checksum.txt', 'rb')
    checksum = cFile.read()
    cFile.close()
    validator = hashlib.sha1()
    with open(bitstream, 'rb') as f:
        fBuffer = f.read()
        validator.update(fBuffer)
    hashStr = validator.hexdigest()
    if hashStr != checksum:
        print bitstream + ' checksum validation failed.'
    else:
        print 'Hashed value: ' + str(hashStr)
        print 'Checksum: ' + str(checksum)
    return

def readDataEntity(url, fname, ckname):
    getName = string.replace(url, 'data', 'name')
    nameReq = urllib2.Request(getName)
    nameReq.add_header('Accept', 'text/plain')
    nameReq.add_header('Request type', 'GET')
    nameRes = urllib2.urlopen(nameReq)
    name = nameRes.read()
    req = urllib2.Request(url)
    req.add_header('Accept', 'application/octet-stream')
    req.add_header('Request type', 'GET')
    response = urllib2.urlopen(req)
    result = response.read()
    dFile = open(name, 'wb')
    dFile.write(result)
    dFile.close()
    validate(name, fname, ckname)
    return

def readMetadata(url, fname):
    req = urllib2.Request(url)
    req.add_header('Accept', 'application/xml')
    req.add_header('Request type', 'GET')
    response = urllib2.urlopen(req)
    result = response.read()
    uRes = codecs.decode(result, 'utf-8')
    resultXML = xml.dom.minidom.parseString(uRes.encode("utf-8"))
    with codecs.open(fname + '.xml', 'w', encoding='utf-8') as data:
        resultXML.writexml(data, indent='', newl='')
    return
    
def readDataPackageReport(url, fname):
    req = urllib2.Request(url)
    req.add_header('Accept', 'application/xml')
    req.add_header('Request type', 'GET')
    response = urllib2.urlopen(req)
    result = response.read()
    uRes = codecs.decode(result, 'utf-8')
    resultXML = xml.dom.minidom.parseString(uRes.encode("utf-8"))
    with codecs.open(fname + '.report.xml', 'w', encoding='utf-8') as data:
        resultXML.writexml(data, indent='', newl='')
    return

def getArchive():
    # retrieve an archival package for a single revision
    # include DOI and checksum, and validate checksum
    urlList = []
    eCount = 0
    viewRevisions = raw_input('View a list of revisions (y or n)?: ')
    if viewRevisions == 'y':
        for k, v in revisionDict.iteritems():
            print k + ": " + v
    getRev = raw_input('Enter the revision number of the data to retrieve: ')
    dDir = raw_input('Download to (provide the full path): ')
    os.mkdir(dDir + os.path.sep + getRev)
    os.chdir(dDir + os.path.sep + getRev)
    getURL = revisionDict[getRev]
    fnList = string.split(getURL, '/')
    fname = str(fnList[5]) + '.' + str(fnList[6]) + '.' + str(fnList[7])
    req = urllib2.Request(getURL)
    req.add_header('Accept', 'text/plain')
    req.add_header('Request type', 'GET')
    response = urllib2.urlopen(req)
    for line in response.readlines():
        if string.replace(line, '\n', '') != getURL:
            urlList.append(string.replace(line, '\n', ''))
        else:
            strip = string.replace(line, '\n', '')
            doi = string.replace(strip, 'eml', 'doi/eml')
            dReq = urllib2.Request(doi)
            dReq.add_header('Accept', 'text/plain')
            dReq.add_header('Request type', 'GET')
            dResponse = urllib2.urlopen(dReq)
            dData = dResponse.read()
            dFile = open(fname + '.doi.txt', 'wb')
            dFile.write(dData)
            dFile.close()
            dCite = string.replace(dData, 'doi:', 'http://dx.doi.org/')
            print dCite
    for entity in urlList:
        doi = ''
        checksum = ''
        eCount = eCount + 1
        eTypeBase = string.replace(entity, baseURL + '/', '')
        eTypeSplit = string.split(eTypeBase, '/')
        eType = eTypeSplit[0]
        if eType == 'data':
            checksum = string.replace(entity, 'data', 'data/checksum')
            ckname = fname + '.' + str(eCount)
            cReq = urllib2.Request(checksum)
            cReq.add_header('Accept', 'text/plain')
            cReq.add_header('Request type', 'GET')
            cResponse = urllib2.urlopen(cReq)
            cData = cResponse.read()
            cFile = open(ckname + '.checksum.txt', 'wb')
            cFile.write(cData)
            cFile.close()
            readDataEntity(entity, fname, ckname)
        elif eType == 'metadata':
            readMetadata(entity, fname)
        elif eType == 'report':
            readDataPackageReport(entity, fname)
        # handle arbitrary entities
        else:
            nReq = urllib2.Request(entity)
            nReq.add_header('Request type', 'GET')
            nResponse = urllib2.urlopen(nReq)
            nData = nResponse.read()
            nFile = open(fname + '.' + str(eCount), 'wb')
            nFile.write(nData)
            nFile.close()
    print "Done!"
    #help()
    return

def help():
    print "\nTo view the contents of a list at any time,"
    print "enter 'seeOptions(_list_)' where _list_ is"
    print "the name of the list you want to view."
    
    print "\nTo view available lists, enter 'seeOptions(metaList)."
    print "For a list of commands at any time, enter 'help()'."
    
    print "\nThe current work flow for retrieving PASTA data:"
    print "\n1. Run getIdList() to retrieve package identifiers for a given scope."
    print "\n2. Save the identifiers and run getRevisionList() to generate"
    print "a URL to retrieve the list of available entities for each revision"
    print "of a package."
    print "\n3. Retrieve an archival package by running getArchive()."
    return

def main():
    # get the path separator
    sep = os.path.sep
    
    # get a list of the API methods and available scopes ('collections')
    serviceMethods(baseURL)
    metaList.append('serviceList')
    listDataPackageScopes(baseURL)
    metaList.append('scopeList')
    
    help()
    
if __name__ == '__main__':
    main()
