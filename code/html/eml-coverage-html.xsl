<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">
    
    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>
    
    <xsl:template match="coverage">
       <!-- <tr>
            <td> Coverage: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- handle node attributes -->
    
    <xsl:template name="coverage-id">
        <xsl:value-of select="@id"/>
    </xsl:template>
    
    <xsl:template name="coverage-system">
        <xsl:value-of select="@system"/>
    </xsl:template>
    
    <xsl:template name="coverage-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>
    
    <!-- handle child nodes -->
    
    <xsl:template match="geographicCoverage">
        <!--<tr>
            <td> Geographic Coverage: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Geographic Goverage: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template name="coverage-geographic-id">
        <xsl:value-of select="@id"/>
    </xsl:template>
    
    <xsl:template name="coverage-geographic-system">
        <xsl:value-of select="@system"/>
    </xsl:template>
    
    <xsl:template name="coverage-geographic-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>
    
    <xsl:template match="temporalCoverage">
        <!--<tr>
            <td> Temporal Coverage: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Temporal Coverage: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template name="coverage-temporal-id">
        <xsl:value-of select="@id"/>
    </xsl:template>
    
    <xsl:template name="coverage-temporal-system">
        <xsl:value-of select="@system"/>
    </xsl:template>
    
    <xsl:template name="coverage-temporal-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>
    
    <xsl:template match="taxonomicCoverage">
       <!-- <tr>
            <td> Taxonomic Coverage: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Taxonomic Coverage: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template name="coverage-taxonomic-id">
        <xsl:value-of select="@id"/>
    </xsl:template>
    
    <xsl:template name="coverage-taxonomic-system">
        <xsl:value-of select="@system"/>
    </xsl:template>
    
    <xsl:template name="coverage-taxonomic-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>
    
    <xsl:template match="rangeOfDates">
        <!--<tr>
            <td> Range of Dates: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Date Range: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="beginDate">
        <!--<tr>
            <td> Begin Date: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Begin Date: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="endDate">
        <!--<tr>
            <td> End Date: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>End Date: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="singelDateTime">
        <!--<tr>
            <td> Single Date-Time: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Date: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="calendarDate">
        <tr>
            <td> Calendar Date: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="time">
        <tr>
            <td> Time: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="alternativeTimeScale">
        <!--<tr>
            <td> Alternative Timescale: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Alternative Time Scale: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="timeScaleName">
        <tr>
            <td> Timescale Name: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="timeScaleAgeEstimate">
        <tr>
            <td> Timescale Age Estimate: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="timeScaleAgeUncertainty">
        <tr>
            <td> Timescale Age Uncertainty: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="timeScaleAgeExplanation">
        <tr>
            <td> Timescale Age Explanantion: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="timeScaleCitation">
       <!-- <tr>
            <td> Timescale Citation: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Timescale Citation: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="geographicDescription">
        <tr>
            <td> Geographic Description: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="boundingCoordinates">
       <!-- <tr>
            <td> Bounding Coordinates: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Bounding Coordinates: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="westBoundingCoordinate">
        <tr>
            <td> West Bounding Coordinates: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="eastBoundingCoordinate">
        <tr>
            <td> East Bounding Coordinates: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="southBoundingCoordinate">
        <tr>
            <td> South Bounding Coordinates: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="northBoundingCoordinate">
        <tr>
            <td> North Bounding Coordinates: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="boundingAltitudes">
        <!--<tr>
            <td> Bounding Altitudes: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Bounding Altitude: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="altitudeMinimum">
        <tr>
            <td> Altitude Minimum: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="altitudeMaximum">
        <tr>
            <td> Altitude Maximum: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="altitudeUnits">
        <tr>
            <td> Altitude Units: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="datasetGPolygon">
        <!--<tr>
            <td> Dataset G Polygon: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Dataset G Polygon: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="datasetGPolygonOuterGRing">
       <!-- <tr>
            <td> Dataset G Polygon Outer G Ring: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Dataset G Polygon Outer G Ring: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="datasetGPolygonExclusionGRing">
        <!--<tr>
            <td> Dataset G Polygon Exclusion G Ring: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Dataset G Polygon Exclusion G Ring: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="gRingPoint">
        <!--<tr>
            <td> G Ring Point: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>G Ring Point: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="gRingLatitude">
        <tr>
            <td> G Ring Latitude: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="gRingLongitude">
        <tr>
            <td> G Ring Longitude: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="gRing">
        <tr>
            <td> G Ring: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="taxonomicSystem">
        <!--<tr>
            <td> Taxonomic System: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Taxonomic System: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="classificationSystem">
        <!--<tr>
            <td> Classification System: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Classification System: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="classificationSystemCitation">
        <!--<tr>
            <td> Classification System Citation: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Classification System Citation: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="classificationSystemModifications">
        <tr>
            <td> Classification System Modifications: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="identificationReference">
        <!--<tr>
            <td> Identification Reference: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Identification Reference: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="identifierName">
        <!--<tr>
            <td> Identifier Name: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Identifier Name: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="taxonomicProcedures">
        <tr>
            <td> Taxonomic Procedures: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="taxonomicCompleteness">
        <tr>
            <td> Taxonomic Completeness: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="vouchers">
        <!--<tr>
            <td> Vouchers: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Vouchers: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="specimen">
        <tr>
            <td> Specimen: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="repository">
        <!--<tr>
            <td> Repository: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Repository: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="originator">
        <!--<tr>
            <td> Originator: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Originator: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="generalTaxonomicCoverage">
        <tr>
            <td> General Taxonomic Coverage: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="taxonomicClassification">
       <!-- <tr>
            <td> Taxonomic Classification: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Taxonomic Classification: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="taxonRankName">
        <tr>
            <td> Taxon Rank Name: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="taxonRankValue">
        <tr>
            <td> Taxon Rank Value: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="commonName">
        <tr>
            <td> Common Name: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>