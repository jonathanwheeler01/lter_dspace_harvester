<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
    xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
    xmlns:stmml="http://www.xml-cml.org/schema/stmml-1.1" exclude-result-prefixes="xs" version="2.0">

    <xsl:strip-space elements="*"/>
    <xsl:output method="html"/>

    <xsl:template match="party">
        <!--<tr>
            <td> Party: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <xsl:apply-templates/>
    </xsl:template>

    <!-- handle node attributes -->

    <xsl:template name="party-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="party-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="party-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <!-- handle child nodes -->

    <xsl:template match="individualName">
        <!--<tr>
            <td> Individual Name: </td>

            <td>
                
                <xsl:apply-templates/>
                
            </td>
        </tr>-->
        <tr>
            <td> Individual: </td>
            <td>
                <xsl:if test="./salutation">
                    <xsl:value-of select="./salutation"/>
                    <xsl:text> </xsl:text>
                </xsl:if>
                <xsl:value-of select="./givenName"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="./surName"/>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="salutation">
        <!--<tr>
            <td> Salutation: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
    </xsl:template>

    <xsl:template match="givenName">
        <!--<tr>
            <td> First Name: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
    </xsl:template>

    <xsl:template match="surName">
        <!--<tr>
            <td> Last Name: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
    </xsl:template>

    <xsl:template match="organizationName">
        <tr>
            <td> Organization: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
        <!--<td>
            <xsl:apply-templates/>
        </td>-->
    </xsl:template>

    <xsl:template match="positionName">
        <tr>
            <td> Position Title: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
       <!-- <td>

            <xsl:apply-templates/>

        </td>-->
    </xsl:template>

    <xsl:template match="address">
        <!--<tr>
            <td> Physical Address: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>-->
        <tr>
            <td>
                <table>
                    <tr>
                        <th>Physical Address: </th>
                    </tr>
                    
                    <xsl:apply-templates/>
                    
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template name="party-address-id">
        <xsl:value-of select="@id"/>
    </xsl:template>

    <xsl:template name="party-address-system">
        <xsl:value-of select="@system"/>
    </xsl:template>

    <xsl:template name="party-address-scope">
        <xsl:value-of select="@scope"/>
    </xsl:template>

    <xsl:template match="deliveryPoint">
        <tr>
            <td> Delivery Address: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="city">
        <tr>
            <td> City: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="administrativeArea">
        <tr>
            <td> Locality: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="postalCode">
        <tr>
            <td> Postal Code: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="country">
        <tr>
            <td> Phone: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="phone">
        <tr>
            <td> Phone: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <!--<xsl:template name="party-phone-type">
        <xsl:value-of select="/party/phone/@phoneType"/>
    </xsl:template>-->

    <xsl:template match="electronicMailAddress">
        <tr>
            <td> Email: </td>


            <td>

                <xsl:apply-templates/>

            </td>
        </tr>

    </xsl:template>

    <xsl:template match="onlineUrl">
        <tr>
            <td> URL: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template match="userId">
        <tr>
            <td> System ID: </td>

            <td>

                <xsl:apply-templates/>

            </td>
        </tr>
    </xsl:template>

    <xsl:template name="party-userid-directory">
        <xsl:value-of select="@directory"/>
    </xsl:template>

</xsl:stylesheet>
