<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="text">

        <xsl:apply-templates/>

    </xsl:template>


    <xsl:template match="section">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="title">

        <xsl:apply-templates/>

    </xsl:template>

    <!--para tree-->

    <xsl:template match="para">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="itemizedlist">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="listitem">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="para">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="itemizedlist">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="orderedlist">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="emphasis">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="subscript">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="superscript">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="literalLayout">

        <xsl:apply-templates/>

    </xsl:template>

    <!--ulink group-->

    <xsl:template match="ulink">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="citetitle">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="ulink-url">
        <xsl:value-of select="@url"/>
    </xsl:template>

</xsl:stylesheet>
