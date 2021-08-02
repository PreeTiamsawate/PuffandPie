<!DOCTYPE html-entities SYSTEM "http://www.interwoven.com/livesite/xsl/xsl-html.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Skin: Default XSL -->

	<xsl:include href="http://www.interwoven.com/livesite/xsl/HTMLTemplates.xsl" />
	<xsl:include href="http://www.interwoven.com/livesite/xsl/StringTemplates.xsl" />
	<xsl:template match="/">
        <xsl:element name="section">
            <xsl:attribute name="class">
                v41_32 d-flex flex-column justify-content-center align-items-center
            </xsl:attribute>
            <xsl:attribute name="style">
                background: url(?????? );
                background-repeat: no-repeat;
                background-position: center center;
                background-size: cover;
            </xsl:attribute>
            <xsl:element name="h1">
                <xsl:attribute name="id">visitOurShops</xsl:attribute>
                Visit Our Shops       
            </xsl:element>
        </xsl:element>

        <section id="shops" class=" h-auto w-100 py-lg-4 py-2 ps-md-5 ps-2">
            <!-- <div class="place-box mx-lg-5 px-lg-5 px-0 mx-2 my-4">
                <h2 class="place-box-header">
                    On the Go
                </h2>
                <div class="bar-light-small mt-2"></div>
                <div id="toGoShopParent" class="d-flex flex-row overflow-auto scroll-box-shops my-2 p-0 mt-3 ">
                    <xsl:for-each select="branches-onthego">
                        <xsl:element name="div">
                            <xsl:attribute name="class">
                                toGoShop card-shops-small flex-shrink-0 mx-2 position-relative
                            </xsl:attribute>
                            <xsl:attribute name="latitude">
                                <xsl:value-of select="shop_lat" />
                            </xsl:attribute>
                            <xsl:attribute name="longitude">
                                <xsl:value-of select="shop_lon" />
                            </xsl:attribute>
                            <xsl:attribute name="mapIframe">
                                <xsl:value-of select="map_url" />
                            </xsl:attribute>
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="shop_image" />
                                </xsl:attribute>
                                <xsl:attribute name="class">
                                    d-block card-img-shop
                                </xsl:attribute>
                            </xsl:element>
                            <xsl:element name="div">
                                <xsl:attribute name="class">
                                    card-text-shop d-flex justify-content-between  align-items-end  w-100 h-auto pt-1 position-absolute bottom-0
                                </xsl:attribute>
                                <xsl:element name="span">
                                    <xsl:attribute name="class">float-start ps-1 col-9 mt-1</xsl:attribute>
                                    <xsl:element name="div">
                                        <xsl:attribute name="class">shop</xsl:attribute>
                                        <xsl:value-of select="shop_name" disable-output-escaping="yes" />
                                    </xsl:element>
                                    <xsl:element name="div">
                                        <xsl:attribute name="class">branch mt-1</xsl:attribute>
                                        <xsl:value-of select="shop_branch" disable-output-escaping="yes" />
                                    </xsl:element>
                                </xsl:element>
                                <xsl:element name="span">
                                    <xsl:attribute name="class">
                                        float-end  col-3 mb-1
                                    </xsl:attribute>
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">./images/placeholder.png</xsl:attribute>
                                        <xsl:attribute name="class">location-pin  me-2"</xsl:attribute>
                                    </xsl:element>
                                    <xsl:element name="div">
                                        <xsl:attribute name="class">distance mt-1</xsl:attribute>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:element>
                        </xsl:element>
                    </xsl:for-each>
                </div>
                <div id="toGo-map" class="w-100">
                    
                </div>
            </div> -->
            <div class="place-box mx-lg-5 px-lg-5 px-0 mx-2 my-4">
                <h2 class="place-box-header">
                    Our Shops
                </h2>
                <div class="bar-light-small mt-2"></div>
                <div id="sitInShopParent" class="d-flex flex-row overflow-auto scroll-box-shops my-2 p-0 mt-3 ">
                    <xsl:for-each select="branched-sitin">
                        <xsl:element name="div">
                            <xsl:attribute name="class">
                                sitInShop card-shops-small flex-shrink-0 mx-2 position-relative
                            </xsl:attribute>
                            <xsl:attribute name="latitude">
                                <xsl:value-of select="shop_lat" />
                            </xsl:attribute>
                            <xsl:attribute name="longitude">
                                <xsl:value-of select="shop_lon" />
                            </xsl:attribute>
                            <xsl:attribute name="mapIframe">
                                <xsl:value-of select="map_url" />
                            </xsl:attribute>
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="shop_image" />
                                </xsl:attribute>
                                <xsl:attribute name="class">
                                    d-block card-img-shop
                                </xsl:attribute>
                            </xsl:element>
                            <xsl:element name="div">
                                <xsl:attribute name="class">
                                    card-text-shop d-flex justify-content-between  align-items-end   w-100 h-auto pt-1 position-absolute bottom-0
                                </xsl:attribute>
                                <xsl:element name="span">
                                    <xsl:attribute name="class">float-start ps-1 col-9 mt-1</xsl:attribute>
                                    <xsl:element name="div">
                                        <xsl:attribute name="class">shop</xsl:attribute>
                                        <xsl:value-of select="shop_name" disable-output-escaping="yes" />
                                    </xsl:element>
                                    <xsl:element name="div">
                                        <xsl:attribute name="class">branch mt-1</xsl:attribute>
                                        <xsl:value-of select="shop_branch" disable-output-escaping="yes" />
                                    </xsl:element>
                                </xsl:element>
                                <xsl:element name="span">
                                    <xsl:attribute name="class">
                                        float-end col-3 mb-1
                                    </xsl:attribute>
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">./images/placeholder.png</xsl:attribute>
                                        <xsl:attribute name="class">location-pin  me-2"</xsl:attribute>
                                    </xsl:element>
                                    <xsl:element name="div">
                                        <xsl:attribute name="class">distance mt-1</xsl:attribute>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:element>
                        </xsl:element>

                    </xsl:for-each>
                    
                </div>
                <div id="sitIn-map" class="w-100">

                    <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d247882.7721857162!2d100.531706!3d13.888882000000002!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf2e5b57efdfc73bf!2sPuff%20and%20Pie!5e0!3m2!1sen!2sth!4v1623655028026!5m2!1sen!2sth" width="600" height="450" style="border:1;" allowfullscreen="" loading="lazy"></iframe> -->
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
