<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:output method="xml"/>
    <xsl:strip-space elements="*"/>

    <xsl:variable name="packageID" select="eml:eml/@packageId"/>

    <xsl:template match="/">
        <xsl:result-document method="xml" encoding="UTF8" href="./metadata_dwc.xml" indent="yes">
            <dublin_core schema="dwc">
                <xsl:if test="eml:eml/dataset">
                    <xsl:if test="eml:eml/dataset/coverage/geographicCoverage/boundingCoordinates">
                        <xsl:element name="dcvalue">
                            <xsl:attribute name="element">
                                <xsl:text>decimalLatitude</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="qualifier">
                                <xsl:text>none</xsl:text>
                            </xsl:attribute>
                            <xsl:apply-templates
                                select="eml:eml/dataset/coverage/geographicCoverage[1]/boundingCoordinates/northBoundingCoordinate"
                            />
                        </xsl:element>
                        <xsl:element name="dcvalue">
                            <xsl:attribute name="element">
                                <xsl:text>decimalLongitude</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="qualifier">
                                <xsl:text>none</xsl:text>
                            </xsl:attribute>
                            <xsl:apply-templates
                                select="eml:eml/dataset/coverage/geographicCoverage[1]/boundingCoordinates/westBoundingCoordinate"
                            />
                        </xsl:element>
                    </xsl:if>
                </xsl:if>
            </dublin_core>
        </xsl:result-document>
    </xsl:template>

</xsl:stylesheet>
