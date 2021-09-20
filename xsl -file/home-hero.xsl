<!DOCTYPE html-entities SYSTEM "http://www.interwoven.com/livesite/xsl/xsl-html.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Skin: Default XSL -->

	<xsl:include href="http://www.interwoven.com/livesite/xsl/HTMLTemplates.xsl" />
	<xsl:include href="http://www.interwoven.com/livesite/xsl/StringTemplates.xsl" />
	<xsl:template match="/">
        <!-- Desktop and Tablet Hero=================================== -->
        <xsl:element name="section">
            <xsl:attribute name="id">sectionOneHome</xsl:attribute>
            <xsl:attribute name="class">d-none d-md-block</xsl:attribute>
            <xsl:attribute name="style">
                background: url(<xsl:value-of select="/Properties/Data/Datum/DCR/hero_banner_home/image_banner" />);
                background-repeat: no-repeat;
                background-position: center center;
                background-size: cover;
            </xsl:attribute>
            <div class="container">
                <div class=" mx-5 " id="contentOne">
                    <xsl:element name="h1">
                        <xsl:attribute name="id">goodMorning</xsl:attribute>
                        <xsl:value-of select="/Properties/Data/Datum/DCR/hero_banner_home/header_text" disable-output-escaping="yes" />
                    </xsl:element>
                    <div class="bar-light mt-lg-3 mb-4"></div>
                    <xsl:element name="p">
                        <xsl:attribute name="id">weGetYou</xsl:attribute>
                        <xsl:attribute name="class">d-none d-lg-block</xsl:attribute>
                        <xsl:value-of select="/Properties/Data/Datum/DCR/hero_banner_home/content_text" disable-output-escaping="yes" />
                    </xsl:element>
                    <xsl:element name="button">
                        <xsl:attribute name="class">btn btn-lg rounded-pill grabMe-btn</xsl:attribute>
                        <xsl:attribute name="data-bs-toggle">
                            modal
                        </xsl:attribute>
                        <xsl:attribute name="data-bs-target">
                            #modal-rider
                        </xsl:attribute>
                       Grab Me!
                    </xsl:element>
                </div>
            </div>
        </xsl:element>

   
        <!-- Mobile Hero=================================== -->
        <section id="sectionOneHomeMobile" class="d-block d-md-none w-100 d-block h-auto pb-4 ">
            <div class="container ">
                
                <xsl:element name="img">
                    <xsl:attribute name="class">d-block mb-2 logo-home-mobile</xsl:attribute>
                    <xsl:attribute name="src">
                        <xsl:value-of select="/Properties/Data/Datum/DCR/hero_banner_home/image_banner_mobile" />
                    </xsl:attribute>
                </xsl:element>
             
               
                <div id="promotion-scroll" class="d-flex flex-row overflow-auto h-auto">
                    <xsl:for-each select="/Properties/Data/Datum/DCR/hero_banner_home/hero_banner_home_mobile">
                        <xsl:element name="div">
                            <xsl:attribute name="class">promotion-card flex-shrink-0 mx-2 position-relative</xsl:attribute>
                            <xsl:element name="img">
                                <xsl:attribute name="class">d-block w-100 h-100 promotion-card-img</xsl:attribute>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="image_banner" />
                                </xsl:attribute>
                            </xsl:element>
                            <xsl:element name="h2">
                                <xsl:attribute name="class">promotion-card-text w-100 position-absolute bottom-0 ps-3 m-0</xsl:attribute>
                                <xsl:value-of select="title_banner" disable-output-escaping="yes" />
                            </xsl:element>
                        </xsl:element>
                    </xsl:for-each>
                </div>
            </div>
        </section>
            

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

    