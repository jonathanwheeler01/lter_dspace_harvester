<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">
    
    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>
    
    <xsl:template match="storedProcedure">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Stored Procedure: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <!-- handle node attributes -->
    
    <xsl:template name="storedProcedure-id">
        <xsl:value-of select="@id"/>
    </xsl:template>
    
    <xsl:template name="storedProcedure-system">
        <xsl:value-of select="@system"/>
    </xsl:template>
    
    <xsl:template name="storedProcedure-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>
    
    <!-- handle child nodes -->
    
    <xsl:template match="attributeList">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Attribute List: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="constraint">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Constraint: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="parameter">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Parameter: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="references">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>References: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="name">
        <tr>
            <td> Name: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="domainDescription">
        <tr>
            <td> Domain Description: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="required">
        <tr>
            <td> Required: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="repeats">
        <tr>
            <td> Repeats: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>