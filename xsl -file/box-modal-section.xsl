<!DOCTYPE html-entities SYSTEM "http://www.interwoven.com/livesite/xsl/xsl-html.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Skin: Default XSL -->

	<xsl:include href="http://www.interwoven.com/livesite/xsl/HTMLTemplates.xsl" />
	<xsl:include href="http://www.interwoven.com/livesite/xsl/StringTemplates.xsl" />
	<xsl:template match="/">

    <div class="modal fade" id="modal-product" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-img-contaniner position-relative mx-md-5 mt-md-2">
                    <img src="" alt="" class="modal-img ">
                    <div class=" modal-img-text w-100 h-auto position-absolute bottom-0 px-3 m-0 pb-3">
                        <h2 class="modal-name mb-0 mt-3 d-inline-block">
                            <!-- Test Noodle -->
                        </h2>
                        <a href="https://lin.ee/w7TtUKN" target="_blank"
                            class="btn btn-lg rounded-pill lineOA-btn-modal d-flex  mt-5 float-end">
                            <img src="/static/puff_pie/images/Deliveries/LineOA Icon.png" alt="">
                            <span>Order</span>
                        </a>

                    </div>
                    <button type="button" class="btn-close btn-close-custom position-absolute top-0 end-0 m-3"
                        data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="row w-100 h-auto modal-text mx-auto">
                    <p class="col-5 modal-ingredient ps-md-5 ps-2 py-2">
                        <!-- Pumpkins,<br>
                            Milk, <br> 
                            Butter, <br> 
                            Whipcream -->
                    </p>
                    <p class="col-7 modal-detail py-2 pe-md-5">
                        <!-- Pumpkin is hidden missing piece to add sweet and mild taste in your favorite cupcakes.
                            Now, let’s grab this and enjoy more good to both your health and joy. -->
                    </p>
                </div>
                <div class="time-preserve mx-auto py-2 text-center">
                    <img src="/static/puff_pie/images/modal-clock.png" alt="" class="clock-img mb-3 d-inline-block">
                    <p class="preserve-detail modal-preservation d-inline-block pt-0 my-0 ps-2">
                        <!-- 2 Days Storage <br>
                            Cold and Dry Places -->
                    </p>

                </div>
            </div>
        </div>
    </div>
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