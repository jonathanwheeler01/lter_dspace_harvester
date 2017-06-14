<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="citation">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="citation-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="citation-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="citation-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="contact">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="article">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="journal">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="volume">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="issue">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="pageRange">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="publisher">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="publicationPlace">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="ISSN">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="book">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="edition">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="numberOfVolumes">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="totalPages">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="totalFigures">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="totalTables">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="ISBN">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="chapter">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="chapterNumber">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="editor">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="bookTitle">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="editedBook">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="manuscript">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="institution">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="report">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="report">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="reportNumber">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="thesis">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="degree">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="conferenceProceedings">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="conferenceName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="conferenceDate">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="conferenceLocation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="personalCommunication">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="communicationType">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="recipient">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="map">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="scale">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="generic">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="referenceType">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="originalPublication">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="reprintEdition">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="reviewedItem">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="audioVisual">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="performer">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="presentation">

        <xsl:apply-templates/>

    </xsl:template>

</xsl:stylesheet>
