SELECT DISTINCT 
	catalog.STYLE_GRP_IDNT,
	catalog.WEB_STYLE_ID,	
	catalog.ANVRSRY_SALE_FL,	
	catalog.RGLR_PRICE,	
	catalog.ACTIVE_FL,	
	catalog.PRNT_SKU_IDNT,	
	catalog.VNDR,	
	catalog.BRAND_ID,	
	catalog.BRAND_NM,	
	catalog.PRDCT_GNDR,	
	catalog.WEB_PRDCT_AGE,	
	catalog.PUBLISH_FL,	
	catalog.STYLE_GRP_ELGBLTY_FL,	
	catalog.STYLE_GRP_AVLBLTY_FL,	
	catalog.FEATRD_ITM_FL,	
	catalog.WEB_STYLE_HOSTD_URL,	
	catalog.WEB_PRODCT_LABEL,	
	catalog.GFT_SRVS,	
	catalog.IMG_URL,	
	catalog.VARIATION_TYP,	
	catalog.FEATURES,	
	catalog.IS_PRNT_FL,	
	catalog.WEB_STYLE_NUM,	
	catalog.STYLE_NM,	
	catalog.CURR_PRICE,	
	catalog.ONSALE_FL,	
	catalog.PENDNG_ANVRSRY_FL,	
	catalog.WEB_STYLE_GRP_TITLE,	
	catalog.PORTAL_DESC,	
	catalog.MRCH_CTGRY_LVL1,	
	catalog.MRCH_CTGRY_LVL2,
	sku.CHLD_SKU_ID,
	sku.WEB_SKU_ID,
	sku.SIZE,
	sku.COLR_DESC,
	sku.COLR_FMLY,	
	sku.UPC_IDNT,	
	sku.SKU_IMG_URL
FROM prd_ca_vws.wprod_sty_dim AS catalog
JOIN prd_ca_vws.wprod_sty_sku_dim AS sku
ON (catalog.web_style_id = sku.web_style_id)
ORDER BY catalog.web_style_id;
