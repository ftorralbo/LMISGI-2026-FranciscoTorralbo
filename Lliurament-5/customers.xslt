<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"></xsl:output>
    <xsl:template match="/">
        <xsl:element name="customers">

            <xsl:for-each select="DATA/ROW">
                <xsl:element name="customer">
                    <xsl:attribute name="customerNumber">
                        <xsl:value-of select="customerNumber"></xsl:value-of>
                    </xsl:attribute>
                    <customerName>
                        <xsl:value-of select="customerName"></xsl:value-of>
                    </customerName>
                    <phone>
                        <xsl:value-of select="phone"></xsl:value-of>
                    </phone>
                    <contact>
                        <contactFirstName>
                            <xsl:value-of select="contactFirstName"></xsl:value-of>
                        </contactFirstName>
                        <contactLastName>
                            <xsl:value-of select="contactLastName"></xsl:value-of>
                        </contactLastName>
                    </contact>
                    <address>
                        <addressLine1>
                            <xsl:value-of select="addressLine1"></xsl:value-of>
                        </addressLine1>
                        <addressLine2>
                            <xsl:value-of select="addressLine2"></xsl:value-of>
                        </addressLine2>
                        <city>
                            <xsl:value-of select="city"></xsl:value-of>
                        </city>
                        <state>
                            <xsl:value-of select="state"></xsl:value-of>
                        </state>
                        <postalCode>
                            <xsl:value-of select="postalCode"></xsl:value-of>
                        </postalCode>
                        <country>
                            <xsl:value-of select="country"></xsl:value-of>
                        </country>
                    </address>
                    <salesRepEmployeeNumber>
                        <xsl:value-of select="salesRepEmployeeNumber"></xsl:value-of>
                    </salesRepEmployeeNumber>
                    <creditLimit>
                        <xsl:value-of select="creditLimit"></xsl:value-of>
                    </creditLimit>
                </xsl:element>
            </xsl:for-each>

        </xsl:element>

    </xsl:template>
</xsl:stylesheet> 