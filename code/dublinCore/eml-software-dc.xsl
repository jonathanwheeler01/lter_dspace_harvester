<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="software">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle attributes -->

    <xsl:template name="software-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="software-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="software-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="implementation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="distribution">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="size">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="language">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="LanguageValue">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="LanguageCodeStandard">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="operatingSystem">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="machineProcessor">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="virtualMachine">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="diskUsage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="runtimeMemoryUsage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="programmingLanguage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="checksum">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="dependency">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="action">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="licenseURL">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="license">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="version">

        <xsl:apply-templates/>

    </xsl:template>

</xsl:stylesheet>
