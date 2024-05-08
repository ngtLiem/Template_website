<!-- BEGIN: main -->
<link rel="stylesheet" type="text/css" media="screen" href="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/css/block-menu-nukeviet.css" />
<script type="text/javascript" language="javascript" src="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/js/zmCore-1.50.min.js"></script>
<div class="top-wrap">
      <div class="main-nav">
         <a href="{NV_BASE_SITEURL}" id="home" style="padding-right:10px">{GLANG.Home}</a>
	<ul>
		<!-- BEGIN: loopcat1 -->
            <li rel="_sub{CAT1.id}"{CAT1.class} idsub="{CAT1.id}" id="_menu{CAT1.id}">
                <a href="{CAT1.link}" {rel}{CAT1.target}>{CAT1.title}</a>
                <!-- BEGIN: cat2 -->
                <div id="_sub{CAT1.id}" class="zingsubmenu_multicol none">
                  <div style="height: auto;" class="subcol songcol_list">
                     <div class="subinner_item">
                        <ul>
                        	<!-- BEGIN: loopcat2 -->
                            <li{MENUTREE.class}><a href="{MENUTREE.link}" {rel}{MENUTREE.target}>{MENUTREE.title}</a></li>
                            <!-- END: loopcat2 -->
                         </ul>
                     </div>
                  </div>
                </div>
                <!-- END: cat2 -->
            </li>
        <!-- END: loopcat1 -->
	</ul>
</div>
</div>
<script language="javascript">
var NUKEVIET_MENU = {};
 NUKEVIET_MENU.MAINMENU= [{array_id_menu}];
</script>
<script type="text/javascript" language="javascript" src="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/js/common.min.js"></script>
<!-- END: main -->