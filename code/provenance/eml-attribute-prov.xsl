<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="attribute">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="attribute-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="attribute-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="attribute-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle attributeList node -->

    <xsl:template match="attributeList">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="attributeList-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <!-- handle attribute child nodes -->

    <xsl:template match="attributeName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="attributeLabel">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="attributeDefinition">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="storageType">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="attribute-storagetype-typesys">
        <xsl:value-of select="@typeSystem"/>
    </xsl:template>

    <xsl:template match="measurementScale">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="nominal">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="nonNumericDomain">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="attribute-mScale-nominal-nonNumeric-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template match="enumeratedDomain">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="attribute-mScale-nominal-nonNumeric-enumerated-enforced">
        <xsl:value-of select="@enforced"/>
    </xsl:template>

    <xsl:template match="codeDefinition">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="attribute-mScale-nominal-nonNumeric-enumerated-codeDef-order">
        <xsl:value-of select="@order"/>
    </xsl:template>

    <xsl:template match="code">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="definition">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="source">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="externalCodeSet">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="codesetName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="source">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="codesetURL">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="entityCodeList">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="entityReference">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="valueAttributeReference">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="definitionAttributeReference">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="orderAttributeReference">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="textDomain">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="pattern">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="ordinal">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="interval">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="unit">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="standardUnit">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="customUnit">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="precision">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="numericDomain">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="attribute-mScale-interval-numeric-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template match="numberType">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="ratio">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="dateTime">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="formatString">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="dateTimePrecision">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="dateTimeDomain">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="attribute-mScale-datetime-dtdomain-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template match="missingValueCode">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="codeExplanation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="accuracy">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="accuracyAttributeReport">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="quantitativeAttributeAccuracyAssessment">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="attributeAccuracyValue">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="accuracyAttributeExplanation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="bounds">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="minimum">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="maximum">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="attribute-bounds-min-max-exclusive">
        <xsl:value-of select="@exclusive"/>
    </xsl:template>

</xsl:stylesheet>
