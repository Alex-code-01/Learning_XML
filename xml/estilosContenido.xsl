<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h1>Producto 3. Tranformación XML a HTML</h1>
    <xsl:for-each select="contenido/tema">
      <article>
        <h2><xsl:value-of select="@titulo"/></h2>
        <xsl:for-each select="subtema">
          <h3><xsl:value-of select="@titulo"/></h3>
          <p><xsl:value-of select="texto"/></p>
      </xsl:for-each>  
      </article>
    </xsl:for-each>

    </body>
  </html>
</xsl:template>

</xsl:stylesheet>