<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="project">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="project-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="project-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="project-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="researchProject">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="researchProject-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="researchProject-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="researchProject-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="title">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="personnel">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="role">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="abstract">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="funding">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="studyAreaDescription">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="descriptor">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="project-studyareadescription-descriptor-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template name="project-studyareadescription-descriptor-citableclassificationsystem">
        <xsl:value-of select="@citableClassificationSystem"/>
    </xsl:template>

    <xsl:template match="descriptorValue">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="project-studyareadescription-descriptor-descriptorValue-nameorId">
        <xsl:value-of select="@name_or_id"/>
    </xsl:template>

    <xsl:template match="citation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="coverage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="designDescription">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="description">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="relatedProject">

        <xsl:apply-templates/>

    </xsl:template>

</xsl:stylesheet>
