<!-- BEGIN: main -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:fb="http://ogp.me/ns/fb#" xmlns="http://www.w3.org/1999/xhtml"><head>
    <link rel="Shortcut Icon" href="/favicon.gif" type="image/x-icon" /> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
	{THEME_CSS}
  {THEME_SITE_JS}
    <script type="text/javascript" language="javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/quickview/js/jquery-1.4.3.min.js"></script>
    <script type="text/javascript" language="javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/quickview/js/jquery.multiple-bgs.js"></script>
    <link rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/quickview/css/quickview.css" type="text/css" />              
    <link type="text/css" rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/quickview/css/product-detail.css"/>
    <style type="text/css">
	body{
	font-family:Arial, Helvetica, sans-serif;
	margin:0;
	padding:0;
	background:url('{NV_BASE_SITEURL}themes/{TEMPLATE}/quickview/images/body_bg.jpg') repeat top left;
	font-size: 12px;
	line-height: 20px;
    }
    div.product_quick{
        padding-top:22px;
    }
    div.pds_content_quick{
        float:left;
        width:390px;
        padding-top:0px;
    }
    div.pds_info{
        padding-left:21px;
    }
    .pds_title{
        padding-bottom:2px;
        padding-left:21px;
		font-size: 16px;
		font-weight:bold;
    }
    div#container {
        overflow:visible;
    }
    div#container {
        padding-bottom:34px;
    }
    div.slideshow-container{
        width:400px;
        height:310px;
    }
    div.slideshow img{
        max-width:398px;
        height:290px;
        border:1px solid #cecece;
    }
    div.content_product_img{
        background:none;
    }
    div.slideshow-container, div.loader, div.slideshow a.advance-link{
        width:398px;
    }
    div.loader, div.slideshow a.advance-link, div.caption-container{
        height:385px;
    }
    ul.thumbs{
        padding-left:3px;
		height:100%;
    }
    ul.thumbs img{
        width:84px;
        height:77px;
        border:1px solid #cecece;
    }
    ul.thumbs li{
        margin-right:11px;
    }
    div.pds_quick_detail{
        font-family:Tahoma, Geneva, sans-serif;
        text-transform:uppercase;
        font-weight:bold;
        background-color:#bfbfbf;
        height:22px;
        line-height:22px;
        font-size:12px;
        padding:0 14px;
        float:left;
        margin-top:15px;
    }
    div.pds_quick_detail:hover{
        background-color:#111;
    }
    div.pds_quick_detail a{
        color:#feffff;
    }
    div.pds_control{
        padding-top:30px;
        padding-left: 23px;
    }
    </style> 
</head>

<body style="background:none;">
<div class="product_quick">
    
<div id="page">
    <div id="container">                                               
        <div class="content_product_img">
            <div style="float: left; width: 398px;">
                <div class="slideshow-container">
                    <div id="loading" class="loader"></div>
                    <div id="slideshow" class="slideshow"></div> 
                </div>
                <div>
		<div class="navigation-container">
			<div id="thumbs" class="navigation">		
				
				<ul class="thumbs noscript">
					<li>
						<a href="{SRC_PRO_LAGE}" class="thumb">
							<img src="{SRC_PRO}" alt="{TITLE}" />
						</a>
					</li>
					<!-- BEGIN: othersimgs -->
					<li>
						<a href="{IMG_SRC_OTHER}" class="thumb">
							<img src="{IMG_SRC_OTHER}" alt="{TITLE}" />
						</a>
					</li>
					<!-- END: othersimgs --> 
				</ul>
				
			</div>
		</div></div>
            </div> 
            <div class="pds_content_quick">
                <div class="none_tag pds_title">{TITLE}</div>
                <div class="pds_info">
				<span>{DATE_UP}- {NUM_VIEW} {LANG.detail_num_view} </span><br />
				 <!-- BEGIN: source -->
			<b>{LANG.detail_source} : <a href="{link_source}">{source}</a></b><br />
			<!-- END: source -->
				  <!-- BEGIN: address -->
                    <b>{LANG.detail_product_address}: </b> {address}<br />
					<!-- END: address -->
					<b>Đặc điểm: </b>  {hometext}<br />
					<!-- BEGIN: warranty -->
					<b>{LANG.detail_warranty}: </b> {warranty}<br />
					<!-- END: warranty -->
					<!-- BEGIN: promotional -->
					<b>{LANG.detail_promotional}: </b> {promotional}<br />
					<!-- END: promotional -->
					<b>{LANG.product_code}: </b> <font color="#8e8e8e">{PRODUCT_CODE}</font><br />
					<!-- BEGIN: note -->
					<b>{LANG.cart_note}: </b> <font color="#ff0000">{note}</font><br /> 
					<!-- END: note --> 
                    <div class="pds_quick_detail"><a href="{link_url}" rel="nofollow" target="_top">Xem chi tiết</a></div>
                    <div class="clear"><span></span></div>
                </div>
                <div class="pds_control">
				 <!-- BEGIN: price -->
                    <div class="pds_price">{LANG.detail_pro_price} : <span class="{class_money}">{product_price} {money_unit}</span> / 1 {pro_unit}</div>
					<!-- BEGIN: discounts -->
				 <div class="pds_price">{LANG.detail_pro_price} :<span class="money">{product_discounts} {money_unit}</span></div>
				<!-- END: discounts --> 
				 <!-- END: price -->
				 <!-- BEGIN: contact -->
			<div class="pds_price">{LANG.detail_pro_price}: <span class="money">{LANG.price_contact}</span></div>
			     <!-- END: contact -->
					  <form method="post" action="javascript:void(0)" class="pds_scart" target="_top">
                        <div class="pds_no">
                            <input type="text" value="1" id="pnum" class="pds_no" name="num" />  
							<span class="pds_no_up" onclick="$('#pnum').attr('value',parseInt($('#pnum').val())+1);"></span>
                            <span class="pds_no_down" onclick="$('#pnum').attr('value',((parseInt($('#pnum').val())-1>1)?parseInt($('#pnum').val())-1:1));"></span>
                        </div>
						 <a href="javascript:void(0)" id="{proid}" title="{TITLE}" onclick="cartorder(this)">
                        <div class="pds_scart"><span class="scart_continue"><input type="submit" value="{LANG.add_product}" class="scart_continue" /></span></div>
						</a>
                    </form>
                    <div class="clear"><span></span></div>
                </div>
            </div>
            <div class="clear"><span></span></div>
        </div>             
        <div class="clear"><span></span></div>
    </div>
