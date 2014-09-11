SELECT DISTINCT
  trans.cust_key,
  trans.tran_key,
  trans.bus_dt,
  trans.tran_line_key,
  trans.upc_idnt,
  trans.cust_age AS age,
  trans.cust_gndr_cd AS gender,
  web_sku.sku_img_url,
  web_sku.web_style_id,
  web_sku.colr_desc,
  web_sku.web_sku_id,
  style.active_fl,
  style.prdct_gndr,
  style.web_prdct_age,
  style.mrch_ctgry_lvl1,
  style.mrch_ctgry_lvl2,
  style.style_nm,
  style.web_style_hostd_url
FROM PRD_CA_VWS.SLS_CUST_TRN_DTL_FCT AS trans
JOIN prd_ca_vws.wprod_sty_sku_dim AS web_sku
--  ON(trans.upc_idnt = web_sku.upc_idnt)
on trans.upc_idnt = trim(substr('0000000000000',1,13-char_length(cast(web_sku.upc_idnt as varchar(13)))))||trim(web_sku.upc_idnt)
JOIN prd_ca_vws.wprod_sty_dim AS style 
  ON (style.web_style_id = web_sku.web_style_id)
WHERE trans.cust_key IN (
  27572640,
  34246157,
  15794849,
  38985279,
  37343826,
  30781330,
  27629867,
  29320352,
  26537992,
  42741293,
  31616885,
  29169926,
  22515982,
  31243114,
  26729788,
  12601390,
  29264861,
  23506333,
  24541480,
  31044220,
  30562494,
  33749745,
  50443280,
  12935883,
  49981732,
  12893451,
  34615421,
  30570179,
  10319650,
  50903657,
  39729294,
  22335560,
  1632590,
  31399078,
  40158047,
  49833178,
  41363697,
  25833827,
  29571625,
  35499350,
  31720349,
  35507832,
  7488575,
  26670298,
  41179667,
  27269945,
  23509370,
  24288257,
  53484136,
  49762941,
  32758289,
  49008059,
  1905930,
  26053462,
  22569556,
  31392717,
  47933520,
  28825248,
  31596645,
  31604574,
  41278206,
  40525189,
  4922621,
  15220542,
  48203787,
  57667519,
  39829843,
  32421264,
  24009140,
  32766832,
  2451956,
  9802530,
  43415568,
  39130643,
  30303960,
  23517057,
  22841574,
  31597732,
  50440654,
  35654069,
  25949498,
  30528359,
  30225966,
  26565630,
  31842404,
  32110412,
  44454018,
  53640646,
  50332426,
  12225175,
  37399387,
  35097349,
  4316354,
  30181630,
  10742645,
  52514258,
  1366096,
  12706765,
  7423551,
  30930630,
  35456868,
  49678110,
  55452825,
  12598326,
  30287234,
  30755623,
  16972960,
  8299205,
  31083458,
  15178269,
  38931703,
  12475116,
  24844003,
  10770281,
  11271800,
  11137649,
  4848768,
  34223896,
  6290326,
  20458635,
  13108723,
  29008974,
  31985767,
  39309510,
  26414149,
  32891743,
  31746425,
  13111017,
  2307152,
  9007560,
  47302355,
  18937461,
  1969204,
  31932476,
  48556969,
  40765475,
  20042274,
  17677782,
  20243246,
  49304624,
  31059557,
  34406534,
  22912904,
  48483808,
  42197024,
  6696122,
  56547410,
  32254922,
  10064379,
  47642169,
  17373062,
  13477489,
  27251584,
  48815571,
  9384271,
  32891227,
  9307087,
  29430476,
  48886091,
  25093026,
  57046453,
  28875876,
  50404111,
  30804079,
  22110714,
  23488336,
  29891869,
  1648583,
  12943339,
  14539738,
  51731522,
  45829178,
  11259114,
  32327083,
  4945718,
  6347490,
  21789658,
  3503657,
  33527898,
  50090752,
  40721749,
  29194937,
  14488700,
  48363761,
  30560723,
  42793443,
  22285239,
  12604907,
  12691168,
  9281482,
  25321071,
  20586534,
  21844299,
  11766095,
  50064899,
  46011439,
  31599702,
  22992569,
  14028752,
  50713954,
  43233528,
  37465972,
  35663522,
  4714756,
  55911968,
  2844563,
  34246772,
  41919441,
  3975137,
  28854017,
  22595638,
  34235323,
  11052985,
  48504703,
  29024280,
  7479422,
  22884102,
  10286025,
  31991009,
  39196693,
  22543899,
  50591050,
  40453805,
  35550181,
  7413971,
  31906742,
  49747316,
  37313543,
  40569072,
  29161036,
  48162652,
  10439262,
  1832424)
