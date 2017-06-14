<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:output method="xml"/>
    <xsl:strip-space elements="*"/>

    <xsl:include href="provenance/eml-schema-prov.xsl"/>

    <xsl:variable name="packageID" select="eml:eml/@packageId"/>
    
    <xsl:variable name="fileOut" select="concat('./', $packageID, '-provenance.xml')"/>

    <xsl:template name="id-to-url">
        <xsl:value-of select="replace($packageID, '\.', '/')"/>
    </xsl:template>

    <xsl:template match="/">
        <xsl:result-document method="xml" encoding="UTF8" href="{$fileOut}" indent="yes">
            <methods>
                <methodStep>
                    <description>
                        <para>This method step describes provenance-based metadata as specified in
                            the LTER EML Best Practices.</para>
                        <para>This provenance metadata does not contain entity specific
                            information.</para>
                    </description>
                    <dataSource>
                        <title>
                            <xsl:apply-templates select="eml:eml/dataset/title"/>
                        </title>
                        <xsl:for-each select="eml:eml/dataset/creator">
                            <xsl:copy-of select="."/>
                        </xsl:for-each>
                        <distribution>
                            <online>
                                <onlineDescription>This online link references an EML document that
                                    describes data used in the creation of this derivative data
                                    package.</onlineDescription>
                                <url function="information"
                                        >https://pasta.lternet.edu/package/metadata/eml/<xsl:call-template
                                        name="id-to-url"/></url>
                            </online>
                        </distribution>
                        <xsl:for-each select="eml:eml/dataset/contact">
                            <xsl:copy-of select="."/>
                        </xsl:for-each>
                    </dataSource>
                </methodStep>
            </methods>
        </xsl:result-document>
    </xsl:template>

</xsl:stylesheet>
