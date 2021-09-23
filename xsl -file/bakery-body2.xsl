<!DOCTYPE html-entities SYSTEM "http://www.interwoven.com/livesite/xsl/xsl-html.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Skin: Default XSL -->

	<xsl:include href="http://www.interwoven.com/livesite/xsl/HTMLTemplates.xsl" />
	<xsl:include href="http://www.interwoven.com/livesite/xsl/StringTemplates.xsl" />
	<xsl:template match="/">
     <!-- Patongko Sections=================================================================== -->
        <xsl:element name="section">
            <xsl:attribute name="class">
                narrow-section d-flex flex-column h-auto justify-content-around   align-items-center
            </xsl:attribute>
            <xsl:attribute name="style">
                background: url(<xsl:value-of select="/Properties/Data/Datum/DCR/body_content2/banner_image" />);
                background-repeat: no-repeat;
                background-position: center center;
                background-size: cover;
            </xsl:attribute>
            <xsl:element name="h1">
                <xsl:attribute name="class">
                    header-narrow h-auto   align-self-start text-start px-2
                </xsl:attribute>
                <xsl:value-of select="/Properties/Data/Datum/DCR/body_content2/banner_text" disable-output-escaping="yes" />
            </xsl:element>
            <xsl:element name="button">
                <xsl:attribute name="class">
                    btn btn-lg rounded-pill grabMe-btn d-md-block d-none 
                </xsl:attribute>
                <xsl:attribute name="data-bs-toggle">
                    modal
                </xsl:attribute>
                <xsl:attribute name="data-bs-target">
                    #modal-rider
                </xsl:attribute>
                Grab Me!
            </xsl:element>
            
        </xsl:element>

        <!-- Brown Sections=================================================================== -->
        <xsl:element name="section">
            <xsl:attribute name="class">section-brown w-100  py-lg-5 py-md-3 py-2 h-auto d-flex flex-column</xsl:attribute>
            <xsl:attribute name="style">
                background-color:#3d2211;
            </xsl:attribute>
            <h2 class="quoteWhite text-center my-lg-4 my-2 d-md-block d-none">
                <xsl:value-of select="/Properties/Data/Datum/DCR/body_content2/top_header_text" disable-output-escaping="yes" />
            </h2>
            <div class="bar-light-long mx-auto my-lg-4 my-2 d-md-block d-none"></div>
            <p class="detailEng-white text-center my-lg-4 my-2 d-lg-block d-none">
                <xsl:value-of select="/Properties/Data/Datum/DCR/body_content2/top_detail_text" disable-output-escaping="yes" />
            </p>
            <!-- <div class="deatailThai-white text-center my-md-4 my-2 d-lg-block d-none">
               <xsl:value-of select="content_th" disable-output-escaping="yes" />
            </div> -->
            <div class="container mx-auto ps-3 ps-lg-5 pt-3">
                <h2 class="menu-header-mobile-white d-block d-md-none mb-1 ms-2">
                    <xsl:value-of select="/Properties/Data/Datum/DCR/body_content2/top_slider_topic" disable-output-escaping="yes" />
                </h2>
                <div class="bar-white-mobile  d-block d-md-none ms-2"></div>
                <div id="snackBox" class="d-flex flex-row overflow-auto scroll-box my-lg-4 my-2 ms-md-5 ms-auto ">
                    <xsl:for-each select="/Properties/Data/Datum/DCR/body_content2/top_product_container">
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
                                    <xsl:attribute name="class">card-name-small-white mb-md-1</xsl:attribute>
                                    <xsl:value-of select="menu_name" disable-output-escaping="yes" />
                                </xsl:element>
                                <xsl:element name="h5">
                                    <xsl:attribute name="class">card-name-thai-small-white text-wrap float-start</xsl:attribute>
                                    <xsl:value-of select="menu_name_th" disable-output-escaping="yes" />
                                </xsl:element>
                                <xsl:element name="span">
                                    <xsl:attribute name="class">card-price-small-white float-end</xsl:attribute>
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
            </div>
            <xsl:element name="button">
                <xsl:attribute name="class">
                    btn btn-lg rounded-pill grabMe-btn d-md-block d-none mx-auto my-md-4 my-2
                </xsl:attribute>
                <xsl:attribute name="data-bs-toggle">
                    modal
                </xsl:attribute>
                <xsl:attribute name="data-bs-target">
                    #modal-rider
                </xsl:attribute>
                 Grab Me!
            </xsl:element>
            

            <div class="container mx-auto pt-3 row">
                <div class="col-md-6 col-0  d-md-block d-none ">
                    <div class="position-relative w-50 h-auto mt-5">
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="/Properties/Data/Datum/DCR/body_content2/image1" />
                            </xsl:attribute>
                            <xsl:attribute name="class">pic-sm</xsl:attribute>
                            <xsl:attribute name="style">object-fit: cover;</xsl:attribute>
                        </xsl:element>
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="/Properties/Data/Datum/DCR/body_content2/image2" />
                            </xsl:attribute>
                            <xsl:attribute name="class">position-absolute top-50 start-50 pic-lg</xsl:attribute>
                        </xsl:element>
                    </div>
                </div>
                <div class="col-md-6 col-12 px-0 px-md-2 overflow-visible">
                    <h2 class="quoteWhite  my-lg-5 my-3  d-md-block d-none">
                       <xsl:value-of select="/Properties/Data/Datum/DCR/body_content2/main_header_text" disable-output-escaping="yes" />
                    </h2>
                    <div class="bar-light-long  d-md-block d-none"></div>
                    <p class="detailEng-white my-md-4 my-2  d-lg-block d-none">
                        <xsl:value-of select="/Properties/Data/Datum/DCR/body_content2/main_detail_text" disable-output-escaping="yes" />
                    </p>
                    <!-- <div class="deatailThai-white  d-lg-block d-none">
                        <xsl:value-of select="content_text_th" disable-output-escaping="yes" />
                    </div> -->
                    <h2 class="menu-header-mobile-white d-block d-md-none mb-1 ms-2">
                        <xsl:value-of select="/Properties/Data/Datum/DCR/body_content2/main_slider_topic" disable-output-escaping="yes" />
                    </h2>
                    <div class="bar-white-mobile  d-block d-md-none ms-2"></div>
                    <div id="sweetyBox" class="d-flex flex-row overflow-auto scroll-box-short my-lg-5 my-3 ">
                        <xsl:for-each select="/Properties/Data/Datum/DCR/body_content2/main_product_container">
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
                                        <xsl:attribute name="class">card-name-small-white mb-md-1</xsl:attribute>
                                        <xsl:value-of select="menu_name" disable-output-escaping="yes" />
                                    </xsl:element>
                                    <xsl:element name="h5">
                                        <xsl:attribute name="class">card-name-thai-small-white text-wrap float-start</xsl:attribute>
                                        <xsl:value-of select="menu_name_th" disable-output-escaping="yes" />
                                    </xsl:element>
                                    <xsl:element name="span">
                                        <xsl:attribute name="class">card-price-small-white float-end</xsl:attribute>
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
                        <xsl:attribute name="class">
                            btn btn-lg rounded-pill grabMe-btn d-md-block d-none
                        </xsl:attribute>
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
            <div class="container ps-lg-5 ps-3  pt-lg-3 pt-md-5">
                <h2 class="quoteWhite  mt-md-5 mb-md-3 ms-md-5 ms-auto d-md-block d-none">
                   <xsl:value-of select="/Properties/Data/Datum/DCR/body_content2/bottom_header_text" disable-output-escaping="yes" />
                </h2>
                <div class="bar-light-long ms-md-5 ms-auto d-md-block d-none "></div>
                <h2 class="menu-header-mobile-white d-block d-md-none mb-1 ms-2">
                   <xsl:value-of select="/Properties/Data/Datum/DCR/body_content2/bottom_slider_topic" disable-output-escaping="yes" />
                </h2>
                <div class="bar-white-mobile  d-block d-md-none ms-2"></div>
                <div id="complimentaryBox" class="d-flex flex-row overflow-auto scroll-box my-md-4 my-2 ms-md-5 ms-auto ">
                    <xsl:for-each select="/Properties/Data/Datum/DCR/body_content2/bottom_product_container">
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
                                    <xsl:attribute name="class">card-name-small-white mb-md-1</xsl:attribute>
                                    <xsl:value-of select="menu_name" disable-output-escaping="yes" />
                                </xsl:element>
                                <xsl:element name="h5">
                                    <xsl:attribute name="class">card-name-thai-small-white text-wrap float-start</xsl:attribute>
                                    <xsl:value-of select="menu_name_th" disable-output-escaping="yes" />
                                </xsl:element>
                                <xsl:element name="span">
                                    <xsl:attribute name="class">card-price-small-white float-end</xsl:attribute>
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
                    <xsl:attribute name="class">
                        btn btn-lg rounded-pill grabMe-btn d-block  ms-md-5 mx-auto my-md-4 my-3
                    </xsl:attribute>
                    <xsl:attribute name="data-bs-toggle">
                        modal
                    </xsl:attribute>
                    <xsl:attribute name="data-bs-target">
                        #modal-rider
                    </xsl:attribute>
                    Grab Me!
                </xsl:element>
                
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