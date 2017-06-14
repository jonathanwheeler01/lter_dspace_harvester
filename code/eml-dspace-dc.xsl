<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:output method="xml"/>
    <xsl:strip-space elements="*"/>

    <xsl:include href="dublinCore/eml-schema-dc.xsl"/>

    <xsl:variable name="packageID" select="eml:eml/@packageId"/>
   
    <xsl:template match="/">
        <xsl:result-document method="xml" encoding="UTF8" href="./dublin_core.xml" indent="yes">
            <dublin_core>
                <xsl:element name="dcvalue">
                    <xsl:attribute name="element">
                        <xsl:text>identifier</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="qualifier">
                        <xsl:text>other</xsl:text>
                    </xsl:attribute>
                    <xsl:value-of select="$packageID"/>
                </xsl:element>
                <xsl:element name="dcvalue">
                    <xsl:attribute name="element">
                        <xsl:text>type</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="qualifier">
                        <xsl:text>none</xsl:text>
                    </xsl:attribute>
                    <xsl:text>Dataset</xsl:text>
                </xsl:element>
                <xsl:if test="eml:eml/dataset">
                    <xsl:apply-templates select="eml:eml/dataset"/>
                </xsl:if>
                <!--<xsl:if test="eml:eml/citation">
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
            </xsl:if>-->
            </dublin_core>
        </xsl:result-document>
    </xsl:template>

    <!-- Basic template -->

    <!--<xsl:template match=".">
        <xsl:if test=".">
            <xsl:element name="dcvalue">
                <xsl:attribute name="element">
                    <xsl:text><!-\- specify element -\-></xsl:text>
                </xsl:attribute>
                <xsl:attribute name="qualifier">
                    <xsl:text><!-\- specify qualifier or 'none' -\-></xsl:text>
                </xsl:attribute>
                <xsl:apply-templates select="."/>
            </xsl:element>
        </xsl:if>
    </xsl:template>-->

</xsl:stylesheet>