AND style.web_prdct_age = 'Adult'
ORDER BY trans.cust_key, trans.tran_key, trans.bus_dt, trans.tran_line_key;



SELECT DISTINCT
  trans.cust_key,
  trans.tran_key,
  trans.bus_dt,
  trans.tran_line_key,
  trans.upc_idnt,
  trans.cust_age AS age,
  trans.cust_gndr_cd AS gender,
  rms.sku_key,
  rms.upc_key,
  rms.dm_recd_curr_flag,
  rms.sku_idnt,
  rms.class_desc,
  rms.sbclass_desc,
  rms.upc_desc
FROM PRD_CA_VWS.SLS_CUST_TRN_DTL_FCT AS trans
JOIN PER_WRK.x1lh_temp_dim_rms AS rms
ON (trans.upc_idnt = rms.upc_idnt)
LEFT JOIN prd_ca_vws.wprod_sty_sku_dim AS web_sku
  ON(trans.upc_idnt = web_sku.upc_idnt)
LEFT JOIN prd_ca_vws.wprod_sty_dim AS style 
  ON (style.web_style_id = web_sku.web_style_id)
WHERE trans.cust_key IN (
  27572640,
  34246157,
  15794849,
  38985279,
  37343826,
  30781330,
  27629867,
  29320352,
  26537992,
  42741293,
  31616885,
  29169926,
  22515982,
  31243114,
  26729788,
  12601390,
  29264861,
  23506333,
  24541480,
  31044220,
  30562494,
  33749745,
  50443280,
  12935883,
  49981732,
  12893451,
  34615421,
  30570179,
  10319650,
  50903657,
  39729294,
  22335560,
  1632590,
  31399078,
  40158047,
  49833178,
  41363697,
  25833827,
  29571625,
  35499350,
  31720349,
  35507832,
  7488575,
  26670298,
  41179667,
  27269945,
  23509370,
  24288257,
  53484136,
  49762941,
  32758289,
  49008059,
  1905930,
  26053462,
  22569556,
  31392717,
  47933520,
  28825248,
  31596645,
  31604574,
  41278206,
  40525189,
  4922621,
  15220542,
  48203787,
  57667519,
  39829843,
  32421264,
  24009140,
  32766832,
  2451956,
  9802530,
  43415568,
  39130643,
  30303960,
  23517057,
  22841574,
  31597732,
  50440654,
  35654069,
  25949498,
  30528359,
  30225966,
  26565630,
  31842404,
  32110412,
  44454018,
  53640646,
  50332426,
  12225175,
  37399387,
  35097349,
  4316354,
  30181630,
  10742645,
  52514258,
  1366096,
  12706765,
  7423551,
  30930630,
  35456868,
  49678110,
  55452825,
  12598326,
  30287234,
  30755623,
  16972960,
  8299205,
  31083458,
  15178269,
  38931703,
  12475116,
  24844003,
  10770281,
  11271800,
  11137649,
  4848768,
  34223896,
  6290326,
  20458635,
  13108723,
  29008974,
  31985767,
  39309510,
  26414149,
  32891743,
  31746425,
  13111017,
  2307152,
  9007560,
  47302355,
  18937461,
  1969204,
  31932476,
  48556969,
  40765475,
  20042274,
  17677782,
  20243246,
  49304624,
  31059557,
  34406534,
  22912904,
  48483808,
  42197024,
  6696122,
  56547410,
  32254922,
  10064379,
  47642169,
  17373062,
  13477489,
  27251584,
  48815571,
  9384271,
  32891227,
  9307087,
  29430476,
  48886091,
  25093026,
  57046453,
  28875876,
  50404111,
  30804079,
  22110714,
  23488336,
  29891869,
  1648583,
  12943339,
  14539738,
  51731522,
  45829178,
  11259114,
  32327083,
  4945718,
  6347490,
  21789658,
  3503657,
  33527898,
  50090752,
  40721749,
  29194937,
  14488700,
  48363761,
  30560723,
  42793443,
  22285239,
  12604907,
  12691168,
  9281482,
  25321071,
  20586534,
  21844299,
  11766095,
  50064899,
  46011439,
  31599702,
  22992569,
  14028752,
  50713954,
  43233528,
  37465972,
  35663522,
  4714756,
  55911968,
  2844563,
  34246772,
  41919441,
  3975137,
  28854017,
  22595638,
  34235323,
  11052985,
  48504703,
  29024280,
  7479422,
  22884102,
  10286025,
  31991009,
  39196693,
  22543899,
  50591050,
  40453805,
  35550181,
  7413971,
  31906742,
  49747316,
  37313543,
  40569072,
  29161036,
  48162652,
  10439262,
  1832424)
ORDER BY trans.cust_key, trans.tran_key, trans.bus_dt, trans.tran_line_key;