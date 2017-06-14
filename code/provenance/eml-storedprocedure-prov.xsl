<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="storedProcedure">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="storedProcedure-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="storedProcedure-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="storedProcedure-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="attributeList">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="constraint">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="parameter">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="references">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="parameter">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="name">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="domainDescription">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="required">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="repeats">

        <xsl:apply-templates/>

    </xsl:template>


</xsl:stylesheet>
