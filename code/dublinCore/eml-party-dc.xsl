<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    

    <xsl:template match="party">

        <xsl:apply-templates/>

    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="party-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="party-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="party-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="individualName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="salutation">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="givenName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="surName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="organizationName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="positionName">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="address">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="party-address-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="party-address-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="party-address-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="deliveryPoint">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="city">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="administrativeArea">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="postalCode">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="country">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="phone">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="party-phone-type">
        <xsl:value-of select="/party/phone/@phoneType"/>
    </xsl:template>

    <xsl:template match="electronicMailAddress">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="onlineUrl">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template match="userId">

        <xsl:apply-templates/>

    </xsl:template>

    <xsl:template name="party-userid-directory">
        <xsl:value-of select="@directory"/>
    </xsl:template>

</xsl:stylesheet>
