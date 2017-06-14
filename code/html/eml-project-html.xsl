<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">
    
    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>
    
    <xsl:template match="project">
        <!--<tr>
            <td> Project: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- handle node attributes -->
    
    <xsl:template name="project-id">
        <xsl:value-of select="@id"/>
    </xsl:template>
    
    <xsl:template name="project-system">
        <xsl:value-of select="@system"/>
    </xsl:template>
    
    <xsl:template name="project-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>
    
    <!-- handle child nodes -->
    
    <xsl:template match="researchProject">
        <!--<tr>
            <td> Research Project: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template name="researchProject-id">
        <xsl:value-of select="@id"/>
    </xsl:template>
    
    <xsl:template name="researchProject-system">
        <xsl:value-of select="@system"/>
    </xsl:template>
    
    <xsl:template name="researchProject-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>
    
    <xsl:template match="title">
        <tr>
            <!--<td> Title: </td>-->
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="personnel">
        <!--<tr>
            <td> Personnel: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Personnel: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="role">
        <tr>
            <td> Role: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="abstract">
        <!--<tr>
            <td> Abstract: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Abstract: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="funding">
        <!--<tr>
            <td> Funding: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Funding: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="studyAreaDescription">
        <!--<tr>
            <td> Study Area Description: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Study Area Description: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="descriptor">
        <!--<tr>
            <td> Descriptor: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Descriptor: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template name="project-studyareadescription-descriptor-name">
        <xsl:value-of select="@name"/>
    </xsl:template>
    
    <xsl:template name="project-studyareadescription-descriptor-citableclassificationsystem">
        <xsl:value-of select="@citableClassificationSystem"/>
    </xsl:template>
    
    <xsl:template match="descriptorValue">
        <tr>
            <td> Descriptor Value: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template name="project-studyareadescription-descriptor-descriptorValue-nameorId">
        <xsl:value-of select="@name_or_id"/>
    </xsl:template>
    
    <xsl:template match="citation">
        <!--<tr>
            <td> Citation: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Citation: </th>
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
    
    <xsl:template match="designDescription">
        <!--<tr>
            <td> Design Description: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Design Description: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
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
    
    <xsl:template match="relatedProject">
        <!--<tr>
            <td> Related Project: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Related Project: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>