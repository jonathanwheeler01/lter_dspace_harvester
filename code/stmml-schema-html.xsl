<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:output method="html"/>
    <xsl:strip-space elements="*"/>

    <!-- elements -->
    
    <!-- stmml allows anyXML, but maybe best to not copy? -->

    <xsl:template match="stmml">
        <div class="stmml">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="array">
        <div class="array">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="scalar">
        <div class="scalar">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="matrix">
        <div class="matrix">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="table">
        <div class="table">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <!-- the following allow anyXML, so copy -->

    <xsl:template match="list">
        <div class="list">
            <xsl:copy-of select="."/>
        </div>
    </xsl:template>

    <xsl:template match="link">
        <div class="link">
            <xsl:copy-of select="."/>
        </div>
    </xsl:template>

    <xsl:template match="action">
        <div class="action">
            <xsl:copy-of select="."/>
        </div>
    </xsl:template>
    
    <xsl:template match="actionList">
        <div class="actionList">
            <xsl:copy-of select="."/>
        </div>
    </xsl:template>
    
    <xsl:template match="object">
        <div class="object">
            <xsl:copy-of select="."/>
        </div>
    </xsl:template>
    
    <xsl:template match="observation">
        <div class="observation">
            <xsl:copy-of select="."/>
        </div>
    </xsl:template>

</xsl:stylesheet>
