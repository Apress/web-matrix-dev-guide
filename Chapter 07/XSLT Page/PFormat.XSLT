<?xml version='1.0'?>
<xsl:stylesheet version='1.0'
xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
<xsl:output method="xml" indent="yes" />
<xsl:template match="/">

<!-- Create the HTML Code for this stylesheet. -->
<HTML>
<HEAD>
   <TITLE>Remote Performance Monitor</TITLE>
</HEAD>

<BODY>
<CENTER><H3>Performance Monitor Results</H3></CENTER>

<TABLE BORDER="2">
   <TR>
      <TH>Time</TH>
      <TH>Percent User Time Value</TH>
   </TR>
      <xsl:apply-templates select="//Item"/>
</TABLE>

</BODY>
</HTML>
</xsl:template>

<!-- XSL template section that describes table content. -->

<xsl:template match="Item">
   <TR>
      <TD>
         <xsl:value-of select="Time"/>
      </TD>
      <TD>
         <xsl:value-of select="Data"/>
      </TD>
   </TR>
</xsl:template>

</xsl:stylesheet>