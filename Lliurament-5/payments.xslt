<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"></xsl:output>
    <xsl:template match="/">
        <xsl:element name="payments">

            <xsl:for-each select="DATA/ROW">
                <xsl:element name="check">
                    <xsl:attribute name="number">
                        <xsl:value-of select="checkNumber"></xsl:value-of>
                    </xsl:attribute>
                        <customer>
                            <xsl:attribute name="customerNumber">
                                <xsl:value-of select="customerNumber"></xsl:value-of>
                            </xsl:attribute>
                            <customerName><xsl:value-of select="customerName"></xsl:value-of></customerName>
                            <address>
                                <addressLine1><xsl:value-of select="addressLine1"></xsl:value-of></addressLine1>
                                <city>
                                    <xsl:attribute name="country"><xsl:value-of select="country"></xsl:value-of></xsl:attribute>
                                    <xsl:value-of select="city"></xsl:value-of>
                                </city>
                            </address>
                            <salesRepEmployeeNumber><xsl:value-of select="salesRepEmployeeNumber"></xsl:value-of></salesRepEmployeeNumber>
		                    <creditLimit><xsl:value-of select="creditLimit"></xsl:value-of></creditLimit>
                        </customer>
                        <date><xsl:value-of select="paymentDate"></xsl:value-of></date>
                        <amount><xsl:value-of select="amount"></xsl:value-of></amount>
                </xsl:element>
            </xsl:for-each>

        </xsl:element>

    </xsl:template>
</xsl:stylesheet> 