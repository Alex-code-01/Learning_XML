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
  <body >
    <h1>Producto 3. Tranformación XML a RSS</h1>
      <article>
        <h2><xsl:value-of select="rss/channel/title"/></h2>
        <hr></hr>
        <xsl:for-each select="rss/channel/item">
          <h3><xsl:value-of select="title"/></h3>
          <p>Aquí debería haber el texto</p>
          <br></br>
      </xsl:for-each>  
      </article>
    

    </body>
  </html>
</xsl:template>

</xsl:stylesheet>