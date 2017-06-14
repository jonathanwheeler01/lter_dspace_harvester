<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="spatialReference">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="spatialReference-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="spatialReference-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="spatialReference-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="projectionList">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="horizCoordSysName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="horizCoordSysDef">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="horizCoordSysDef-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="geogCoordSys">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="geogCoordSys-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template match="datum">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="datum-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template match="spheroid">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="spheroid-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="spheroid-semiAxisMajor">
        <xsl:value-of select="@semiAxisMajor"/>
    </xsl:template>

    <xsl:template name="spheroid-denomFlatRatio">
        <xsl:value-of select="@denomFlatRatio"/>
    </xsl:template>

    <xsl:template match="primeMeridian">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="primeMeridian-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template name="primeMeridian-longitude">
        <xsl:value-of select="@longitude"/>
    </xsl:template>

    <xsl:template match="unit">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="unit-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template match="projectCoordSys">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="projection">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="projection-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template match="parameter">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="parameter-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template name="parameter-description">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template name="parameter-value">
        <xsl:value-of select="@value"/>
    </xsl:template>

    <xsl:template match="vertCoordSys">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="altitudeSysDef">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="altitudeDatumName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="altitudeResolution">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="altitudeDistanceUnits">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="altitudeEncodingMethod">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="depthSysDef">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="depthDatumName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="depthResolution">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="depthDistanceUnits">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="depthEncodingMethod">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="references">

        <xsl:apply-templates/>

    </xsl:template>

</xsl:stylesheet>
