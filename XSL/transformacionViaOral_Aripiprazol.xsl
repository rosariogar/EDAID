<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Listado de medicamentos con via de administracion oral y empiezen por aripiprazol</h1>
                <ul>
                    <xsl:for-each select="dataset/record">
                        <xsl:if test="starts-with(MEDICAMENTO,'ARIPIPRAZOL') ">
                            <xsl:if test="contains(VIAS_DE_ADMINISTRACION,'VIA ORAL') ">
                                <li>
                                    <h3> Informacion del medicamento </h3>
                                    <table border="1">
                                        <tr bgcolor="#ff6d6d">
                                            <th> Numero de Registro</th>
                                            <th> Nombre del medicamento</th>
                                            <th> Via de Administración </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <xsl:value-of select="NUMERO_DE_REGISTRO" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="MEDICAMENTO" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="VIAS_DE_ADMINISTRACION" />
                                            </td>
                                        </tr>

                                    </table>
                                </li>
                            </xsl:if>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>