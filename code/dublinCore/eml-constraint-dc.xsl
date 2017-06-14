<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="constraint">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="constraint-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="constraint-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="constraint-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="primaryKey">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="uniqueKey">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="key">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="attributeReference">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="checkConstraint">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="constraint-checkConstraint-language">
        <xsl:value-of select="@language"/>
    </xsl:template>

    <xsl:template match="checkCondition">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="foreignKey">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="jointCondition">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="referencedKey">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="notNullConstraint">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="entityReference">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="relationshipType">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="cardinality">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="parentOccurences">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="childOccurences">

        <xsl:apply-templates/>

    </xsl:template>

</xsl:stylesheet>
