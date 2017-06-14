<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:output method="html"/>
    <xsl:strip-space elements="*"/>
    
    <!-- Include section and resource templates -->

    <xsl:include href="eml-access-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-attribute-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-constraint-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-coverage-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-dataset-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-datatable-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-documentation-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-entity-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-literature-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-methods-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-party-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-physical-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-project-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-protocol-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-resource-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-software-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-spatialraster-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-spatialreference-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-spatialvector-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-storedprocedure-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-text-html.xsl"/><!-- schema to html done -->
    <xsl:include href="eml-view-html.xsl"/><!-- schema to html done -->
    <!-- 
        Might need stmml later, but lots of potential conflicts with EML
        templates, so skip for now.
    -->
    <!--<xsl:include href="stmml-schema-html.xsl"/>-->

    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:call-template name="eml-packageId"/>
                </title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="/eml:eml">
        <div id="eml">
            <xsl:apply-templates/>
        </div>
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
        <div id="additionalMetadata">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template name="additionalMeta-id">
        <xsl:value-of select="@id"/>
    </xsl:template>
    
    <xsl:template match="describes">
        <div id="describes">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <!-- metadata allows anyXML, so copy -->
    
    <xsl:template match="metadata">
        <div id="metadata">
            <xsl:copy-of select="."/>
        </div>
    </xsl:template>

</xsl:stylesheet>
