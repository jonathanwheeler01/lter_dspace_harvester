<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>

    <xsl:template match="spatialReference">
        <!--<tr>
            <td>
                <table>
                    <tr>
                        <th>Spatial Reference: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>-->
        <xsl:apply-templates/>
    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="spatialReference-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="spatialReference-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="spatialReference-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="projectionList">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Projection List: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="horizCoordSysName">
        <tr>
            <td> Horizontal Coordinate System Name: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="horizCoordSysDef">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Horizontal Coordinate System Definition: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="horizCoordSysDef-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="geogCoordSys">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Geographic Coordinate System: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="geogCoordSys-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template match="datum">
        <tr>
            <td> Datum: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="datum-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template match="spheroid">
        <tr>
            <td> Spheroid: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template name="spheroid-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="spheroid-semiAxisMajor">
        <xsl:value-of select="@semiAxisMajor"/>
    </xsl:template>

    <xsl:template name="spheroid-denomFlatRatio">
        <xsl:value-of select="@denomFlatRatio"/>
    </xsl:template>

    <xsl:template match="primeMeridian">
        <tr>
            <td> Prime Meridian: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template name="primeMeridian-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template name="primeMeridian-longitude">
        <xsl:value-of select="@longitude"/>
    </xsl:template>

    <xsl:template match="unit">
        <tr>
            <td> Unit: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template name="unit-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template match="projectCoordSys">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Projection Coordinate System: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="projection">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Projection: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="projection-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template match="parameter">
        <tr>
            <td> Parameter: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="parameter-name">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template name="parameter-description">
        <xsl:value-of select="@name"/>
    </xsl:template>

    <xsl:template name="parameter-value">
        <xsl:value-of select="@value"/>
    </xsl:template>

    <xsl:template match="vertCoordSys">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Verticale Coordinate System: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="altitudeSysDef">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Altitude System Definition: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="altitudeDatumName">
        <tr>
            <td> Altitude Datum Name: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="altitudeResolution">
        <tr>
            <td> Altitude Resolution: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>
    <xsl:template match="altitudeDistanceUnits">
        <tr>
            <td> Altitude Distance Units: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="altitudeEncodingMethod">
        <tr>
            <td> Altitude Encoding Method: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="depthSysDef">
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Depth System Definition: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="depthDatumName">
        <tr>
            <td> Depth Datum Name: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="depthResolution">
        <tr>
            <td> Depth Resolution: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="depthDistanceUnits">
        <tr>
            <td> Depth Distance Units: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="depthEncodingMethod">
        <tr>
            <td> Depth Encoding Method: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
