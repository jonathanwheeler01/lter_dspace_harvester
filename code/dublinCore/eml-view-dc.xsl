<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="view">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="view-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="view-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="view-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!--not sure about this one: group is listed as "ent:EntityGroup" but oxygen doesn't like it-->
    <!--<xsl:template match="EntityGroup">
        <div class="EntityGroup">
            <xsl:apply-templates/>
        
    </xsl:template>-->

    <xsl:template match="attributeList">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="constraint">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="queryStatement">

        <xsl:apply-templates/>

    </xsl:template>

</xsl:stylesheet>
