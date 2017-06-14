import os
from os.path import join, getsize
import fnmatch
import string
import shutil
# import hashlib

def makeSAP(pDir, saxPath, dspaceOut, metaHTML, provXML, qrHTML, dwcOut):
    sep = os.path.sep
    doiStr = ''
    nameStr = ''
    # chksm = ''
    for f in os.listdir('.'):
        if fnmatch.fnmatch(f, '*.doi.txt'):
            doiStr = open(f, 'rb').read()
            nameStr = string.replace(f, '.doi.txt', '')
            
    # remove info files and archive remaining
    for f in os.listdir('.'):
        if fnmatch.fnmatch(f, '*.doi.txt'):
            os.remove(f)
        elif fnmatch.fnmatch(f, '*.checksum.txt'):
            # chksm = open(f, 'rb').read()
            os.remove(f)
    
    # this is a sloppy workaround to prevent recursive archiving
    os.chdir('..')
    shutil.make_archive(nameStr, 'zip', pDir)
    shutil.move(nameStr + '.zip', pDir)
    os.chdir(pDir)
    
    # run XSL transformations    
    for f in os.listdir('.'):
        if fnmatch.fnmatch(f, '*.xml'):
            if fnmatch.fnmatch(f, '*.report.xml'):
                os.system('java -jar "' + saxPath + sep + 'saxon9he.jar" -t -s:' + f + ' -xsl:' + qrHTML)
            else:
                os.system('java -jar "' + saxPath + sep + 'saxon9he.jar" -t -s:' + f + ' -xsl:' + dspaceOut + ' doi=' + doiStr)
                os.system('java -jar "' + saxPath + sep + 'saxon9he.jar" -t -s:' + f + ' -xsl:' + metaHTML)
                os.system('java -jar "' + saxPath + sep + 'saxon9he.jar" -t -s:' + f + ' -xsl:' + provXML)
                os.system('java -jar "' + saxPath + sep + 'saxon9he.jar" -t -s:' + f + ' -xsl:' + dwcOut)
                
    # write contents file
    contents = open('contents', 'w')
    contents.close()
    for f in os.listdir('.'):
        if fnmatch.fnmatch(f, '*.xml'):
            if fnmatch.fnmatch(f, '*-provenance.xml'):
                c1 = open('contents', 'a')
                c1.write(f + '\tbundle: ORIGINAL' + '\tdescription: Show provenance metadata: ' + f + '\n')
                c1.close()
        else:
            if fnmatch.fnmatch(f, 'contents'):
                print "not including contents file"
            else:
                if fnmatch.fnmatch(f, '*.zip'):
                    c2 = open('contents', 'a')
                    c2.write(f + '\tbundle: ORIGINAL' + '\tdescription: Download all files as zip archive: ' + f + '\n')
                    c2.close()
                elif fnmatch.fnmatch(f, '*-metadata.html'):
                    c2 = open('contents', 'a')
                    c2.write(f + '\tbundle: ORIGINAL' + '\tdescription: Show full metadata: ' + f + '\n')
                    c2.close()
                #elif fnmatch.fnmatch(f, '*-provenance.xml'):
                   # c2 = open('contents', 'a')
                   # c2.write(f + '\tbundle: ORIGINAL' + '\tdescription: Show provenance metadata: ' + f + '\n')
                   # c2.close()
                elif fnmatch.fnmatch(f, '*-report.html'):
                    c2 = open('contents', 'a')
                    c2.write(f + '\tbundle: ORIGINAL' + '\tdescription: Show original LTER Network Data Portal ingest report: ' + f + '\n')
                    c2.close()
                else:
                    c2 = open('contents', 'a')
                    c2.write(f + '\tbundle: ORIGINAL' + '\tdescription: Download data' + f + '\n')
                    c2.close()
    return

def main():
    # get the path separator
    sep = os.path.sep
    
    # get the path to the Saxon jar file
    saxPath = raw_input('Enter the path to the SaxonHE java executable: ')
    
    # get the path to the XSLT files
    xsltPath = raw_input('Enter the path to the XSLT files: ')
    dspaceOut = xsltPath + sep + 'eml-dspace-dc.xsl'
    metaHTML = xsltPath + sep + 'eml-html.xsl'
    provXML = xsltPath + sep + 'eml-provenance-meta.xsl'
    qrHTML = xsltPath + sep + 'quality-report-html.xsl'
    dwcOut = xsltPath + sep + 'eml-dspace-dwc.xsl'
    
    # get the path to the downloaded content and chdir to that directory
    # recurse into subdirectories and process each one as an item
    contentPath = raw_input('Enter the path to the downloaded content: ')
    for root, dirs, files in os.walk(contentPath):
        for each in dirs:
            pDir = os.path.join(root, each)
            os.chdir(pDir)
            makeSAP(pDir, saxPath, dspaceOut, metaHTML, provXML, qrHTML, dwcOut)
            os.chdir(contentPath)
    
if __name__ == '__main__':
    main()
