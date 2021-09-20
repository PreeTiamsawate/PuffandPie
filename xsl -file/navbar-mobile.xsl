<!DOCTYPE html-entities SYSTEM "http://www.interwoven.com/livesite/xsl/xsl-html.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Skin: Default XSL -->

	<xsl:include href="http://www.interwoven.com/livesite/xsl/HTMLTemplates.xsl" />
	<xsl:include href="http://www.interwoven.com/livesite/xsl/StringTemplates.xsl" />
	<xsl:template match="/">

        <nav id="mobileNavbar" class=" container-fluid  d-block d-md-none fixed-bottom px-0 ">
            <div class="w-100 h-100 row justify-content-evenly mx-0 ">
                <xsl:for-each select="/Properties/Data/Datum/DCR/header/header_menu">  
                    <xsl:element name="a">
                        <xsl:attribute name="class">col-2 px-0 mobile-link</xsl:attribute>
                        <xsl:attribute name="href"><xsl:value-of select="menu_link" /></xsl:attribute>
                        <xsl:attribute name="target"><xsl:value-of select="target_link" /></xsl:attribute>
                        <xsl:element name="img">
                            <xsl:attribute name="class">imgIcon d-block mx-auto</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="image" /></xsl:attribute>
                        </xsl:element>
                        <xsl:element name="img">
                            <xsl:attribute name="class">imgIcon d-none mx-auto</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="image_active" /></xsl:attribute>
                        </xsl:element>
                        <xsl:element name="img">
                            <xsl:attribute name="class">imgIcon d-none mx-auto</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="image_focus" /></xsl:attribute>
                        </xsl:element>
                        <xsl:element name="div">
                            <xsl:attribute name="class">textIcon w-100</xsl:attribute>
                            <xsl:value-of select="menu_name" />
                        </xsl:element>
                    </xsl:element>    
                </xsl:for-each>  
                
            </div>
        </nav>

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

