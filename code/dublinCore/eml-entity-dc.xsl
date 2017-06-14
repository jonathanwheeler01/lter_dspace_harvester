<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="entity">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="otherEntity">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="entity-otherEntity-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="entity-otherEntity-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="entity-otherEntity-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle entityGroup -->

    <xsl:template match="alternateIdentifier">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="entity-alternateId-system"> </xsl:template>

    <xsl:template match="entityName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="entityDescription">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="physical">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="coverage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="methods">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="additionalInfo">

        <xsl:apply-templates/>

    </xsl:template>

</xsl:stylesheet>
