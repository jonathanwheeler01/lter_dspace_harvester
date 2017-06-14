<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>

    <xsl:template match="text">
        <!--<tr>
            <td> Text: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->

        <xsl:apply-templates/>

    </xsl:template>


    <xsl:template match="section">
        <!--<tr>
            <td> Section: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <!--<xsl:choose>
            <xsl:when test="./title">
                <tr>
                    <td>
                        <table>
                            <thead>
                                <tr>
                                    <td>
                                        <xsl:value-of select="./title"/>
                                    </td>
                                    <td>
                                        <xsl:apply-templates/>
                                    </td>
                                </tr>
                            </thead>
                        </table>
                    </td>
                </tr>
            </xsl:when>
            <xsl:otherwise>
                <tr>
                    <xsl:apply-templates/>
                </tr>
            </xsl:otherwise>
        </xsl:choose>-->
        <tr>
            <td>
                <table>
                    <!--<tr>
                        <th>Section: </th>
                    </tr>-->
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <!--<xsl:template match="title">
        <tr>
            <td> Title: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>-->

    <!--para tree-->

    <xsl:template match="para">
        <!--<tr>
            <td> Paragraph: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <!--<td> Paragraph: </td>-->
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="itemizedlist">

        <ol>
            <xsl:apply-templates/>
        </ol>

    </xsl:template>

    <xsl:template match="listitem">
        <li>
            <xsl:apply-templates/>
        </li>
    </xsl:template>

    <xsl:template match="orderedlist">
        <ol>
            <xsl:apply-templates/>
        </ol>
    </xsl:template>

    <xsl:template match="emphasis">
        <em>
            <xsl:apply-templates/>
        </em>
    </xsl:template>

    <xsl:template match="subscript">
        <sub>
            <xsl:apply-templates/>
        </sub>
    </xsl:template>

    <xsl:template match="superscript">
        <sup>
            <xsl:apply-templates/>
        </sup>
    </xsl:template>

    <xsl:template match="literallayout">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <!--ulink group-->

    <xsl:template match="ulink">
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="@url"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="citetitle">
        <xsl:apply-templates/>
    </xsl:template>

    <!--<xsl:template name="ulink-url">
        <xsl:value-of select="@url"/>
    </xsl:template>-->

</xsl:stylesheet>
