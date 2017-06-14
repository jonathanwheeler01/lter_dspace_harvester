<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">
    
    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>
    
    <xsl:template match="entity">
        <!--<tr>
            <td> Entity: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="otherEntity">
        <!--<tr>
            <td> Other Entity: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- handle node attributes -->
    
    <xsl:template name="entity-otherEntity-id">
        <xsl:value-of select="@id"/>
    </xsl:template>
    
    <xsl:template name="entity-otherEntity-system">
        <xsl:value-of select="@system"/>
    </xsl:template>
    
    <xsl:template name="entity-otherEntity-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>
    
    <!-- handle entityGroup -->
    
    <xsl:template match="alternateIdentifier">
        <tr>
            <td> Alternate Identifier: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template name="entity-alternateId-system">
        <xsl:value-of select="@system"/>
    </xsl:template>
    
    <xsl:template match="entityName">
        <tr>
            <td> Entity Name: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="entityDescription">
        <tr>
            <td> Entity Description: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="entityType">
        <tr>
            <td> Entity Type: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="physical">
        <!--<tr>
            <td> Physical: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Physical: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="coverage">
        <!--<tr>
            <td> Coverage: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Coverage: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="additionalInfo">
        <!--<tr>
            <td> Additional Information: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Additional Information: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>