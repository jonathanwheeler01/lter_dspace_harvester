<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="eml://ecoinformatics.org/qualityReport"
    xmlns:qr="eml://ecoinformatics.org/qualityReport"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="eml://ecoinformatics.org/qualityReport http://svn.lternet.edu/svn/NIS/documents/schemas/quality/qualityReportSchema.xsd"
    exclude-result-prefixes="xs" version="2.0">

    <xsl:output method="html"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:variable name="packageID" select="/qr:qualityReport/qr:packageId"/>

    <xsl:template match="/">
        <xsl:result-document method="html" encoding="UTF8" href="./{$packageID}-report.html" indent="yes">
            <html>
                <head>
                    <title>Data Package Quality Report</title>
                    <style>
                    table{
                        border-collapse:collapse;
                    }
                    
                    table,
                    tr,
                    td,
                    th{
                        border:1px solid black;
                        padding: 10px 10px; 10px; 5px;
                    }
                    
                    ul{
                        list-style-type:none;
                    }</style>
                </head>
                <body>
                    <table>
                        <tr>
                            <th style="text-align: center;" colspan="11"> Data Package Quality
                                Report </th>
                        </tr>
                        <tr>
                            <td colspan="11">
                                <b>PackageID: <xsl:value-of select="/qr:qualityReport/qr:packageId"
                                    /></b>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="11">
                                <b>Report Date/Time: <xsl:value-of
                                        select="/qr:qualityReport/qr:creationDate"/></b>
                            </td>
                        </tr>
                        <xsl:for-each select="/qr:qualityReport/qr:datasetReport">
                            <xsl:call-template name="datasetReport"/>
                        </xsl:for-each>
                        <xsl:for-each select="/qr:qualityReport/qr:entityReport">
                            <xsl:call-template name="entityReport"/>
                        </xsl:for-each>
                    </table>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>

    <xsl:template match="qr:datasetReport" name="datasetReport">
        <tr>
            <th style="text-align: center;" colspan="11"> Dataset Report </th>
        </tr>
        <tr>
            <th>#</th>
            <th>Identifier</th>
            <th>Status</th>
            <th>Quality Check</th>
            <th>Name</th>
            <th>Description</th>
            <th>Expected</th>
            <th>Found</th>
            <th>Explanation</th>
            <th>Suggestion</th>
            <th>Reference</th>
        </tr>
        <xsl:for-each select="./qr:qualityCheck">
            <tr>
                <td>
                    <xsl:number value="position()" format="1"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:identifier"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:status"/>
                </td>
                <td>
                    <ul>
                        <li>
                            <xsl:text>Type: </xsl:text>
                            <xsl:value-of select="./@qualityType"/>
                        </li>
                        <li>
                            <xsl:text>System: </xsl:text>
                            <xsl:value-of select="./@system"/>
                        </li>
                        <li>
                            <xsl:text>On Failure: </xsl:text>
                            <xsl:value-of select="./@statusType"/>
                        </li>
                    </ul>
                </td>
                <td>
                    <xsl:value-of select="./qr:name"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:description"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:expected"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:found"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:explanation"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:suggestion"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:reference"/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="qr:entityReport" name="entityReport">
        <tr>
            <th style="text-align: center;" colspan="11"> Entity Report </th>
        </tr>
        <tr>
            <th style="text-align: left;" colspan="11">
                <xsl:text>Entity Name: </xsl:text>
                <xsl:value-of select="./qr:entityName"/>
            </th>
        </tr>
        <tr>
            <th>#</th>
            <th>Identifier</th>
            <th>Status</th>
            <th>Quality Check</th>
            <th>Name</th>
            <th>Description</th>
            <th>Expected</th>
            <th>Found</th>
            <th>Explanation</th>
            <th>Suggestion</th>
            <th>Reference</th>
        </tr>
        <xsl:for-each select="./qr:qualityCheck">
            <tr>
                <td>
                    <xsl:number value="position()" format="1"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:identifier"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:status"/>
                </td>
                <td>
                    <ul>
                        <li>
                            <xsl:text>Type: </xsl:text>
                            <xsl:value-of select="./@qualityType"/>
                        </li>
                        <li>
                            <xsl:text>System: </xsl:text>
                            <xsl:value-of select="./@system"/>
                        </li>
                        <li>
                            <xsl:text>On Failure: </xsl:text>
                            <xsl:value-of select="./@statusType"/>
                        </li>
                    </ul>
                </td>
                <td>
                    <xsl:value-of select="./qr:name"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:description"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:expected"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:found"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:explanation"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:suggestion"/>
                </td>
                <td>
                    <xsl:value-of select="./qr:reference"/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>


</xsl:stylesheet>
