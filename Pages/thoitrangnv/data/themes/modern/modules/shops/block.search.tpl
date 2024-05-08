<!-- BEGIN: main -->
<div id="sticker-sticky-wrapper" class="sticky-wrapper" style="height: 32px;margin-bottom:0px">
<div id="sticker-sticky-wrapper" class="sticky-wrapper" style="height: 32px;">
<div id="sticker" class="view-filter">
	<div class="view-filter-inside">
		<div class="ctn-view-filter">
		<form action="{NV_BASE_SITEURL}" method="get" name="frm_search" onsubmit="return onsubmitsearch();">
			<span class="view-btn">
				<span>{LANG.keyword}</span>
				 <input id="keyword" type="text" value="{value_keyword}" name="keyword" style="text-align:center;">
			</span>					
			<div class="narrow-down-bg">
				<select class="filter-kind-shop"  name="typemoney" id="typemoney">					
					<option value="0">{LANG.moneyunit}</option>
					 <!-- BEGIN: typemoney -->
			<option {ROW.selected} value="{ROW.code}">{ROW.currency}</option>
            <!-- END: typemoney -->			
				</select>
			</div>
			<div class="narrow-down-bg">
			<select name="cata" id="cata" class="filter-kind-shop">
        	<option value="0">Danh mục</option>
            <!-- BEGIN: loopcata -->
                <option {ROW.selected} value="{ROW.catid}">{ROW.xtitle}</option>
            <!-- END: loopcata -->
        </select>
		</div>
		<div class="narrow-down-bg">
    	<select name="sourceid" class="filter-kind-shop" id="sourceid">
        	<option value="0">Hãng sản xuất</option>
            <!-- BEGIN: loopsource -->
                <option {ROW.selected} value="{ROW.sourceid}">{ROW.title}</option>
            <!-- END: loopsource -->
        </select>
    </div>
			<div class="narrow-down-bg">
				<span>Khoảng giá</span>
				<input id="price1" type="text" value="{value_price1}" name="price1" style="text-align:center;" class="filter-price-from auto_numberic">
				<span class="space-filter-form">-</span>
				<input id="price2" size="20" type="text" value="{value_price2}" name="price2" style="text-align:center;" class="filter-price-from auto_numberic">
				<input class="btn-filter" type="button" name="submit" id="submit" value="{LANG.search}" onclick="onsubmitsearch()">
			</div>
						</form>
		</div>
	</div>
</div></div></div>
<!-- END: main -->