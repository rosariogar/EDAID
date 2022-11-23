<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <body>
        <h1>Listado de medicamentos:</h1>
        <ul>
            <xsl:for-each select = "dataset/record">
                <li><h2>Registro: <xsl:value-of select = "NUMERO_DE_REGISTRO"/></h2></li>
                <ul>
                    <li><h3>Información del medicamento</h3></li>
                    <table border = "1">
                        <tr bgcolor="#ff6d6d">
                            <th>Nombre</th>
                            <th>Principios activos</th>
                            <th>Laboratorio</th>
                            <th>Prescripcion</th>
                            <th>Vias de administración</th>
                            <th>Forma farmaucetica</th>
                            <th>Dosis</th>
                            <th>Con receta</th>
                            
                        </tr>
                        <tr>
                            <td><xsl:value-of select = "MEDICAMENTO"/></td>
                            <td><xsl:value-of select = "PRINCIPIOS_ACTIVOS"/></td>
                            <td><xsl:value-of select = "LABORATORIO_TITULAR"/></td>
                            <td><xsl:value-of select = "PRESCRIPCION"/></td>
                            <td><xsl:value-of select = "VIAS_DE_ADMINISTRACION"/></td>
                            <td><xsl:value-of select = "FORMA_FARMACEUTICA"/></td>
                            <td><xsl:value-of select = "DOSIS"/></td>
                            <td><xsl:value-of select = "CON_RECETA"/></td>
                        </tr>
                    </table>
                </ul>
            </xsl:for-each>
        </ul>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>