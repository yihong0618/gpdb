<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version='1.0'
                xmlns="http://www.w3.org/TR/xhtml1/transitional"
                exclude-result-prefixes="#default">

<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/chunk.xsl"/>
<xsl:include href="stylesheet-common.xsl" />


<!-- Parameters -->
<xsl:param name="base.dir" select="'html/'"></xsl:param>
<xsl:param name="html.stylesheet" select="'stylesheet.css'"></xsl:param>
<xsl:param name="use.id.as.filename" select="'1'"></xsl:param>
<xsl:param name="make.valid.html" select="1"></xsl:param>
<xsl:param name="generate.id.attributes" select="1"></xsl:param>
<xsl:param name="generate.legalnotice.link" select="1"></xsl:param>
<xsl:param name="link.mailto.url">pgsql-docs@postgresql.org</xsl:param>
<xsl:param name="chunker.output.indent" select="'yes'"/>
<xsl:param name="chunk.quietly" select="1"></xsl:param>
<xsl:param name="toc.max.depth">2</xsl:param>


<!-- Change display of some elements -->

<xsl:template match="command">
  <xsl:call-template name="inline.monoseq"/>
</xsl:template>

<!--
  Format multiple terms in varlistentry vertically, instead
  of comma-separated.
 -->

<xsl:template match="varlistentry/term[position()!=last()]">
  <span class="term">
    <xsl:call-template name="anchor"/>
    <xsl:apply-templates/>
  </span><br/>
</xsl:template>


<!-- table of contents configuration -->

<xsl:param name="generate.toc">
appendix  toc,title
article/appendix  nop
article   toc,title
book      toc,title
chapter   toc,title
part      toc,title
preface   toc,title
qandadiv  toc
qandaset  toc
reference toc,title
sect1     toc
sect2     toc
sect3     toc
sect4     toc
sect5     toc
section   toc
set       toc,title
</xsl:param>

</xsl:stylesheet>
