<!-- BEGIN: main -->
<div id="products" class="clearfix product_favorite france_box">
	<!-- BEGIN: items -->
	<div class="items sh_box_item" style="width:{pwidth}%">
		<div class="items_content">
			<div class="content_top{CSS_PRODUCT_CODE}">
			<!-- BEGIN: sale -->
					<span class="sale"><span>{sale}</span></span>
					<!-- END: sale -->
				<a href="{LINK}" class="tip_trigger">
					<img src="{IMG_SRC}" alt="{TITLE}" style="height:140px;width:135px;"/>
					<!-- BEGIN: tooltip -->
					<span class="tip"><strong>{TITLE}</strong><br /><img src="{IMG_SRC}" style="max-width:{width}px;">{hometext}</span>
					<!-- END: tooltip -->
				</a><br />
				<div class="sh_viewquick"><a href="javascript:OpenPopupUrl('{QUICK_VIEW}');" class="sh_viewquick" rel="nofollow">Xem nhanh</a></div>
				<span><a href="{LINK}" title="{TITLE}">{TITLE0}</a></span> <br />
				<!-- BEGIN: product_code -->
				<div class="shops-center">{PRODUCT_CODE}</div>
				<!-- END: product_code -->
			</div>
			<!-- BEGIN: adminlink -->
			<div class="shops-center">{ADMINLINK}</div>
			<!-- END: adminlink -->
			<div class="content_body">
			<!-- BEGIN: price -->
			<p class="content_price">
				<span class="{class_money}">{product_price} {money_unit}</span>
				<!-- BEGIN: discounts -->
				<br /><span class="money">{product_discounts} {money_unit}</span>
				<!-- END: discounts -->
			</p>
			<!-- END: price -->
			<!-- BEGIN: contact -->
			<p class="content_price">
				{LANG.detail_pro_price}: <span class="money">{LANG.price_contact}</span>
			</p>
			<!-- END: contact -->
			<div class="clearfix">
				<!-- BEGIN: order -->
				<a href="javascript:void(0)" id="{ID}" title="{TITLE}" class="pro_order" onclick="cartorder(this)">{LANG.add_product}</a>
				<!-- END: order -->
				<a href="{LINK}" title="{TITLE}" class="pro_detail" >{LANG.detail_product}</a>
			</div>
			</div>
		</div>
	</div>
	<!-- BEGIN: break -->
		<div style="clear:both"></div>
	<!-- END: break -->
	<!-- END: items -->
</div>
<!-- BEGIN: pages -->
<div class="pages">{generate_page}</div>
<!-- END: pages -->
<div class="msgshow" id="msgshow"></div>
<!-- BEGIN: tooltip_js -->
<script type="text/javascript">tooltip_shop();</script>
<!-- END: tooltip_js -->
<!-- END: main -->