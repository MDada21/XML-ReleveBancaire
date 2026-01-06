<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h3>Liste des Crédits</h3>
                <ul>
                    <xsl:for-each select="releve/operations/operation[@type='CREDIT']">
                        <li>
                            Date: <xsl:value-of select="@date"/> - 
                            Montant: <xsl:value-of select="@montant"/> - 
                            Description: <xsl:value-of select="@description"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>