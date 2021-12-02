<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
  <html>
    <head>
      <title>(ICX0_P1) Learning XML. Un portal web para aprender XML en múltiples formatos</title>
      <meta charset="UTF-8" />
      <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
      <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1,shrink-to-fit=no" />
      <style type="text/css">
          body {
            font-family: sans-serif; font-size: 14px; padding: 20px; background-color: #ffffff; text-align:justify
          }
          h1 {
            font-family: 'Georgia','Times',serif; font-weight: normal;
          }
          h2 {
            font-family: 'Georgia','Times',serif; font-weight: normal;
          }
          h3 {
            font-family: 'Georgia','Times',serif; font-weight: normal;
          }
      </style>
    </head>
    <body>
      <h1>Producto 3. Tranformación XML a HTML</h1>
      <xsl:for-each select="contenido/tema">
        <article>
          <h2><xsl:value-of select="@titulo"/></h2>
          <hr></hr>
          <xsl:for-each select="subtema">
            <h3><xsl:value-of select="@titulo"/></h3>
            <p><xsl:value-of select="texto"/></p>
            <br></br>

        </xsl:for-each>  
        </article>
      </xsl:for-each>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>