</div> 
</div>
<script type="text/javascript" language="javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/quickview/js/jquery.lazyload.js"></script>
<script type="text/javascript">
  $(function() {
      $("img.lazy").lazyload();
  });
</script>
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/quickview/js/jquery.galleriffic.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/quickview/js/jquery.opacityrollover.js"></script>
<script type="text/javascript">

		jQuery(document).ready(function($) {
		// We only want these styles applied when javascript is enabled
		$('div.content_product_img').css('display', 'block');
		
		// Initially set opacity on thumbs and add
		// additional styling for hover effect on thumbs
		var onMouseOutOpacity = 0.67;
		$('#thumbs ul.thumbs li, div.navigation a.pageLink').opacityrollover({
		mouseOutOpacity:   onMouseOutOpacity,
		mouseOverOpacity:  1.0,
		fadeSpeed:         'fast',
		exemptionSelector: '.selected'
		});
		
		// Initialize Advanced Galleriffic Gallery
		var gallery = $('#thumbs').galleriffic({
		delay:                     2500,
		numThumbs:                 10,
		preloadAhead:              10,
		enableTopPager:            false,
		enableBottomPager:         false,
		imageContainerSel:         '#slideshow',
		controlsContainerSel:      '#controls',
		captionContainerSel:       '#caption',
		loadingContainerSel:       '#loading',
		renderSSControls:          true,
		renderNavControls:         true,
		playLinkText:              'Play Slideshow',
		pauseLinkText:             'Pause Slideshow',
		prevLinkText:              '&lsaquo; Previous Photo',
		nextLinkText:              'Next Photo &rsaquo;',
		nextPageLinkText:          'Next &rsaquo;',
		prevPageLinkText:          '&lsaquo; Prev',
		enableHistory:             true,
		autoStart:                 false,
		syncTransitions:           true,
		defaultTransitionDuration: 900,
		onSlideChange:             function(prevIndex, nextIndex) {
		// 'this' refers to the gallery, which is an extension of $('#thumbs')
		this.find('ul.thumbs').children()
		.eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
		.eq(nextIndex).fadeTo('fast', 1.0);
		
		// Update the photo index display
		this.$captionContainer.find('div.photo-index')
		.html('Photo '+ (nextIndex+1) +' of '+ this.data.length);
		},
		onPageTransitionOut:       function(callback) {
		this.fadeTo('fast', 0.0, callback);
		},
		onPageTransitionIn:        function() {
		var prevPageLink = this.find('a.prev').css('visibility', 'hidden');
		var nextPageLink = this.find('a.next').css('visibility', 'hidden');
		
		// Show appropriate next / prev page links
		if (this.displayedPage > 0)
		prevPageLink.css('visibility', 'visible');
		
		var lastPage = this.getNumPages() - 1;
		if (this.displayedPage < lastPage)
		nextPageLink.css('visibility', 'visible');
		
		this.fadeTo('fast', 1.0);
		}
		});
		});
</script>
 <div class="msgshow" id="msgshow"></div>
</body>
</html>
<!-- END: main -->