<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head><title>Relevé Bancaire</title></head>
            <body>
                <h2>Relevé du RIB : <xsl:value-of select="releve/@RIB"/></h2>
                <p>Date : <xsl:value-of select="releve/dateReleve"/></p>
                <table border="1">
                    <tr>
                        <th>Date</th><th>Type</th><th>Description</th><th>Montant</th>
                    </tr>
                    <xsl:for-each select="releve/operations/operation">
                        <tr>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="@type"/></td>
                            <td><xsl:value-of select="@description"/></td>
                            <td><xsl:value-of select="@montant"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <p>Total Crédits : <b><xsl:value-of select="sum(releve/operations/operation[@type='CREDIT']/@montant)"/></b></p>
                <p>Total Débits : <b><xsl:value-of select="sum(releve/operations/operation[@type='DEBIT']/@montant)"/></b></p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>