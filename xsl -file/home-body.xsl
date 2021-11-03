<!DOCTYPE html-entities SYSTEM "http://www.interwoven.com/livesite/xsl/xsl-html.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Skin: Default XSL -->

	<xsl:include href="http://www.interwoven.com/livesite/xsl/HTMLTemplates.xsl" />
	<xsl:include href="http://www.interwoven.com/livesite/xsl/StringTemplates.xsl" />
	<xsl:template match="/">

        <section id="sectionTwo" style="margin-top: -35px">
            <div class="container mx-auto  row">
                <div class="d-md-none my-3">
                    <xsl:element name="h2">
                        <xsl:attribute name="id">body-header-mobile</xsl:attribute>
                        <xsl:attribute name="class">mt-2 mb-2</xsl:attribute>
                        <xsl:value-of select="/Properties/Data/Datum/DCR/body_homepage/header_text_mobile" disable-output-escaping="yes" />
                    </xsl:element>
                   
                    <div class="bar-light-mobile"></div>
                </div>

                <div class="col-md-6 col-lg-4 d-none d-md-inline-block contentTwo">
                    <xsl:element name="h2">
                        <xsl:attribute name="id">body-header</xsl:attribute>
                        <xsl:value-of select="/Properties/Data/Datum/DCR/body_homepage/header_text" disable-output-escaping="yes" />
                    </xsl:element>
                   
                    <div class="bar-dark  ms-0"></div>
                    <div id="body-paragraph" class=" pe-md-5 pe-lg-1">
                        <xsl:element name="p">
                            <xsl:attribute name="id">body-paragraph</xsl:attribute>
                            <xsl:attribute name="class">pe-md-5 pe-lg-1</xsl:attribute>
                            <xsl:value-of select="/Properties/Data/Datum/DCR/body_homepage/content_text" disable-output-escaping="yes" />
                        </xsl:element>
                    </div>

                     <xsl:element name="button">
                        <xsl:attribute name="class">btn btn-lg rounded-pill grabMe-btn</xsl:attribute>
                        <xsl:attribute name="data-bs-toggle">modal</xsl:attribute>
                        <xsl:attribute name="data-bs-target">#modal-rider</xsl:attribute>
                        Grab Me!
                    </xsl:element>
                </div>
                <div
                    class="col-md-3 col-lg-4 col-6 ps-0 pe-1 px-md-auto contentTwo d-flex flex-column align-items-end justify-content-md-start justify-content-end ">
                    
                        <xsl:element name="a">
                            <xsl:attribute name="class">foodLink my-1 my-md-3</xsl:attribute>
                            
                            <xsl:attribute name="href">
                                <xsl:value-of select="/Properties/Data/Datum/DCR/body_homepage/image1_link" />
                            </xsl:attribute>
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="/Properties/Data/Datum/DCR/body_homepage/image1" />
                                </xsl:attribute>
                                <xsl:attribute name="class">img-link</xsl:attribute>
                            </xsl:element>
                        </xsl:element>


                        <xsl:element name="a">
                            <xsl:attribute name="class">foodLink my-1 my-md-3</xsl:attribute>
                            
                            <xsl:attribute name="href">
                                <xsl:value-of select="/Properties/Data/Datum/DCR/body_homepage/image2_link" />
                            </xsl:attribute>
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="/Properties/Data/Datum/DCR/body_homepage/image2" />
                                </xsl:attribute>
                                <xsl:attribute name="class">img-link</xsl:attribute>
                            </xsl:element>
                        </xsl:element>
                   
                   


                </div>
                <div
                    class="col-md-3 col-lg-4 col-6 pe-0 ps-1 px-md-auto contentTwo d-flex flex-column align-items-start justify-content-md-end justify-content-start">
                    
                        <xsl:element name="a">
                            <xsl:attribute name="class">foodLink my-1 my-md-3</xsl:attribute>
                            
                            <xsl:attribute name="href">
                                <xsl:value-of select="/Properties/Data/Datum/DCR/body_homepage/image3_link" />
                            </xsl:attribute>
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="/Properties/Data/Datum/DCR/body_homepage/image3" />
                                </xsl:attribute>
                                <xsl:attribute name="class">img-link</xsl:attribute>
                            </xsl:element>
                        </xsl:element>
                        <xsl:element name="a">
                            <xsl:attribute name="class">foodLink my-1 my-md-3</xsl:attribute>
                            
                            <xsl:attribute name="href">
                                <xsl:value-of select="/Properties/Data/Datum/DCR/body_homepage/image4_link" />
                            </xsl:attribute>
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="/Properties/Data/Datum/DCR/body_homepage/image4" />
                                </xsl:attribute>
                                <xsl:attribute name="class">img-link</xsl:attribute>
                            </xsl:element>
                        </xsl:element>
                    
                   

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

