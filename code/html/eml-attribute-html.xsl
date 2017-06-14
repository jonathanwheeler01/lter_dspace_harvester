<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>

    <xsl:template match="attribute">
        <!-- <tr>
            <td> Attribute: </td>
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <xsl:apply-templates/>
    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="attribute-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="attribute-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="attribute-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle attributeList node -->

    <xsl:template match="attributeList">
        <!--<tr>
            <td> Attribute List: </td>
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template name="attributeList-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <!-- handle attribute child nodes -->

    <xsl:template match="attributeName">
        <tr>
            <td> Attribute Name: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="attributeLabel">
        <tr>
            <td> Attribute Label: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="attributeDefinition">
        <tr>
            <td> Attribute Definition: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="storageType">
        <tr>
            <td> Storage Type: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template name="attribute-storagetype-typesys">
        <xsl:value-of select="@typeSystem"/>
    </xsl:template>

    <xsl:template match="measurementScale">
        <!--<tr>
            <td> Measurement Scale: </td>
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Measurement Scale: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="nominal">
        <!--<tr>
            <td> Nominal: </td>
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Nominal: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="nonNumericDomain">
        <!--<tr>
            <td> Non-numeric Domain: </td>
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Non Numeric Domain: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template name="attribute-mScale-nominal-nonNumeric-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template match="enumeratedDomain">
        <!--<tr>
            <td> Enumerated Domain: </td>
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Enumerated Domain: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template name="attribute-mScale-nominal-nonNumeric-enumerated-enforced">
        <xsl:value-of select="@enforced"/>
    </xsl:template>

    <xsl:template match="codeDefinition">
        <!--<tr>
            <td> Code Definition: </td>
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Code Definition: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template name="attribute-mScale-nominal-nonNumeric-enumerated-codeDef-order">
        <xsl:value-of select="@order"/>
    </xsl:template>

    <xsl:template match="code">
        <tr>
            <td> Code: </td>
            <td>

                <xsl:apply-templates/>

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

    <xsl:template match="source">
        <tr>
            <td> Source: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="externalCodeSet">
        <!--<tr>
            <td> External Code Set: </td>
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>External Codeset: </th>
                    </tr>

                    <xsl:apply-templates/>

                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="codesetName">
        <tr>
            <td> Code Set Name: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="codesetURL">
        <tr>
            <td> Codeset URL: </td>
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

    <xsl:template match="entityCodeList">
       <!-- <tr>
            <td> Entity Code List: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Entity Codelist: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="entityReference">
        <tr>
            <td> Entity Reference: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="valueAttributeReference">
        <tr>
            <td> Value Attribute Reference: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="definitionAttributeReference">
        <tr>
            <td> Definition Attribute Reference: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="orderAttributeReference">
        <tr>
            <td> Order Attribute Reference: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="textDomain">
        <!--<tr>
            <td> Text Domain: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Text Domain: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="pattern">
        <tr>
            <td> Pattern: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="source">
        <tr>
            <td> Source: </td>
            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="ordinal">
        <!--<tr>
            <td> Ordinal: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Ordinal: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="interval">
        <!--<tr>
            <td> Interval: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Interval: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="unit">
        <!--<tr>
            <td> Unit: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Unit: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="standardUnit">
        <tr>
            <td> Standard Unit: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="customUnit">
        <tr>
            <td> Custom Unit: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="precision">
        <tr>
            <td> Precision: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="numericDomain">
        <!--<tr>
            <td> Numeric Domain: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Numeric Domain: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template name="attribute-mScale-interval-numeric-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template match="numberType">
        <tr>
            <td> Number Type: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="ratio">
        <!--<tr>
            <td> Ratio: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Ratio: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="dateTime">
        <!--<tr>
            <td> Date Time: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Datetime: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="formatString">
        <tr>
            <td> Format String: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="dateTimePrecision">
        <tr>
            <td> Date-Time Precision: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="dateTimeDomain">
        <!--<tr>
            <td> Date-Time Domain: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Datetime Domain: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template name="attribute-mScale-datetime-dtdomain-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template match="missingValueCode">
       <!-- <tr>
            <td> Missing Value Code: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Missing Value Code: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="codeExplanation">
        <tr>
            <td> Code Explanation: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="accuracy">
        <!--<tr>
            <td> Accuracy: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Accuracy: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="accuracyAttributeReport">
        <tr>
            <td> Accuracy Attribute Report: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="quantitativeAttributeAccuracyAssessment">
        <!--<tr>
            <td> Quantitative Attribute Accuracy Assessment: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Quantitative Attribute Accuracy Assessment: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="attributeAccuracyValue">
        <tr>
            <td> Attribute Accuracy Value: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="accuracyAttributeExplanation">
        <tr>
            <td> Accuracy Attribute Explanation: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <!-- handle BoundsGroup and BoundsDateGroup-->
    <!--
        BoundsGroup is a float, BoundsDateGroup is a string.
        Not sure we're going to worry about the difference here.
        Otherwise, these are the same.
    -->

    <xsl:template match="bounds">
        <!--<tr>
            <td> Bounds: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Bounds: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="minimum">
        <tr>
            <td> Minimum: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="maximum">
        <tr>
            <td> Maximum: </td>
            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template name="attribute-bounds-min-max-exclusive">
        <xsl:value-of select="@exclusive"/>
    </xsl:template>

</xsl:stylesheet>
