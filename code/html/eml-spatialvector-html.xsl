<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">
    
    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>
    
    <xsl:template match="spacialVector">
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- handle node attributes -->
    
    <xsl:template name="spacialVector-id">
        <xsl:value-of select="@id"/>
    </xsl:template>
    
    <xsl:template name="spacialVector-system">
        <xsl:value-of select="@system"/>
    </xsl:template>
    
    <xsl:template name="spacialVector-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>
    
    <!--<xsl:template match="alternativeIdentifier">
        <div class="spacialVector">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template name="alternativeIdentifier-system">
        <xsl:value-of select="@system"/>
    </xsl:template>
    
    <xsl:template match="entityName">
        <div class="entityName">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="entityDescription">
        <div class="entityDescription">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="physical">
        <div class="physical">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="coverage">
        <div class="coverage">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="methods">
        <div class="methods">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="additionalInfo">
        <div class="additionalInfo">
            <xsl:apply-templates/>
        </div>
    </xsl:template>-->
    
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
    
    <xsl:template match="geometry">
        <tr>
            <td> Geometry: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="geometricObjectCount">
        <tr>
            <td> Geometric Object Count: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="topologyLevel">
        <tr>
            <td> Topology Level: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="spatialReference">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Spatial Reference: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <!--<xsl:template match="horizontalAccuracy">
        <div class="horizontalAccuracy">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="accuracyReport">
        <div class="accuracyReport">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="quantitativeAccuracyReport">
        <div class="quantitativeAccuracyReport">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="quantitativeAccuracyValue">
        <div class="quantitativeAccuracyValue">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="quantitativeAccuracyMethod">
        <div class="quantitativeAccuracyMethod">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="verticalAccuracy">
        <div class="geometry">
            <xsl:apply-templates/>
        </div>
    </xsl:template>-->
    
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
    
  
</xsl:stylesheet>