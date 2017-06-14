<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="physical">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="physical-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="physical-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="physical-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle nodes -->

    <xsl:template match="objectName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="size">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="physical-size-unit">
        <xsl:value-of select="@unit"/>
    </xsl:template>

    <xsl:template match="authentication">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="physical-authentication-method">
        <xsl:value-of select="@method"/>
    </xsl:template>

    <xsl:template match="compressionMethod">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="encodingMethod">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="characterEncoding">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="dataFormat">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="textFormat">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="numHeaderLines">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="numFooterLines">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="recordDelimiter">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="physicalLineDelimiter">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="numPhysicalLinesPerRecord">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="maxRecordLength">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="attributeOrientation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="simpleDelimited">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="fieldDelimiter">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="collapseDelimiters">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="quoteCharacter">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="literalCharacter">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="complex">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="textFixed">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="fieldWidth">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="lineNumber">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="fieldStartColumn">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="textDelimited">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="externallyDefinedFormat">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="formatName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="formatVersion">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="citation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="binaryRasterFormat">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="rowColumnOrientation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="multiBand">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="nbands">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="layout">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="nbits">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="byteorder">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="skipbytes">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="bandrowbytes">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="totalrowbytes">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="bandgapbytes">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="distribution">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="physical-distribution-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="physical-distribution-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="physical-distribution-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="online">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="offline">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="inline">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="onlineDescription">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="url">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="physical-online-url-function">
        <xsl:value-of select="@function"/>
    </xsl:template>

    <xsl:template match="connection">

        <xsl:apply-templates/>

    </xsl:template>

</xsl:stylesheet>
