<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Listado de medicamentos recubiertos con pelicula de dosis de 500 mg ordenados alfabeticamente</h1>
                <ul>
                    <xsl:for-each select="dataset/record">
                    <xsl:sort order="ascending" select="MEDICAMENTO"/>
                        <xsl:if test="contains(FORMA_FARMACEUTICA,'COMPRIMIDO RECUBIERTO CON PELICULA') ">
                            <xsl:if test="contains(DOSIS,'500 mg') ">
                                <li>
                                    <h3> Informacion del medicamento </h3>
                                    <table border="1">
                                        <tr bgcolor="#ff6d6d">
                                            <th> Numero de Registro</th>
                                            <th> Nombre del medicamento</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <xsl:value-of select="NUMERO_DE_REGISTRO"/>
                                            </td>
                                            <td>
                                                 <xsl:value-of select="MEDICAMENTO"/>
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