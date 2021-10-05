<!DOCTYPE html-entities SYSTEM "http://www.interwoven.com/livesite/xsl/xsl-html.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Skin: Default XSL -->

	<xsl:include href="http://www.interwoven.com/livesite/xsl/HTMLTemplates.xsl" />
	<xsl:include href="http://www.interwoven.com/livesite/xsl/StringTemplates.xsl" />
	<xsl:template match="/">

        <xsl:for-each select="/Properties/Data/Datum/DCR/body_content1/body_content_container">
            <xsl:variable name="position">
                <xsl:value-of select="position()" />
            </xsl:variable>
            <xsl:choose>
                <xsl:when test="($position mod 2) = 1">
                    <section class="sectionMeal py-lg-5 py-md-3 py-2 w-100 h-auto">
                        <div class="container mx-auto row">
                            <div class="col-md-6 col-0 d-md-block d-none ">
                                <div class="position-relative w-50 h-auto mt-5">
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="image1" />
                                        </xsl:attribute>
                                        <xsl:attribute name="class">pic-sm</xsl:attribute>
                                    </xsl:element>
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="image2" />
                                        </xsl:attribute>
                                        <xsl:attribute name="class">position-absolute top-50 start-50 pic-lg</xsl:attribute>
                                    </xsl:element>
                                </div>
                            </div>
                            <div class="col-md-6 col-12 px-0 px-md-2 overflow-visible">
                                <h2 class="quoteDark mt-md-4 mb-lg-5 my-3 d-md-block d-none">
                                    <xsl:value-of select="header_text" disable-output-escaping="yes" />
                                </h2>
                                <div class="bar-dark d-md-block d-none"></div>
                                <p class="detailEng my-md-4 my-2  d-lg-block d-none">
                                   <xsl:value-of select="content_text" disable-output-escaping="yes" />
                                </p>
                                <!-- <div class="deatailThai  d-lg-block d-none">
                                   <xsl:value-of select="content_text_th" disable-output-escaping="yes" />
                                </div> -->
                                <h2 class="menu-header-mobile-dark d-block d-md-none mb-1 ms-2">
                                    <xsl:value-of select="slider_topic" disable-output-escaping="yes" />
                                </h2>
                                <div class="bar-dark-mobile  d-block d-md-none ms-2"></div>
                                <div id="appetizerBox" class="d-flex flex-row overflow-auto scroll-box-short my-md-5 my-2 ">
                                    <xsl:for-each select="product_image_container">
                                        <xsl:element name="div">
                                            <xsl:attribute name="class">card-small flex-shrink-0 mx-2</xsl:attribute>
                                            <xsl:attribute name="data-bs-toggle">modal</xsl:attribute>
                                            <xsl:attribute name="data-bs-target">#modal-product</xsl:attribute>
                                            <xsl:element name="img">
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="menu_image" />
                                                </xsl:attribute>
                                                <xsl:attribute name="class">d-block card-img-small</xsl:attribute>
                                            </xsl:element>
                                            <xsl:element name="div">
                                                <xsl:attribute name="class">card-text w-100 h-auto pt-1 ps-1</xsl:attribute>
                                                <xsl:element name="h4">
                                                    <xsl:attribute name="class">card-name-small pb-1</xsl:attribute>
                                                    <xsl:value-of select="menu_name" disable-output-escaping="yes" />
                                                </xsl:element>
                                                <xsl:element name="h5">
                                                    <xsl:attribute name="class">card-name-thai-small float-start</xsl:attribute>
                                                    <xsl:value-of select="menu_name_th" disable-output-escaping="yes" />
                                                </xsl:element>
                                                <xsl:element name="span">
                                                    <xsl:attribute name="class">card-price-small float-end</xsl:attribute>
                                                    <xsl:value-of select="menu_price" disable-output-escaping="yes" />
                                                </xsl:element>
                                            </xsl:element>
                                            <xsl:element name="p">
                                                <xsl:attribute name="class">ingredient d-none</xsl:attribute>
                                                <xsl:value-of select="menu_ingredient" disable-output-escaping="yes" />
                                            </xsl:element>
                                            <xsl:element name="p">
                                                <xsl:attribute name="class">productDetail d-none</xsl:attribute>
                                                <xsl:value-of select="menu_detail" disable-output-escaping="yes" />
                                            </xsl:element>
                                            <xsl:element name="p">
                                                <xsl:attribute name="class">preservation d-none</xsl:attribute>
                                                <xsl:value-of select="menu_preservation" disable-output-escaping="yes" />
                                            </xsl:element>
                                        </xsl:element>
                                    </xsl:for-each>
                                </div>
                                <xsl:element name="button">
                                    <xsl:attribute name="class">btn btn-lg rounded-pill grabMe-btn d-md-block d-none</xsl:attribute>
                                    <xsl:attribute name="data-bs-toggle">modal</xsl:attribute>
                                    <xsl:attribute name="data-bs-target">#modal-rider</xsl:attribute>
                                    Grab Me!
                                </xsl:element>
                               
                            </div>
                        </div>
                    </section>    
                </xsl:when>
                <xsl:otherwise>
                    <section class="sectionMeal py-md-5  py-2 w-100 h-auto">
                        <div class="container mx-auto row">
                            <div class="col-md-6 col-12 px-0 px-md-2 overflow-visible">
                                <h2 class="quoteDark mt-md-2 mb-lg-5 my-2 text-end d-md-block d-none ">
                                    <xsl:value-of select="header_text" disable-output-escaping="yes" />
                                </h2>
                                <div class="bar-dark ms-md-auto d-md-block d-none "></div>
                                <p class="detailEng my-md-4 my-2 text-end  d-lg-block d-none ">
                                    <xsl:value-of select="content_text" disable-output-escaping="yes" />
                                </p>
                                <!-- <div class="deatailThai text-end  d-lg-block d-none ">
                                    <xsl:value-of select="content_text_th" disable-output-escaping="yes" />
                                </div> -->
                                <h2 class="menu-header-mobile-dark d-block d-md-none mb-1 ms-2">
                                    <xsl:value-of select="slider_topic" disable-output-escaping="yes" />>
                                </h2>
                                <div class="bar-dark-mobile  d-block d-md-none ms-2"></div>
                                <div id="mainCourseBox"
                                    class="d-flex flex-row overflow-auto scroll-box-short scroll-end my-lg-5 my-4  float-md-end ">
                                    <xsl:for-each select="product_image_container">
                                        <xsl:element name="div">
                                            <xsl:attribute name="class">card-small flex-shrink-0 mx-2</xsl:attribute>
                                            <xsl:attribute name="data-bs-toggle">modal</xsl:attribute>
                                            <xsl:attribute name="data-bs-target">#modal-product</xsl:attribute>
                                            <xsl:element name="img">
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="menu_image" />
                                                </xsl:attribute>
                                                <xsl:attribute name="class">d-block card-img-small</xsl:attribute>
                                            </xsl:element>
                                            <xsl:element name="div">
                                                <xsl:attribute name="class">card-text w-100 h-auto pt-1 ps-1</xsl:attribute>
                                                <xsl:element name="h4">
                                                    <xsl:attribute name="class">card-name-small pb-1</xsl:attribute>
                                                    <xsl:value-of select="menu_name" disable-output-escaping="yes" />
                                                </xsl:element>
                                                <xsl:element name="h5">
                                                    <xsl:attribute name="class">card-name-thai-small float-start</xsl:attribute>
                                                    <xsl:value-of select="menu_name_th" disable-output-escaping="yes" />
                                                </xsl:element>
                                                <xsl:element name="span">
                                                    <xsl:attribute name="class">card-price-small float-end</xsl:attribute>
                                                    <xsl:value-of select="menu_price" disable-output-escaping="yes" />
                                                </xsl:element>
                                            </xsl:element>
                                            <xsl:element name="p">
                                                <xsl:attribute name="class">ingredient d-none</xsl:attribute>
                                                <xsl:value-of select="menu_ingredient" disable-output-escaping="yes" />
                                            </xsl:element>
                                            <xsl:element name="p">
                                                <xsl:attribute name="class">productDetail d-none</xsl:attribute>
                                                <xsl:value-of select="menu_detail" disable-output-escaping="yes" />
                                            </xsl:element>
                                            <xsl:element name="p">
                                                <xsl:attribute name="class">preservation d-none</xsl:attribute>
                                                <xsl:value-of select="menu_preservation" disable-output-escaping="yes" />
                                            </xsl:element>
                                        </xsl:element>
                                    </xsl:for-each>
                                </div>
                                <xsl:element name="button">
                                    <xsl:attribute name="class">btn btn-lg rounded-pill grabMe-btn d-md-block d-none float-md-end</xsl:attribute>
                                    <xsl:attribute name="data-bs-toggle">modal</xsl:attribute>
                                    <xsl:attribute name="data-bs-target">#modal-rider</xsl:attribute>
                                    Grab Me!
                                </xsl:element>
                               
                            </div>
                            <div class="col-md-6 col-0 d-md-block d-none ">
                                <div class="position-relative w-50 h-auto mt-3 ms-5 ps-5">
                                    <xsl:element name="img">
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="image1" />
                                                </xsl:attribute>
                                                <xsl:attribute name="class">position-absolute top-50 start-50 pic-lg</xsl:attribute>
                                                <xsl:attribute name="style">object-fit: cover;</xsl:attribute>
                                            </xsl:element>
                                            <xsl:element name="img">
                                                <xsl:attribute name="src">
                                                   <xsl:value-of select="image2" />
                                                </xsl:attribute>
                                                <xsl:attribute name="class">pic-sm</xsl:attribute>
                                    </xsl:element>
                                </div>
                            </div>
                        </div>
                    </section>

                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
        
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
