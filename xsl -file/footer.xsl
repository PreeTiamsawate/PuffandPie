<!DOCTYPE html-entities SYSTEM "http://www.interwoven.com/livesite/xsl/xsl-html.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Skin: Default XSL -->

	<xsl:include href="http://www.interwoven.com/livesite/xsl/HTMLTemplates.xsl" />
	<xsl:include href="http://www.interwoven.com/livesite/xsl/StringTemplates.xsl" />
	<xsl:template match="/">

        <xsl:element name="section">
            <xsl:attribute name="id">sectionThree</xsl:attribute>
            <xsl:attribute name="class">v41_32 d-flex flex-column justify-content-center align-items-center</xsl:attribute>
            <xsl:attribute name="style">
            background: url(<xsl:value-of select="footer_image" />);
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            </xsl:attribute>
            <xsl:element name="div">
                <xsl:attribute name="id">letsMeetUs</xsl:attribute>
                <xsl:value-of select="footer_text" disable-output-escaping="yes" />
            </xsl:element>
            <xsl:element name="a">
                <xsl:attribute name="class">btn btn-primary btn-lg rounded-pill visitShops-btn</xsl:attribute>
                <xsl:attribute name="href"><xsl:value-of select="button_link" /></xsl:attribute>
                <xsl:attribute name="target"><xsl:value-of select="target_link" /></xsl:attribute>
                <xsl:value-of select="button_text" />
            </xsl:element>
        </xsl:element>

        <footer id="contentFooter" class=" w-100 h-auto pb-5">
            <div class="container h-auto row mx-auto px-0">
                <div
                    class="col-lg-4 col-12 d-flex flex-column align-items-center justify-content-lg-around justify-content-center h-auto">
                    <div>
                        <div class="Contact">Contacts</div>
                        <div class="bar-light mx-auto mb-3"></div>
                    </div>
                    <div class="d-flex justify-content-between w-50 ">
                        <xsl:for-each select="social_link">
                            <xsl:element name="a">
                                <xsl:attribute name="href"><xsl:value-of select="social_link" /></xsl:attribute>
                                <xsl:attribute name="target">_blank</xsl:attribute>
                                <xsl:element name="img">
                                    <xsl:attribute name="class">social-icon</xsl:attribute>
                                    <xsl:attribute name="src"><xsl:value-of select="social_icon" /></xsl:attribute>
                                </xsl:element>
                            </xsl:element>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="col-lg-8 col-12 d-flex flex-column flex-lg-row flex-wrap justify-content-between ">
                    <xsl:for-each select="contact">
                        <xsl:element name="div">
                            <xsl:attribute name="class">h-auto  contacts contactDetail pt-4</xsl:attribute>
                            <xsl:element name="p">
                                <xsl:element name="b">
                                    <xsl:value-of select="contact_title" disable-output-escaping="yes" />
                                </xsl:element>
                            </xsl:element>
                            <xsl:element name="p">
                                <xsl:element name="b">Tel :</xsl:element><xsl:value-of select="contact_tel" disable-output-escaping="yes" />
                                <xsl:element name="br"></xsl:element>
                                <xsl:element name="b">Email :</xsl:element><xsl:value-of select="contact_email" disable-output-escaping="yes" />
                                <xsl:element name="br"></xsl:element>
                                <xsl:element name="b">Address :<xsl:value-of select="contact_address" disable-output-escaping="yes" />
                            </xsl:element>
                        </xsl:element>
                    </xsl:for-each>

                   <!-- <div class="h-auto  contacts contactDetail pt-4">
                        <p><b>Head Office</b> </p>
                        <p> <b>Tel :</b> 02-3758964 <br>
                            <b>Email :</b> xxx@thaiairways.com <br>
                            <b>Address :</b> THAI Catering, Sanambin, Don Mueang, Bangkok 10210
                        </p>
                    </div> -->
                </div>
            </div>
        </footer>

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


<!--Original HTML============================================================ -->
<section id="sectionThree" class="v41_32 d-flex flex-column justify-content-center align-items-center" style="background: url('./images/v41_32.png');background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;">
        <div id="letsMeetUs">Let’s meet us
            in places
        </div>
        <a href="./Map.html" class="btn btn-primary btn-lg rounded-pill visitShops-btn">Visit Shops</a>

    </section>

   

    <footer id="contentFooter" class=" w-100 h-auto pb-5">
        <div class="container h-auto row mx-auto px-0">
            <div
                class="col-lg-4 col-12 d-flex flex-column align-items-center justify-content-lg-around justify-content-center h-auto">
                <div>
                    <div class="Contact">Contact</div>
                    <div class="bar-light mx-auto mb-3"></div>
                </div>
                <div class="d-flex justify-content-between w-50 ">
                    <a href="#"><img class="social-icon" src="./images/v46_26.png"></a>
                    <a href="#"><img class="social-icon" src="./images/v46_27.png"></a>
                    <a href="#"><img class="social-icon" src="./images/v46_28.png"></a>
                    <a href="#"><img class="social-icon" src="./images/v46_29.png"></a>
                </div>
            </div>
            <div class="col-lg-8 d-flex flex-wrap justify-content-between ">

                <div class="h-auto  contacts contactDetail pt-4">
                    <p><b>Head Office</b> </p>
                    <p> <b>Tel :</b> 02-3758964 <br>
                        <b>Email :</b> xxx@thaiairways.com <br>
                        <b>Address :</b> THAI Catering, Sanambin, Don Mueang, Bangkok 10210
                    </p>

                </div>
                <div class="h-auto  contacts contactDetail pt-4">
                    <p><b>Head Office</b> </p>
                    <p> <b>Tel :</b> 02-3758964 <br>
                        <b>Email :</b> xxx@thaiairways.com <br>
                        <b>Address :</b> THAI Catering, Sanambin, Don Mueang, Bangkok 10210
                    </p>

                </div>
                <div class="h-auto  contacts contactDetail pt-4">
                    <p><b>Head Office</b> </p>
                    <p> <b>Tel :</b> 02-3758964 <br>
                        <b>Email :</b> xxx@thaiairways.com <br>
                        <b>Address :</b> THAI Catering, Sanambin, Don Mueang, Bangkok 10210
                    </p>

                </div>
                <div class="h-auto  contacts contactDetail pt-4">
                    <p><b>Head Office</b> </p>
                    <p> <b>Tel :</b> 02-3758964 <br>
                        <b>Email :</b> xxx@thaiairways.com <br>
                        <b>Address :</b> THAI Catering, Sanambin, Don Mueang, Bangkok 10210
                    </p>

                </div>
                <div class="h-auto  contacts contactDetail pt-4">
                    <p><b>Head Office</b> </p>
                    <p> <b>Tel :</b> 02-3758964 <br>
                        <b>Email :</b> xxx@thaiairways.com <br>
                        <b>Address :</b> THAI Catering, Sanambin, Don Mueang, Bangkok 10210
                    </p>

                </div>
                <div class="h-auto  contacts contactDetail pt-4">
                    <p><b>Head Office</b> </p>
                    <p> <b>Tel :</b> 02-3758964 <br>
                        <b>Email :</b> xxx@thaiairways.com <br>
                        <b>Address :</b> THAI Catering, Sanambin, Don Mueang, Bangkok 10210
                    </p>

                </div>

            </div>
        </div>
    </footer>