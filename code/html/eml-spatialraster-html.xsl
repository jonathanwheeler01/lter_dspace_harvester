<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">
    
    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>
    
    <xsl:template match="spatialRaster">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Spatial Raster: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <!-- handle attributes -->
    
    <xsl:template name="spRaster-id">
        <xsl:value-of select="@id"/>
    </xsl:template>
    
    <xsl:template name="spRaster-system">
        <xsl:value-of select="@system"/>
    </xsl:template>
    
    <xsl:template name="spRaster-scope">
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
    
    <xsl:template match="georeferenceInfo">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Georeference Information: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="cornerPoint">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Corner Point: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="xCoordinate">
        <tr>
            <td> X Coordinate: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="yCoordinate">
        <tr>
            <td> Y Coordinate: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="pointInPixel">
        <tr>
            <td> Point in Pixel: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="corner">
        <tr>
            <td> Corner: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="controlPoint">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Control Point: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="column">
        <tr>
            <td> Column: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="row">
        <tr>
            <td> Row: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="bilinearFit">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Bilinear Fit: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="xIntercept">
        <tr>
            <td> X Intercept: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="xSlope">
        <tr>
            <td> X Slope: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="yIntercept">
        <tr>
            <td> Y Intercept: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="ySlope">
        <tr>
            <td> Y Slope: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="horizontalAccuracy">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Horizontal Accuracy: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="accuracyReport">
        <tr>
            <td> Accuracy Report: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="quantitativeAccuracyReport">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Quantitative Accuracy Report: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="quantitativeAccuracyValue">
        <tr>
            <td> Quantitative Accuracy Value: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="quantitativeAccuracyMethod">
        <tr>
            <td> Quantitative Accuracy Method: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="verticalAccuracy">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Vertical Accuracy: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="cellSizeXDirection">
        <tr>
            <td> Cell Size X Direction: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="cellSizeYDirection">
        <tr>
            <td> Cell Size Y Direction: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="numberOfBands">
        <tr>
            <td> Number of Bands: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="rasterOrigin">
        <tr>
            <td> Raster Origin: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="rows">
        <tr>
            <td> Rows: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="columns">
        <tr>
            <td> Columns: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="verticals">
        <tr>
            <td> Verticals: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="cellGeometry">
        <tr>
            <td> Cell Geometry: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="toneGradation">
        <tr>
            <td> Tone Gradation: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="scaleFactor">
        <tr>
            <td> Scale Factor: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="offset">
        <tr>
            <td> Offset: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="imageDescription">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Image Description: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="illuminationElevationAngle">
        <tr>
            <td> Illumination Elevation Angle: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="illuminationAzimuthAngle">
        <tr>
            <td> Illumination Azimuth Angle: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="imageOrientationAngle">
        <tr>
            <td> Image Orientation Angle: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="imageCondition">
        <tr>
            <td> Image Condition: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="imageQualityCode">
        <tr>
            <td> Image Quality Code: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="cloudCoverPercentage">
        <tr>
            <td> Cloud Cover Percentage: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="preProcessingTypeCode">
        <tr>
            <td> Preprocessing Type Code: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="compressionGenerationQuality">
        <tr>
            <td> Compression Generation Quality: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="triangulationIndicator">
        <tr>
            <td> Triangulation Indicator: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="radiometricDataAvailability">
        <tr>
            <td> Radiometric Data Availability: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="cameraCalibrationInformationAvailability">
        <tr>
            <td> Camera Calibration Information Availability: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="filmDistortionInformationAvailability">
        <tr>
            <td> Film Distortion Information Availability: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="lensDistortionInformationAvailability">
        <tr>
            <td> Lens Distortion Information Availability: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="bandDescription">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Band Description: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="sequenceIdentifier">
        <tr>
            <td> Sequence Identifier: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="highWavelength">
        <tr>
            <td> High Wavelength: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="lowWaveLength">
        <tr>
            <td> Low Wavelength: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="waveLengthUnits">
        <tr>
            <td> Wavelength Units: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="peakResponse">
        <tr>
            <td> Peak Response: </td>
            
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>