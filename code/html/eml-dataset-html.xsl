<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>

    <xsl:template match="dataset">
        <div id="dataset">
            <table>
                <tbody>
                    <tr>
                        <th colspan="2">Summary Information</th>
                    </tr>
                    <xsl:apply-templates/>
                </tbody>
            </table>
        </div>
    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="dataset-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="dataset-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="dataset-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="purpose">
        <tr>
            <td> Purpose: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="maintenance">
        <tr>
            <td>
                <table>
                    <thead>
                        <tr>
                            <td>Maintenance Information: </td>
                        </tr>
                    </thead>
                    <xsl:apply-templates/>
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="description">
        <tr>
            <td>
                <table>
                    <thead>
                        <tr>
                            <td>Description</td>
                        </tr>
                    </thead>
                    <xsl:apply-templates/>
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="maintenanceUpdatedFrequency">
        <tr>
            <td> Update Frequency: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="changeHistory">
        <tr>
            <td>
                <table>
                    <thead>
                        <tr>
                            <td>Change History: </td>
                        </tr>
                    </thead>
                    <xsl:apply-templates/>
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="changeScope">
        <tr>
            <td> Change Scope: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="oldValue">
        <tr>
            <td> Old Value: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="changeDate">
        <tr>
            <td> Change Date: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="comment">
        <tr>
            <td> Comment: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
