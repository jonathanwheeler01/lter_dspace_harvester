<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="methods">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle nodes -->

    <xsl:template match="methodStep">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="dataSource">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="description">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="citation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="protocol">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="instrumentation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="software">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="subStep">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="sampling">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="studyExtent">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="coverage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="samplingDescription">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="spatialSamplingUnits">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="referenceEntityId">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="qualityControl">

        <xsl:apply-templates/>

    </xsl:template>

</xsl:stylesheet>
