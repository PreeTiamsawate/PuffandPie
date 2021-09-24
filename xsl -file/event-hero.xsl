<!DOCTYPE html-entities SYSTEM "http://www.interwoven.com/livesite/xsl/xsl-html.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Skin: Default XSL -->

	<xsl:include href="http://www.interwoven.com/livesite/xsl/HTMLTemplates.xsl" />
	<xsl:include href="http://www.interwoven.com/livesite/xsl/StringTemplates.xsl" />
	<xsl:template match="/">
        <!-- Section one Desktop==================================================================== -->
        <xsl:element name="section">
            <xsl:attribute name="id">sectionOneEvent</xsl:attribute>
            <xsl:attribute name="class">d-none d-md-block</xsl:attribute>
            <xsl:attribute name="style">
                background: linear-gradient(
                360deg,#000000 -0.26%,rgba(0, 0, 0, 0.25) 47.14%),
                url(<xsl:value-of select="/Properties/Data/Datum/DCR/event/hero_image" />); 
                background-repeat: no-repeat; 
                background-position: center center; 
                background-size:
                cover;
            </xsl:attribute>
            <div class="container">
                <h1 id="Events" class="mx-auto mb-lg-2  mb-1 d-md-block d-none ">
                    <xsl:value-of select="/Properties/Data/Datum/DCR/event/hero_header" disable-output-escaping="yes" />
                </h1>
                <div class="bar-light-long ms-2 mx-md-auto my-1  my-md-3 d-md-block d-none"></div>
                <div id="contentOneEvent" class="mx-auto h-auto d-md-block d-none">
                    <h2 id="crafted">
                        <xsl:value-of select="/Properties/Data/Datum/DCR/event/hero_title" disable-output-escaping="yes" />
                    </h2>
                    <div id="bar-superLong" class="w-100 my-3"></div> 
                </div>
            </div>
        </xsl:element>
        
        <!-- Section One for Mobile==================================================================== -->
        <xsl:element name="section">
            <xsl:attribute name="id">sectionOneEvent-mobile</xsl:attribute>
            <xsl:attribute name="class">d-md-none</xsl:attribute>
            <xsl:attribute name="style">
                background: linear-gradient(180deg, #000000 0%, rgba(61, 34, 17, 0.29) 60.42%),
                url(<xsl:value-of select="/Properties/Data/Datum/DCR/event/hero_image_mobile" />);
                background-size: cover;
            </xsl:attribute>
            <div class="container">
                <h1 id='newMenu' class="mx-auto d-md-none d-block ">
                    <xsl:value-of select="/Properties/Data/Datum/DCR/event/hero_title_mobile" disable-output-escaping="yes" />
                </h1>
            </div>
        </xsl:element>
    </xsl:template>

<xsl:template name="addLink">
    <xsl:param name="linkUrl" />
    <xsl:choose>
        <xsl:when test="starts-with($linkUrl,'/sites')">
            <xsl:variable name="beforepagesubmenu">
                <xsl:value-of select="substring-before($linkUrl, '.page')" />
            </xsl:variable>
            <xsl:variable name="url"
                select="substring-after(substring-after(substring-after($beforepagesubmenu,'/'),'/'),'/')" />
            <xsl:value-of select="concat('$PAGE_LINK[',$url,']')" />
        </xsl:when>
        <xsl:when test="starts-with($linkUrl,'/static') or starts-with($linkUrl,'/html')">
            <xsl:value-of select="concat('$URL_PREFIX[',$linkUrl,']')" />
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="$linkUrl" />
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
</xsl:stylesheet> 