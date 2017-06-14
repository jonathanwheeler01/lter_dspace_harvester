<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="coverage">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="coverage-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="coverage-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="coverage-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="geographicCoverage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="coverage-geographic-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="coverage-geographic-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="coverage-geographic-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="temporalCoverage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="coverage-temporal-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="coverage-temporal-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="coverage-temporal-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="taxonomicCoverage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="coverage-taxonomic-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="coverage-taxonomic-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="coverage-taxonomic-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="rangeOfDates">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="beginDate">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="endDate">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="singelDateTime">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="calendarDate">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="time">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="alternativeTimeScale">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="timeScaleName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="timeScaleAgeEstimate">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="timeScaleAgeUncertainty">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="timeScaleAgeExplanation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="timeScaleCitation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="geographicDescription">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="boundingCoordinates">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="westBoundingCoordinate">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="eastBoundingCoordinate">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="southBoundingCoordinate">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="northBoundingCoordinate">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="boundingAltitudes">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="altitudeMinimum">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="altitudeMaximum">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="altitudeUnits">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="datasetGPolygon">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="datasetGPolygonOuterGRing">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="datasetGPolygonExclusionGRing">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="gRingPoint">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="gRingLatitude">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="gRingLongitude">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="gRing">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="taxonomicSystem">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="classificationSystem">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="classificationSystemCitation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="classificationSystemModifications">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="identificationReference">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="identifierName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="taxonomicProcedures">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="taxonomicCompleteness">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="vouchers">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="specimen">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="repository">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="originator">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="generalTaxonomicCoverage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="taxonomicClassification">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="taxonRankName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="taxonRankValue">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="commonName">

        <xsl:apply-templates/>

    </xsl:template>

</xsl:stylesheet>
