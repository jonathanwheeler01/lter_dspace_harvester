<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:output method="xml"/>
    <xsl:strip-space elements="*"/>

    <!-- Include section and resource templates -->

    <xsl:include href="eml-access-dc.xsl"/>

    <xsl:include href="eml-attribute-dc.xsl"/>

    <xsl:include href="eml-constraint-dc.xsl"/>

    <xsl:include href="eml-coverage-dc.xsl"/>

    <xsl:include href="eml-dataset-dc.xsl"/>

    <xsl:include href="eml-datatable-dc.xsl"/>

    <xsl:include href="eml-documentation-dc.xsl"/>

    <xsl:include href="eml-entity-dc.xsl"/>

    <xsl:include href="eml-literature-dc.xsl"/>

    <xsl:include href="eml-methods-dc.xsl"/>

    <xsl:include href="eml-party-dc.xsl"/>

    <xsl:include href="eml-physical-dc.xsl"/>

    <xsl:include href="eml-project-dc.xsl"/>

    <xsl:include href="eml-protocol-dc.xsl"/>

    <xsl:include href="eml-resource-dc.xsl"/>

    <xsl:include href="eml-software-dc.xsl"/>

    <xsl:include href="eml-spatialraster-dc.xsl"/>

    <xsl:include href="eml-spatialreference-dc.xsl"/>

    <xsl:include href="eml-spatialvector-dc.xsl"/>

    <xsl:include href="eml-storedprocedure-dc.xsl"/>

    <xsl:include href="eml-text-dc.xsl"/>

    <xsl:include href="eml-view-dc.xsl"/>

    <xsl:template match="/eml:eml">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle root attributes -->

    <xsl:template name="eml-packageId">
        <xsl:value-of select="/eml:eml/@packageId"/>
    </xsl:template>

    <xsl:template name="eml-system">
        <xsl:value-of select="/eml:eml/@system"/>
    </xsl:template>

    <xsl:template name="eml-scope">
        <xsl:value-of select="/eml:eml/@scope"/>
    </xsl:template>

    <xsl:template match="additionaMetadata">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="additionalMeta-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template match="describes">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- metadata allows anyXML, so copy -->

    <xsl:template match="metadata">

        <xsl:copy-of select="."/>

    </xsl:template>

</xsl:stylesheet>