<?xml version='1.0'?>
<xsl:stylesheet version='1.0'
xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
<xsl:output method="xml" indent="yes" />
<xsl:template match="/">

<!-- Create the HTML Code for this stylesheet. -->
<HTML>
<HEAD>
    <TITLE>Another Performance Monitor View</TITLE>
</HEAD>

<BODY>
<H3 ALIGN="Center">Performance Monitor Results</H3>
<P ALIGN="Center">Version 2</P>

<TABLE BORDER="2">
    <TR bgcolor="#C0C0FF">
        <TH>Entry</TH>
        <TH>Time</TH>
        <TH>Percent User Time Value</TH>
        <TH>Entry</TH>
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
    <xsl:if test="position() mod 2 = 1">
        <xsl:text disable-output-escaping = "yes">
            &lt;TR&gt;
        </xsl:text>
    </xsl:if>
        <TD>
            <xsl:value-of select="position()"/>
        </TD>
        <TD>
            <xsl:value-of select="Time"/>
        </TD>
        <TD>
            <xsl:value-of select="Data"/>
        </TD>
    <xsl:if test="position() mod 2 = 0">
        <xsl:text disable-output-escaping = "yes">
            &lt;/TR&gt;
        </xsl:text>
    </xsl:if>
</xsl:template>

</xsl:stylesheet>
