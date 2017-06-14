<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="spatialRaster">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle attributes -->

    <xsl:template name="spRaster-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="spRaster-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="spRaster-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="attributeList">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="constraint">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="spatialReference">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="georeferenceInfo">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="cornerPoint">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="xCoordinate">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="yCoordinate">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="pointInPixel">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="corner">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="controlPoint">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="column">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="row">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="bilinearFit">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="xIntercept">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="xSlope">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="yIntercept">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="ySlope">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="horizontalAccuracy">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="accuracyReport">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="quantitativeAccuracyReport">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="quantitativeAccuracyValue">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="quantitativeAccuracyMethod">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="verticalAccuracy">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="cellSizeXDirection">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="cellSizeYDirection">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="numberOfBands">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="rasterOrigin">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="rows">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="columns">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="verticals">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="cellGeometry">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="toneGradation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="scaleFactor">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="offset">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="imageDescription">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="illuminationElevationAngle">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="illuminationAzimuthAngle">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="imageOrientationAngle">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="imageCondition">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="imageQualityCode">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="cloudCoverPercentage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="preProcessingTypeCode">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="compressionGenerationQuality">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="triangulationIndicator">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="radiometricDataAvailability">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="cameraCalibrationInformationAvailability">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="filmDistortionInformationAvailability">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="lensDistortionInformationAvailability">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="bandDescription">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="sequenceIdentifier">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="highWavelength">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="lowWaveLength">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="waveLengthUnits">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="peakResponse">

        <xsl:apply-templates/>

    </xsl:template>

</xsl:stylesheet>
