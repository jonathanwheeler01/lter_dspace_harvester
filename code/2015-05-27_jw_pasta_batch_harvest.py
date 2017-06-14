import string
import os
import xml.dom.minidom
import hashlib
import urllib2
import codecs
import fnmatch
import shutil

metaList = []
serviceList = []
scopeList = []
dpIdentifiers = []
revisionDict =  {}
packageDict = {}

baseURL = 'https://pasta.lternet.edu/package'
sep = os.path.sep

def validate(bitstream, fname, chkname):
    cFile = open(chkname + '.checksum.txt', 'rb')
    checksum = cFile.read()
    cFile.close()
    validator = hashlib.sha1()
    with open(bitstream, 'rb') as f:
        fBuffer = f.read()
        validator.update(fBuffer)
    hashStr = validator.hexdigest()
    if hashStr != checksum:
        print bitstream + ' checksum validation failed.'
    #else:
        #print 'Hashed value: ' + str(hashStr)
        #print 'Checksum: ' + str(checksum)
    return

def readDataEntity(url, fname, chkname):
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
    validate(name, fname, chkname)
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
    # retrieve all archival packages for the scope
    # include DOI and checksum, and validate checksum
    dDir = raw_input('Download to (provide the full path): ')
    for k, v in revisionDict.iteritems():
        os.mkdir(dDir + os.path.sep + k)
        os.chdir(dDir + os.path.sep + k)
        urlList = []
        eCount = 0
        try:
            getURL = revisionDict[k]
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
                    #dCite = string.replace(dData, 'doi:', 'http://dx.doi.org/')
                    #print dCite
            for entity in urlList:
                doi = ''
                checksum = ''
                eCount = eCount + 1
                eTypeBase = string.replace(entity, baseURL + '/', '')
                eTypeSplit = string.split(eTypeBase, '/')
                eType = eTypeSplit[0]
                if eType == 'data':
                    chkname = fname + '.' + str(eCount)
                    checksum = string.replace(entity, 'data', 'data/checksum')
                    cReq = urllib2.Request(checksum)
                    cReq.add_header('Accept', 'text/plain')
                    cReq.add_header('Request type', 'GET')
                    cResponse = urllib2.urlopen(cReq)
                    cData = cResponse.read()
                    cFile = open(chkname + '.checksum.txt', 'wb')
                    cFile.write(cData)
                    cFile.close()
                    readDataEntity(entity, fname, chkname)
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
        except Exception, errStr:
            print "Error processing revision " + str(k)
            print str(errStr)
        os.chdir('..')
    return

def getRevisionList():
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

def getIdList():
    seeScopes = raw_input('View scopes (y or n)? ')
    if seeScopes == 'y':
        seeOptions(scopeList)
    scopeReq = raw_input('Enter the index number of the scope to be processed: ')
    scope = scopeList[int(scopeReq)]
    pList = listDataPackageIdentifiers(baseURL, scope)
    print "Number of identifiers in the selected scope: " + str(len(pList))
    for item in pList:
        packageDict[item] = scope
    return

def seeOptions(List):
    for each in List:
        eachIndex = str(List.index(each))
        print each + ": " + eachIndex
    return

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

def helpPASTA():
    print "A process for batch harvest and packaging"
    print "of LTER data from pasta.net."
    print "\nData will be packaged in Simple Archive"
    print "Package (SAP) format for ingest into a"
    print "DSpace repository."

def main():
    
    # get a list of the API methods and available scopes ('collections')
    serviceMethods(baseURL)
    metaList.append('serviceList')
    listDataPackageScopes(baseURL)
    metaList.append('scopeList')
    
    # show intro information
    helpPASTA()
    
    # from a list of available scopes, select one
    # and retrieve the IDs for that scope
    getIdList()
    getRevisionList()
    getArchive()
    
    print "Done!"
    
if __name__ == '__main__':
    main()
