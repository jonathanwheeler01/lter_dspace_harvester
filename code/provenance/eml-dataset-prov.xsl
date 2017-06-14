<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="dataset">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="dataset-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="dataset-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="dataset-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="purpose">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="citetitle">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="maintenance">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="description">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="maintenanceUpdatedFrequency">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="changeHistory">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="changeScope">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="oldValue">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="changeDate">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="comment">

        <xsl:apply-templates/>

    </xsl:template>

</xsl:stylesheet>
