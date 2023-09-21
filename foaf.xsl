<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:foaf="http://xmlns.com/foaf/0.1/">

  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>FOAF Profile</title>
      </head>
      <body>
        <h1>FOAF Profile</h1>
        <xsl:apply-templates select="foaf:Person"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="foaf:Person">
    <div>
      <h2>Personal Information</h2>
      <p><strong>Name:</strong> <xsl:value-of select="foaf:name"/></p>
      <p><strong>Age:</strong> <xsl:value-of select="foaf:age"/></p>
    </div>
  </xsl:template>

</xsl:stylesheet>
