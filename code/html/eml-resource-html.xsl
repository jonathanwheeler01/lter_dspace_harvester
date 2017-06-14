<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>

    <xsl:template match="resource">
        <!--<tr>
            <td> Resource: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <xsl:apply-templates/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="alternateIdentifier">
        <tr>
            <td> Alternate Identifier: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
        <!--<td>
            
            <xsl:apply-templates/>
            
        </td>-->
    </xsl:template>

    <xsl:template name="alternateId-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template match="shortName">
        <tr>
            <td> Short Name: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
        <!--<td>
            
            <xsl:apply-templates/>
            
        </td>-->
    </xsl:template>

    <xsl:template match="title">
        <tr>
            <!--<td> Title: </td>-->

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
        <!--<td>
            
            <xsl:apply-templates/>
            
        </td>-->
    </xsl:template>

    <xsl:template match="creator">
        <!-- <tr>
            <td> Creator: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Creator: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="metadataProvider">
        <!--<tr>
            <td> Metadata Provider: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Metadata Provider: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="associatedParty">
        <!--<tr>
            <td> Associated Party: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Associated Party: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="pubDate">
        <tr>
            <td> Publication Date: </td>

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

    <xsl:template match="series">
        <tr>
            <td> Series: </td>

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

    <xsl:template match="keywordSet">
        <!--<tr>
            <td> Keyword Set: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Keywords: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="keyword">
        <tr>
            <td> Keyword: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template name="keywordSet-keywordType">
        <xsl:value-of select="@keywordType"/>
    </xsl:template>

    <xsl:template match="keywordThesaurus">
        <tr>
            <td> Keyword Thesaurus: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="additionaInfo">
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

    <xsl:template match="intellectualRights">
        <!--<tr>
            <td> Intellectual Rights: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Intellectual Rights: </th>
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

    <xsl:template match="distribution">
        <!--<tr>
            <td> Distribution: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
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

    <xsl:template name="distribution-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="distribution-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="distribution-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="online">
        <!--<tr>
            <td> Online: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Online: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="onlineDescription">
        <tr>
            <td> Online Description: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="url">
        <tr>
            <td> URL: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template name="distribution-online-url-function">
        <xsl:value-of select="@function"/>
    </xsl:template>

    <xsl:template match="connection">
        <!--<tr>
            <td> Connection: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Connection: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template name="distribution-online-connection-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="distribution-online-connection-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="distribution-online-connection-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="parameter">
        <!--<tr>
            <td> Parameter: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
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

    <xsl:template match="name">
        <tr>
            <td> Name: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="value">
        <tr>
            <td> Value: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="connectionDefinition">
        <!--<tr>
            <td> Connection Definition: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Connection Definition: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template name="distribution-online-connectionDef-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="distribution-online-connectionDef-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="distribution-online-connectionDef-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="schemeName">
        <tr>
            <td> Scheme Name: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template name="distribution-online-connectionDef-schemeName-system">
        <xsl:value-of select="@system"/>
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

    <xsl:template match="parameterDefinition">
        <!--<tr>
            <td> Parameter Definition: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Parameter Definition: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="definition">
        <tr>
            <td> Definition: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="defaultValue">
        <tr>
            <td> Default Value: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="offline">
        <!--<tr>
            <td> Offline: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Offline: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="mediumName">
        <tr>
            <td> Medium Name: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="mediumDensity">
        <tr>
            <td> Medium Density: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="mediumDensityUnits">
        <tr>
            <td> Medium Density Units: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="mediumVolume">
        <tr>
            <td> Medium Volume: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="mediumFormat">
        <tr>
            <td> Medium Format: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="mediumNote">
        <tr>
            <td> Medium Note: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <!-- inline allows for any XML, so copy instead of apply templates -->

    <xsl:template match="inline">
        <!--<tr>
            <td> Inline: </td>

            <td>

                <xsl:copy-of select="."/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Inline: </th>
                    </tr>
                    
                    <xsl:copy-of select="."/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="references">
        <tr>
            <td> References: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template name="references-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

</xsl:stylesheet>
