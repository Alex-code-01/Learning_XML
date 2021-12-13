<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <speak version="1.0" xlmns="http://www.w3.org/2001/10/synthesis" xml:lang="es-ES">
        <voice name="es-ES-ElviraNeural">
          <xsl:for-each select="contenido/tema">
            <s><prosody pitch="medium"><xsl:value-of select="@titulo"/></prosody><break strength="strong"/></s>
              <xsl:for-each select="subtema">
                <s><prosody pitch="low"><xsl:value-of select="@titulo"/></prosody><break strength="weak"/></s>
                <s><prosody pitch="high"><xsl:value-of select="texto"/></prosody><break strength="x-strong"/></s>
              </xsl:for-each>  
          </xsl:for-each>
        </voice>
    </speak>
</xsl:template>
</xsl:stylesheet>