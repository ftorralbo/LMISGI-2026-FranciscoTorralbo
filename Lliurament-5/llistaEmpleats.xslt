<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"></xsl:output>
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8" />
                <title>Llista Empleats</title>
                <style>
                    h3 {
                    color: blue;
                    }

                    .nom {
                    font-size: 18px;
                    }

                    .negreta {
                    font-weight: bold;
                    }

                    .vermell {
                    color: red;
                    font-style: italic;
                    }
                </style>
            </head>
            <body>
                <h2>Llista d'Empleats</h2>
                <ul>
                    <xsl:for-each select="employees/employee">
                        <xsl:sort select="firstName" order="ascending"></xsl:sort>
                       <li>
                            <h3> Empleat amb id <xsl:value-of select="@employeeNumber"></xsl:value-of></h3>
                            <ul>
                                <li>
                                    <span class="negreta">Nom:</span><span class="nom">
                                    <xsl:value-of select="firstName"></xsl:value-of>
                                    <xsl:value-of
                                        select="lastName"></xsl:value-of></span>
                                </li>
                                <li>
                                    <span class="negreta">Correu:</span>
                                    <xsl:value-of select="email"></xsl:value-of>
                                </li>
                                <li><span class="negreta">Id del seu superior:</span><xsl:value-of
                                        select="reportsTo"></xsl:value-of></li>
                                <li>
                                    <span class="negreta">Posició:</span>
                                    <xsl:value-of select="jobTitle"></xsl:value-of>
                                </li>
                                <li>
                                    <span class="negreta">Oficina amb codi:</span>
                                    <xsl:value-of select="office/@ofCode"></xsl:value-of>
                                </li>
                                <ul class="vermell">
                                    <li>
                                        <span class="negreta">Telèfon:</span>
                                        <xsl:value-of select="office/Phone"></xsl:value-of>
                                    </li>
                                    <li>
                                        <span class="negreta">Adreça:</span>
                                        <xsl:value-of select="office/AddressLine1"></xsl:value-of>
                                        <xsl:text>, </xsl:text>
                                        <xsl:value-of
                                            select="office/AddressLine2"></xsl:value-of>
                                    </li>
                                    <li>
                                        <span class="negreta">Estat:</span>
                                        <xsl:value-of select="office/State"></xsl:value-of>
                                    </li>
                                    <li>
                                        <span class="negreta">País:</span>
                                        <xsl:value-of select="office/Country"></xsl:value-of>
                                    </li>
                                    <li>
                                        <span class="negreta">Codi Postal:</span>
                                        <xsl:value-of select="office/PostalCode"></xsl:value-of>
                                    </li>
                                    <li>
                                        <span class="negreta">Territori:</span>
                                        <xsl:value-of select="office/Territory"></xsl:value-of>
                                    </li>
                                </ul>
                            </ul>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>