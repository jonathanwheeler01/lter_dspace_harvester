<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>

    <xsl:template match="software">
        <xsl:apply-templates/>
    </xsl:template>

    <!-- handle attributes -->

    <xsl:template name="software-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="software-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="software-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="implementation">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Implementation: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="distribution">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Distribution: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="size">
        <tr>
            <td> Size: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="language">
        <tr>
            <td> Language: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="LanguageValue">
        <tr>
            <td> Language Value: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="LanguageCodeStandard">
        <tr>
            <td> Language Code Standard: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="operatingSystem">
        <tr>
            <td> Operating System: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="machineProcessor">
        <tr>
            <td> Machine Processor: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="virtualMachine">
        <tr>
            <td> Virtual Machine: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="diskUsage">
        <tr>
            <td> Disk Usage: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="runtimeMemoryUsage">
        <tr>
            <td> Runtime Memory Usage: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="programmingLanguage">
        <tr>
            <td> Programming Language: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="checksum">
        <tr>
            <td> Checksum: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="dependency">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Dependency: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="action">
        <tr>
            <td> Action: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="licenseURL">
        <tr>
            <td> License URL: </td>

            <td>
                <xsl:element name="a">
                    <xsl:attribute name="href">
                        <xsl:apply-templates/>
                    </xsl:attribute>
                    <xsl:apply-templates/>
                </xsl:element>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="license">
        <tr>
            <td> License: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="version">
        <tr>
            <td> Version: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
