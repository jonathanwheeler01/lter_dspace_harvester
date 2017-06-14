<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="documentation">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="moduleDocs">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="moduleName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="moduleDescription">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="recommendedUsage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="standAlone">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="tooltip">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="summary">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="description">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="example">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="lineage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="module">

        <xsl:apply-templates/>

    </xsl:template>

</xsl:stylesheet>
