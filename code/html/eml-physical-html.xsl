<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>

    <xsl:template match="physical">
        <!--<tr>
            <td> Physical: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <xsl:apply-templates/>
    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="physical-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="physical-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="physical-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle nodes -->

    <xsl:template match="objectName">
        <tr>
            <td> Object Name: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="size">
        <tr>
            <td> Size: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template name="physical-size-unit">
        <xsl:value-of select="@unit"/>
    </xsl:template>

    <xsl:template match="authentication">
        <tr>
            <td> Authentication: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template name="physical-authentication-method">
        <xsl:value-of select="@method"/>
    </xsl:template>

    <xsl:template match="compressionMethod">
        <tr>
            <td> Compression Method: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="encodingMethod">
        <tr>
            <td> Encoding Method: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="characterEncoding">
        <tr>
            <td> Character Encoding: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="dataFormat">
        <!--<tr>
            <td> Data Format: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Data Format: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="textFormat">
        <!--<tr>
            <td> Text Format: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Text Format: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="numHeaderLines">
        <tr>
            <td> Number of Header Lines: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="numFooterLines">
        <tr>
            <td> Number of Footer Lines: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="recordDelimiter">
        <tr>
            <td> Record Delimiter: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="physicalLineDelimiter">
        <tr>
            <td> Physical Line Delimiter: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="numPhysicalLinesPerRecord">
        <tr>
            <td> Number of Lines Per Record: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="maxRecordLength">
        <tr>
            <td> Maximum Record Length: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="attributeOrientation">
        <tr>
            <td> Attribute Orientation: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="simpleDelimited">
        <!--<tr>
            <td> Simple Delimited: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Simple Delimited: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="fieldDelimiter">
        <tr>
            <td> Field Delimiter: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="collapseDelimiters">
        <tr>
            <td> Collapse Delimiters: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="quoteCharacter">
        <tr>
            <td> Quote Character: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="literalCharacter">
        <tr>
            <td> Literal Character: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="complex">
        <!--<tr>
            <td> Complex: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Complex: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="textFixed">
        <!--<tr>
            <td> Text Fixed: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Text Fixed: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="fieldWidth">
        <tr>
            <td> Field Width: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="lineNumber">
        <tr>
            <td> Line Number: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="fieldStartColumn">
        <tr>
            <td> Field Start Column: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="textDelimited">
        <!--<tr>
            <td> Text Delimited: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Text Delimited: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="externallyDefinedFormat">
        <!--<tr>
            <td> Externally Defined Format: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Externally Defined Format: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="formatName">
        <tr>
            <td> Format Name: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="formatVersion">
        <tr>
            <td> Format Version: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="citation">
        <!--<tr>
            <td> Citation: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Format Citation: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="binaryRasterFormat">
        <!--<tr>
            <td> Binary Raster Format: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Binary Raster Format: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="rowColumnOrientation">
        <tr>
            <td> Row Column Orientation: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="multiBand">
        <!--<tr>
            <td> Multiband: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Multiband: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="nbands">
        <tr>
            <td> Number of Bands: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="layout">
        <tr>
            <td> Layout: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="nbits">
        <tr>
            <td> Number of Bits: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="byteorder">
        <tr>
            <td> Byte Order: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="skipbytes">
        <tr>
            <td> Skip Bytes: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="bandrowbytes">
        <tr>
            <td> Band Row Bytes: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="totalrowbytes">
        <tr>
            <td> Totel Row Bytes: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="bandgapbytes">
        <tr>
            <td> Band Gap Bytes: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="distribution">
        <!-- <tr>
            <td> Distribution: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Distribution: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template name="physical-distribution-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="physical-distribution-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="physical-distribution-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="online">
        <!--<tr>
            <td> Online: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Online: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="offline">
        <!--<tr>
            <td> Offline: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Offline: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="inline">
        <!--<tr>
            <td> Inline: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Inline: </th>
                    </tr>

                    <xsl:copy-of select="."/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="access">
        <!--<tr>
            <td> Access: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Access: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="onlineDescription">
        <tr>
            <td> Online Description: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="url">
        <tr>
            <td> URL: </td>

            <td>
                <xsl:element name="a">
                    <xsl:attribute name="href">
                        <xsl:apply-templates/>
                    </xsl:attribute>
                    <xsl:apply-templates/>
                </xsl:element>
            </td>
        </tr>
    </xsl:template>

    <xsl:template name="physical-online-url-function">
        <xsl:value-of select="@function"/>
    </xsl:template>

    <xsl:template match="connection">
        <!--<tr>
            <td> Connection: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Connection Info: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
