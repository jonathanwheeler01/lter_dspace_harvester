<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="resource">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="alternateIdentifier">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="alternateId-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template match="shortName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="title">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="creator">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="metadataProvider">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="associatedParty">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="pubDate">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="language">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="series">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="abstract">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="keywordSet">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="keyword">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="keywordSet-keywordType">
        <xsl:value-of select="@keywordType"/>
    </xsl:template>

    <xsl:template match="keywordThesaurus">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="additionaInfo">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="intellectualRights">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="coverage">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="distribution">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="distribution-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="distribution-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="distribution-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="online">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="onlineDescription">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="url">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="distribution-online-url-function">
        <xsl:value-of select="@function"/>
    </xsl:template>

    <xsl:template match="connection">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="distribution-online-connection-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="distribution-online-connection-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="distribution-online-connection-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="parameter">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="name">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="value">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="connectionDefinition">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="distribution-online-connectionDef-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="distribution-online-connectionDef-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="distribution-online-connectionDef-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="schemeName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="distribution-online-connectionDef-schemeName-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template match="description">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="parameterDefinition">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="definition">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="defaultValue">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="offline">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="mediumName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="mediumDensity">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="mediumDensityUnits">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="mediumVolume">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="mediumFormat">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="mediumNote">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- inline allows for any XML, so copy instead of apply templates -->

    <xsl:template match="inline">

        <xsl:copy/>

    </xsl:template>

    <xsl:template match="references">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="references-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

</xsl:stylesheet>
