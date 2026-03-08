<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"></xsl:output>
    <xsl:template match="/">
        <xsl:element name="employees">

            <xsl:for-each select="DATA/ROW">
                <xsl:element name="employee">
                    <xsl:attribute name="employeeNumber">
                        <xsl:value-of select="employeeNumber"></xsl:value-of>
                    </xsl:attribute>
                    <lastName>
                        <xsl:value-of select="lastName"></xsl:value-of>
                    </lastName>
                    <firstName>
                        <xsl:value-of select="firstName"></xsl:value-of>
                    </firstName>
                    <email>
                        <xsl:value-of select="email"></xsl:value-of>
                    </email>
                    <reportsTo>
                        <xsl:value-of select="reportsTo"></xsl:value-of>
                    </reportsTo>
                    <jobTitle>
                        <xsl:value-of select="jobTitle"></xsl:value-of>
                    </jobTitle>
                    <office>
                        <xsl:attribute name="ofCode"><xsl:value-of select="ofCode"></xsl:value-of></xsl:attribute>
                        <City>
                            <xsl:value-of select="ofCity"></xsl:value-of>
                        </City>
                        <Phone>
                            <xsl:value-of select="ofPhone"></xsl:value-of>
                        </Phone>
                        <AddressLine1>
                            <xsl:value-of select="ofAdd1"></xsl:value-of>
                        </AddressLine1>
                        <AddressLine2>
                            <xsl:value-of select="ofAdd2"></xsl:value-of>
                        </AddressLine2>
                        <State>
                            <xsl:value-of select="ofState"></xsl:value-of>
                        </State>
                        <Country>
                            <xsl:value-of select="ofCountry"></xsl:value-of>
                        </Country>
                        <PostalCode>
                            <xsl:value-of select="ofPostalCode"></xsl:value-of>
                        </PostalCode>
                        <Territory>
                            <xsl:value-of select="ofTerritory"></xsl:value-of>
                        </Territory>
                    </office>
                </xsl:element>
            </xsl:for-each>

        </xsl:element>

    </xsl:template>
</xsl:stylesheet> 