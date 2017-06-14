<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">
    
    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>
    
    <xsl:template match="documentation">
        <!--<tr>
            <td> Documentation: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- handle child nodes -->
    
    <xsl:template match="moduleDocs">
        <!--<tr>
            <td> Module Documents: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Module Documentation: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="moduleName">
        <tr>
            <td> Module Name: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="moduleDescription">
        <!--<tr>
            <td> Module Description: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Module Description: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="recommendedUsage">
        <tr>
            <td> Recommended Usage: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="standAlone">
        <tr>
            <td> Standalone: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="tooltip">
        <tr>
            <td> Tool Tip: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="summary">
        <tr>
            <td> Summary: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="description">
        <!--<tr>
            <td> Description: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Description: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="example">
        <!--<tr>
            <td> Example: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Example: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="lineage">
        <tr>
            <td> Lineage: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="module">
        <tr>
            <td> Module: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>