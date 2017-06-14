<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    
    <xsl:strip-space elements="*"/>

    <!-- Include section and resource templates -->

    <xsl:include href="eml-access-prov.xsl"/>
    
    <xsl:include href="eml-attribute-prov.xsl"/>
    
    <xsl:include href="eml-constraint-prov.xsl"/>
    
    <xsl:include href="eml-coverage-prov.xsl"/>
    
    <xsl:include href="eml-dataset-prov.xsl"/>
    
    <xsl:include href="eml-datatable-prov.xsl"/>
    
    <xsl:include href="eml-documentation-prov.xsl"/>
    
    <xsl:include href="eml-entity-prov.xsl"/>
    
    <xsl:include href="eml-literature-prov.xsl"/>
    
    <xsl:include href="eml-methods-prov.xsl"/>
    
    <xsl:include href="eml-party-prov.xsl"/>
    
    <xsl:include href="eml-physical-prov.xsl"/>
    
    <xsl:include href="eml-project-prov.xsl"/>
    
    <xsl:include href="eml-protocol-prov.xsl"/>
    
    <xsl:include href="eml-resource-prov.xsl"/>
    
    <xsl:include href="eml-software-prov.xsl"/>
    
    <xsl:include href="eml-spatialraster-prov.xsl"/>
    
    <xsl:include href="eml-spatialreference-prov.xsl"/>
    
    <xsl:include href="eml-spatialvector-prov.xsl"/>
    
    <xsl:include href="eml-storedprocedure-prov.xsl"/>
    
    <xsl:include href="eml-text-prov.xsl"/>
    
    <xsl:include href="eml-view-prov.xsl"/>
    
    <!-- 
        Might need stmml later, but lots of potential conflicts with EML
        templates, so skip for now.
    -->
    <!--<xsl:include href="stmml-schema-prov.xsl"/>-->

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
