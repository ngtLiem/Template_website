<!-- BEGIN: main -->
<div id="category" class="product_favorite france_box">
	<h2 class="page_title" style="padding-top:0px">{CAT_NAME}</h2>
	<div id="products" class="clearfix">
	<!-- BEGIN: grid_rows -->
		<div class="items sh_box_item" style="width:{pwidth}%">
			<div class="items_content">
				<div class="content_top{CSS_PRODUCT_CODE}">
				<!-- BEGIN: sale -->
					<span class="sale"><span>{sale}</span></span>
					<!-- END: sale -->
					<a title="{title_pro}" href="{link_pro}" class="tip_trigger">
						<img src="{img_pro}" alt="{title_pro}" style="height:140px;width:135px;"/>
						<!-- BEGIN: tooltip -->
						<span class="tip"><strong>{title_pro}</strong><br /><img src="{img_pro}" style="max-width:{width}px;">{intro}</span>
						<!-- END: tooltip -->
					</a><br />
					<div class="sh_viewquick"><a href="javascript:OpenPopupUrl('{QUICK_VIEW}');" class="sh_viewquick" rel="nofollow">Xem nhanh</a></div>
					<span><a href="{link_pro}" title="{title_pro}">{title_pro0}</a></span> <br />
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
				<div align="center">
				   <!-- BEGIN: order -->
				   <a href="javascript:void(0)" id="{id}" title="{title_pro}" class="pro_order" onclick="cartorder(this)">{LANG.add_product}</a>
				   <!-- END: order -->
				   <a class="pro_detail" href="{link_pro}" title="{title_pro}">{LANG.detail_product}</a>
				</div> 
			</div>
		</div>
	</div>
		<!-- BEGIN: end_row -->
			<div style="clear:both"></div>
		<!-- END: end_row -->
	<!-- END: grid_rows -->
	</div>
	<div class="pages">
		{pages}
	</div>
</div>
<div class="msgshow" id="msgshow"></div>
<!-- BEGIN: tooltip_js -->
<script type="text/javascript">tooltip_shop();</script>
<!-- END: tooltip_js -->
<!-- END: main -->