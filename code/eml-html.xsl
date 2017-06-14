<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:output method="html"/>
    <xsl:strip-space elements="*"/>

    <xsl:include href="html/eml-schema-html.xsl"/>

    <xsl:variable name="packageID" select="eml:eml/@packageId"/>

    <xsl:template match="/">
        <xsl:result-document method="html" encoding="UTF8" href="./{$packageID}-metadata.html" indent="yes">
            <html>
                <head>
                    <title>
                        <xsl:call-template name="eml-packageId"/>
                    </title>
                    <style>
                        table{
                            /*border-collapse: collapse;*/
                            /*border:1px solid black;*/
                            border: none;
                        }
                        
                        table,
                        tr,
                        td,
                        th{
                            /*border: 1px solid black;*/
                            border: none;
                            margin:1% 1% 1% 1%;
                            min-width:20%;
                        }
                        
                        tr,
                        th{
                            /*border:none;*/
                            padding:10px 10px 10px 5px;
                        }
                        
                        th{
                            text-align:left;
                        }
                        
                        td{
                            padding:10px 10px 10px 20px;
                        }</style>
                </head>
                <body>
                    <xsl:if test="eml:eml/dataset">
                        <xsl:apply-templates select="eml:eml/dataset"/>
                    </xsl:if>
                    <xsl:if test="eml:eml/citation">
                        <xsl:apply-templates select="eml:eml/citation"/>
                    </xsl:if>
                    <xsl:if test="eml:eml/software">
                        <xsl:apply-templates select="eml:eml/software"/>
                    </xsl:if>
                    <xsl:if test="eml:eml/protocol">
                        <xsl:apply-templates select="eml:eml/protocol"/>
                    </xsl:if>
                    <xsl:if test="eml:eml/additionalMetadata">
                        <xsl:apply-templates select="eml:eml/additionalMetadata"/>
                    </xsl:if>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>

</xsl:stylesheet>
