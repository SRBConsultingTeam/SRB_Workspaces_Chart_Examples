*&---------------------------------------------------------------------*
*& Report zworkspaces_srb_demo_cust_cr
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zworkspaces_srb_demo_cust_cr.

PARAMETERS: create AS CHECKBOX TYPE abap_bool DEFAULT abap_false.

START-OF-SELECTION.

  DATA lp_main TYPE STANDARD TABLE OF /srblp/lp_main.
  DATA lp_main_t TYPE STANDARD TABLE OF /srblp/lp_main_t.
  DATA hi_main TYPE STANDARD TABLE OF /srblp/hi_main.
  DATA hi_main_t TYPE STANDARD TABLE OF /srblp/hi_main_t.
  DATA gr_assign TYPE STANDARD TABLE OF /srblp/gr_assign.
  DATA gr_main TYPE STANDARD TABLE OF /srblp/gr_main.
  DATA gr_main_t TYPE STANDARD TABLE OF /srblp/gr_main_t.
  DATA ti_main TYPE STANDARD TABLE OF /srblp/ti_main.
  DATA ti_main_t TYPE STANDARD TABLE OF /srblp/ti_main_t.
  DATA ti_assi_g TYPE STANDARD TABLE OF /srblp/ti_assi_g.
  DATA tc_main TYPE STANDARD TABLE OF /srblp/tc_main.
  DATA tc_main_t TYPE STANDARD TABLE OF /srblp/tc_main_t.
  DATA tc_data_s TYPE STANDARD TABLE OF /srblp/tc_data_s.


  IF ( create <> abap_true ).
    RETURN.
  ENDIF.

  lp_main = VALUE #(
  ( launchpad_id = 'SRB.DEMO.RAP'
    active = 'X'
    description_text_name = ''
    description_text_id = ''
    hierarchy_id = 'SRB.DEMO.RAP'
    nav_tree_button = 'X'
    show_nav_tree = 'X'
    step_wise_loading = ''  )
   ).

  lp_main_t = VALUE #(
      ( launchpad_id = 'SRB.DEMO.RAP' spras = 'D' title = 'SRB Demo Workspace RAP & ABAP'  )
      ( launchpad_id = 'SRB.DEMO.RAP' spras = 'E' title = 'SRB Demo Workspace RAP & ABAP'  )
   ).


  hi_main = VALUE #(
      ( hierarchy_id = 'SRB.DEMO.RAP' parent_id = '' description_text_name = '' description_text_id = '' sortkey = '0 ' background_color = '' child_exists = '' type = '' content_text_id = '' content_text_name = '' sourceclass = '' chart_type = ''  )
      ( hierarchy_id = 'SRB.DEMO.RAP.CHARTS' parent_id = 'SRB.DEMO.RAP' description_text_name = '' description_text_id = '' sortkey = '0 ' background_color = '' child_exists = '' type = '' content_text_id = '' content_text_name = ''
  sourceclass = '' chart_type = ''  )
   ).

  hi_main_t = VALUE #(
      ( hierarchy_id = 'SRB.DEMO.RAP' spras = 'D' title = 'SRB Demo' subtitle = ''  )
      ( hierarchy_id = 'SRB.DEMO.RAP.CHARTS' spras = 'D' title = 'Charts Demo' subtitle = ''  )
      ( hierarchy_id = 'SRB.DEMO.RAP' spras = 'E' title = 'SRB Demo' subtitle = ''  )
      ( hierarchy_id = 'SRB.DEMO.RAP.CHARTS' spras = 'E' title = 'Charts Demo' subtitle = ''  )
   ).


  gr_assign = VALUE #(
      ( group_id = 'SRB.DEMO.RAP.CHARTS' hierarchy_id = 'SRB.DEMO.RAP.CHARTS' sortkey = '0 '  )
      ( group_id = 'SRB.DEMO.RAP.CHARTS2' hierarchy_id = 'SRB.DEMO.RAP.CHARTS' sortkey = '0 '  )
   ).

  gr_main = VALUE #(
      ( group_id = 'SRB.DEMO.RAP.CHARTS' sortkey = '1 '  )
      ( group_id = 'SRB.DEMO.RAP.CHARTS2' sortkey = '2 '  )
   ).

  gr_main_t = VALUE #(
      ( group_id = 'SRB.DEMO.RAP.CHARTS' spras = 'D' title = 'Verfügbare Charts ab SRB Workspaces 2303 - 1:1'  )
      ( group_id = 'SRB.DEMO.RAP.CHARTS2' spras = 'D' title = 'Verfügbare Charts ab SRB Workspaces 2303 - 2:1'  )
      ( group_id = 'SRB.DEMO.RAP.CHARTS' spras = 'E' title = 'Available Charts with SRB Workspaces 2303 - 1:1'  )
      ( group_id = 'SRB.DEMO.RAP.CHARTS2' spras = 'E' title = 'Available Charts with SRB Workspaces 2303 - 2:1'  )
   ).

  ti_main = VALUE #(
      ( tile_id = 'SRB.DEMO.RAP.ST_BAR' frametype = 'OneByOne' slidedisplaytime = '0' sortkey = '1 '  )
      ( tile_id = 'SRB.DEMO.RAP.COLUMN' frametype = 'OneByOne' slidedisplaytime = '0' sortkey = '2 '  )
      ( tile_id = 'SRB.DEMO.RAP.COLUMN2' frametype = 'TwoByOne' slidedisplaytime = '0' sortkey = '2 '  )
      ( tile_id = 'SRB.DEMO.RAP.ST_BAR2' frametype = 'TwoByOne' slidedisplaytime = '0' sortkey = '1 '  )
      ( tile_id = 'SRB.DEMO.RAP.COMPAR' frametype = 'OneByOne' slidedisplaytime = '0' sortkey = '3 '  )
      ( tile_id = 'SRB.DEMO.RAP.COMPAR2' frametype = 'TwoByOne' slidedisplaytime = '0' sortkey = '3 '  )
      ( tile_id = 'SRB.DEMO.RAP.RADIAL' frametype = 'OneByOne' slidedisplaytime = '0' sortkey = '4 '  )
      ( tile_id = 'SRB.DEMO.RAP.RADIAL2' frametype = 'TwoByOne' slidedisplaytime = '0' sortkey = '4 '  )
      ( tile_id = 'SRB.DEMO.RAP.HARVBL' frametype = 'OneByOne' slidedisplaytime = '0' sortkey = '5 '  )
      ( tile_id = 'SRB.DEMO.RAP.HARVBL2' frametype = 'TwoByOne' slidedisplaytime = '0' sortkey = '5 '  )
      ( tile_id = 'SRB.DEMO.RAP.PRGS' frametype = 'OneByOne' slidedisplaytime = '0' sortkey = '6 '  )
      ( tile_id = 'SRB.DEMO.RAP.PRGS2' frametype = 'TwoByOne' slidedisplaytime = '0' sortkey = '6 '  )
   ).

  ti_main_t = VALUE #(
      ( tile_id = 'SRB.DEMO.RAP.ST_BAR' spras = 'D' title = '' subtitle = ''  )
      ( tile_id = 'SRB.DEMO.RAP.COLUMN' spras = 'D' title = '' subtitle = ''  )
      ( tile_id = 'SRB.DEMO.RAP.COLUMN2' spras = 'D' title = '' subtitle = ''  )
      ( tile_id = 'SRB.DEMO.RAP.ST_BAR2' spras = 'D' title = '' subtitle = ''  )
      ( tile_id = 'SRB.DEMO.RAP.COMPAR' spras = 'D' title = '' subtitle = ''  )
      ( tile_id = 'SRB.DEMO.RAP.COMPAR2' spras = 'D' title = '' subtitle = ''  )
      ( tile_id = 'SRB.DEMO.RAP.RADIAL' spras = 'D' title = '' subtitle = ''  )
      ( tile_id = 'SRB.DEMO.RAP.RADIAL2' spras = 'D' title = '' subtitle = ''  )
      ( tile_id = 'SRB.DEMO.RAP.HARVBL' spras = 'D' title = '' subtitle = ''  )
      ( tile_id = 'SRB.DEMO.RAP.HARVBL2' spras = 'D' title = '' subtitle = ''  )
      ( tile_id = 'SRB.DEMO.RAP.PRGS' spras = 'D' title = '' subtitle = ''  )
      ( tile_id = 'SRB.DEMO.RAP.PRGS2' spras = 'D' title = '' subtitle = ''  )
   ).

  ti_assi_g = VALUE #(
      ( tile_id = 'SRB.DEMO.RAP.ST_BAR2' group_id = 'SRB.DEMO.RAP.CHARTS2' sortkey = '1 '  )
      ( tile_id = 'SRB.DEMO.RAP.COLUMN' group_id = 'SRB.DEMO.RAP.CHARTS' sortkey = '2 '  )
      ( tile_id = 'SRB.DEMO.RAP.ST_BAR' group_id = 'SRB.DEMO.RAP.CHARTS' sortkey = '1 '  )
      ( tile_id = 'SRB.DEMO.RAP.COLUMN2' group_id = 'SRB.DEMO.RAP.CHARTS2' sortkey = '2 '  )
      ( tile_id = 'SRB.DEMO.RAP.COMPAR' group_id = 'SRB.DEMO.RAP.CHARTS' sortkey = '3 '  )
      ( tile_id = 'SRB.DEMO.RAP.COMPAR2' group_id = 'SRB.DEMO.RAP.CHARTS2' sortkey = '3 '  )
      ( tile_id = 'SRB.DEMO.RAP.RADIAL' group_id = 'SRB.DEMO.RAP.CHARTS' sortkey = '4 '  )
      ( tile_id = 'SRB.DEMO.RAP.RADIAL2' group_id = 'SRB.DEMO.RAP.CHARTS2' sortkey = '4 '  )
      ( tile_id = 'SRB.DEMO.RAP.HARVBL' group_id = 'SRB.DEMO.RAP.CHARTS' sortkey = '5 '  )
      ( tile_id = 'SRB.DEMO.RAP.HARVBL2' group_id = 'SRB.DEMO.RAP.CHARTS2' sortkey = '5 '  )
      ( tile_id = 'SRB.DEMO.RAP.PRGS' group_id = 'SRB.DEMO.RAP.CHARTS' sortkey = '6 '  )
      ( tile_id = 'SRB.DEMO.RAP.PRGS2' group_id = 'SRB.DEMO.RAP.CHARTS2' sortkey = '7 '  )
  ).

  tc_main = VALUE #(
      ( tile_content_id = 'SRB.DEMO.RAP.PRGS2' tile_id = 'SRB.DEMO.RAP.PRGS2' type = 'C' footer_color = '' content_unit = '' numeric_indicator = '' numeric_value = '' numeric_color = '' bg_image_url_id = '' bg_image_url_name = ''
  target_url_id = '' target_url_name = '' news_text_id = '' news_text_name = '' sortkey = '0 ' content_text_id = '' content_text_name = '' refresh_interval = '0' cmc_scale = '' cmc_min_value = '0.000 ' cmc_max_value = '0.000 ' sap_icon = ''
  info_target_url_id = '' info_target_url_name = '' chart_type = 'PROGRESS'  )
      ( tile_content_id = 'SRB.DEMO.RAP.ST_BAR2' tile_id = 'SRB.DEMO.RAP.ST_BAR2' type = 'C' footer_color = '' content_unit = '' numeric_indicator = '' numeric_value = '' numeric_color = '' bg_image_url_id = '' bg_image_url_name = ''
  target_url_id = '' target_url_name = '' news_text_id = '' news_text_name = '' sortkey = '0 ' content_text_id = '' content_text_name = '' refresh_interval = '0' cmc_scale = '' cmc_min_value = '0.000 ' cmc_max_value = '0.000 ' sap_icon = ''
  info_target_url_id = '' info_target_url_name = '' chart_type = 'STACKEDBAR'  )
      (  tile_content_id = 'SRB.DEMO.RAP.RADIAL' tile_id = 'SRB.DEMO.RAP.RADIAL' type = 'C' footer_color = '' content_unit = '' numeric_indicator = '' numeric_value = '' numeric_color = '' bg_image_url_id = '' bg_image_url_name = ''
  target_url_id = '' target_url_name = '' news_text_id = '' news_text_name = '' sortkey = '0 ' content_text_id = '' content_text_name = '' refresh_interval = '0' cmc_scale = '' cmc_min_value = '0.000 ' cmc_max_value = '0.000 ' sap_icon = ''
  info_target_url_id = '' info_target_url_name = '' chart_type = 'RADIAL'  )
      ( tile_content_id = 'SRB.DEMO.RAP.RADIAL2' tile_id = 'SRB.DEMO.RAP.RADIAL2' type = 'C' footer_color = '' content_unit = '' numeric_indicator = '' numeric_value = '' numeric_color = '' bg_image_url_id = '' bg_image_url_name = ''
  target_url_id = '' target_url_name = '' news_text_id = '' news_text_name = '' sortkey = '0 ' content_text_id = '' content_text_name = '' refresh_interval = '0' cmc_scale = '' cmc_min_value = '0.000 ' cmc_max_value = '0.000 ' sap_icon = ''
  info_target_url_id = '' info_target_url_name = '' chart_type = 'RADIAL'  )
      ( tile_content_id = 'SRB.DEMO.RAP.ST_BAR' tile_id = 'SRB.DEMO.RAP.ST_BAR' type = 'C' footer_color = '' content_unit = '' numeric_indicator = '' numeric_value = '' numeric_color = '' bg_image_url_id = '' bg_image_url_name = ''
  target_url_id = '' target_url_name = '' news_text_id = '' news_text_name = '' sortkey = '0 ' content_text_id = '' content_text_name = '' refresh_interval = '0' cmc_scale = '' cmc_min_value = '0.000 ' cmc_max_value = '0.000 ' sap_icon = ''
  info_target_url_id = '' info_target_url_name = '' chart_type = 'STACKEDBAR'  )
      ( tile_content_id = 'SRB.DEMO.RAP.COLUMN' tile_id = 'SRB.DEMO.RAP.COLUMN' type = 'C' footer_color = '' content_unit = '' numeric_indicator = '' numeric_value = '' numeric_color = '' bg_image_url_id = '' bg_image_url_name = ''
  target_url_id = '' target_url_name = '' news_text_id = '' news_text_name = '' sortkey = '0 ' content_text_id = '' content_text_name = '' refresh_interval = '0' cmc_scale = '' cmc_min_value = '0.000 ' cmc_max_value = '0.000 ' sap_icon = ''
  info_target_url_id = '' info_target_url_name = '' chart_type = 'COLUMN'  )
      ( tile_content_id = 'SRB.DEMO.RAP.COLUMN2' tile_id = 'SRB.DEMO.RAP.COLUMN2' type = 'C' footer_color = '' content_unit = '' numeric_indicator = '' numeric_value = '' numeric_color = '' bg_image_url_id = '' bg_image_url_name = ''
  target_url_id = '' target_url_name = '' news_text_id = '' news_text_name = '' sortkey = '0 ' content_text_id = '' content_text_name = '' refresh_interval = '0' cmc_scale = '' cmc_min_value = '0.000 ' cmc_max_value = '0.000 ' sap_icon = ''
  info_target_url_id = '' info_target_url_name = '' chart_type = 'COLUMN'  )
      ( tile_content_id = 'SRB.DEMO.RAP.COMPAR' tile_id = 'SRB.DEMO.RAP.COMPAR' type = 'C' footer_color = '' content_unit = '' numeric_indicator = '' numeric_value = '' numeric_color = '' bg_image_url_id = '' bg_image_url_name = ''
  target_url_id = '' target_url_name = '' news_text_id = '' news_text_name = '' sortkey = '0 ' content_text_id = '' content_text_name = '' refresh_interval = '0' cmc_scale = '' cmc_min_value = '0.000 ' cmc_max_value = '0.000 ' sap_icon = ''
  info_target_url_id = '' info_target_url_name = '' chart_type = 'COMPARISON'  )
      ( tile_content_id = 'SRB.DEMO.RAP.COMPAR2' tile_id = 'SRB.DEMO.RAP.COMPAR2' type = 'C' footer_color = '' content_unit = '' numeric_indicator = '' numeric_value = '' numeric_color = '' bg_image_url_id = '' bg_image_url_name = ''
  target_url_id = '' target_url_name = '' news_text_id = '' news_text_name = '' sortkey = '0 ' content_text_id = '' content_text_name = '' refresh_interval = '0' cmc_scale = '' cmc_min_value = '0.000 ' cmc_max_value = '0.000 ' sap_icon = ''
  info_target_url_id = '' info_target_url_name = '' chart_type = 'COMPARISON'  )
      ( tile_content_id = 'SRB.DEMO.RAP.HARVBL' tile_id = 'SRB.DEMO.RAP.HARVBL' type = 'C' footer_color = '' content_unit = '' numeric_indicator = '' numeric_value = '' numeric_color = '' bg_image_url_id = '' bg_image_url_name = ''
  target_url_id = '' target_url_name = '' news_text_id = '' news_text_name = '' sortkey = '0 ' content_text_id = '' content_text_name = '' refresh_interval = '0' cmc_scale = '' cmc_min_value = '0.000 ' cmc_max_value = '0.000 ' sap_icon = ''
  info_target_url_id = '' info_target_url_name = '' chart_type = 'HARVEYBALL'  )
      ( tile_content_id = 'SRB.DEMO.RAP.HARVBL2' tile_id = 'SRB.DEMO.RAP.HARVBL2' type = 'C' footer_color = '' content_unit = '' numeric_indicator = '' numeric_value = '' numeric_color = '' bg_image_url_id = '' bg_image_url_name = ''
  target_url_id = '' target_url_name = '' news_text_id = '' news_text_name = '' sortkey = '0 ' content_text_id = '' content_text_name = '' refresh_interval = '0' cmc_scale = '' cmc_min_value = '0.000 ' cmc_max_value = '0.000 ' sap_icon = ''
  info_target_url_id = '' info_target_url_name = '' chart_type = 'HARVEYBALL'  )
      ( tile_content_id = 'SRB.DEMO.RAP.PRGS' tile_id = 'SRB.DEMO.RAP.PRGS' type = 'C' footer_color = '' content_unit = '' numeric_indicator = '' numeric_value = '' numeric_color = '' bg_image_url_id = '' bg_image_url_name = '' target_url_id = ''
  target_url_name = '' news_text_id = '' news_text_name = '' sortkey = '0 ' content_text_id = '' content_text_name = '' refresh_interval = '0' cmc_scale = '' cmc_min_value = '0.000 ' cmc_max_value = '0.000 ' sap_icon = '' info_target_url_id = ''
  info_target_url_name = '' chart_type = 'PROGRESS'  )
   ).

  tc_main_t = VALUE #(
     ( tile_content_id = 'SRB.DEMO.RAP.ST_BAR' tile_id = 'SRB.DEMO.RAP.ST_BAR' spras = 'D' header = 'Stacked Bar' subheader = 'zcl_workspaces_stacked_bar' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.ST_BAR2' tile_id = 'SRB.DEMO.RAP.ST_BAR2' spras = 'D' header = 'Stacked Bar' subheader = 'zcl_workspaces_stacked_bar' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.COLUMN' tile_id = 'SRB.DEMO.RAP.COLUMN' spras = 'D' header = 'Column' subheader = 'zcl_workspaces_column' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.COLUMN2' tile_id = 'SRB.DEMO.RAP.COLUMN2' spras = 'D' header = 'Column' subheader = 'zcl_workspaces_column' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.COMPAR' tile_id = 'SRB.DEMO.RAP.COMPAR' spras = 'D' header = 'Comparison' subheader = 'zcl_workspaces_comparison' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.COMPAR2' tile_id = 'SRB.DEMO.RAP.COMPAR2' spras = 'D' header = 'Comparison' subheader = 'zcl_workspaces_comparison' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.RADIAL' tile_id = 'SRB.DEMO.RAP.RADIAL' spras = 'D' header = 'Radial' subheader = 'zcl_workspaces_radial' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.RADIAL2' tile_id = 'SRB.DEMO.RAP.RADIAL2' spras = 'D' header = 'Radial' subheader = 'zcl_workspaces_radial' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.HARVBL' tile_id = 'SRB.DEMO.RAP.HARVBL' spras = 'D' header = 'Harvey Ball' subheader = 'zcl_workspaces_harvey_ball' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.HARVBL2' tile_id = 'SRB.DEMO.RAP.HARVBL2' spras = 'D' header = 'Harvey Ball' subheader = 'zcl_workspaces_harvey_ball' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.PRGS2' tile_id = 'SRB.DEMO.RAP.PRGS2' spras = 'D' header = 'Progress' subheader = 'zcl_workspaces_progress' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.PRGS' tile_id = 'SRB.DEMO.RAP.PRGS' spras = 'D' header = 'Progress' subheader = 'zcl_workspaces_progress' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.COLUMN' tile_id = 'SRB.DEMO.RAP.COLUMN' spras = 'E' header = 'Column' subheader = 'ZCL_WORKSPACES_COLUMN' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.COLUMN2' tile_id = 'SRB.DEMO.RAP.COLUMN2' spras = 'E' header = 'Column' subheader = 'ZCL_WORKSPACES_COLUMN' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.COMPAR' tile_id = 'SRB.DEMO.RAP.COMPAR' spras = 'E' header = 'Comparison' subheader = 'ZCL_WORKSPACES_COMPARISON' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.COMPAR2' tile_id = 'SRB.DEMO.RAP.COMPAR2' spras = 'E' header = 'Comparison' subheader = 'ZCL_WORKSPACES_COMPARISON' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.HARVBL' tile_id = 'SRB.DEMO.RAP.HARVBL' spras = 'E' header = 'Harvey Ball' subheader = 'ZCL_WORKSPACES_HARVEY_BALL' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.HARVBL2' tile_id = 'SRB.DEMO.RAP.HARVBL2' spras = 'E' header = 'Harvey Ball' subheader = 'ZCL_WORKSPACES_HARVEY_BALL' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.PRGS' tile_id = 'SRB.DEMO.RAP.PRGS' spras = 'E' header = 'Progress' subheader = 'ZCL_WORKSPACES_PROGRESS' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.PRGS2' tile_id = 'SRB.DEMO.RAP.PRGS2' spras = 'E' header = 'Progress' subheader = 'ZCL_WORKSPACES_PROGRESS' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.RADIAL' tile_id = 'SRB.DEMO.RAP.RADIAL' spras = 'E' header = 'Radial' subheader = 'ZCL_WORKSPACES_RADIAL' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.RADIAL2' tile_id = 'SRB.DEMO.RAP.RADIAL2' spras = 'E' header = 'Radial' subheader = 'ZCL_WORKSPACES_RADIAL' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.ST_BAR' tile_id = 'SRB.DEMO.RAP.ST_BAR' spras = 'E' header = 'Stacked Bar' subheader = 'ZCL_WORKSPACES_STACKED_BAR' footer = '' scale = '' news_subheader = ''  )
     ( tile_content_id = 'SRB.DEMO.RAP.ST_BAR2' tile_id = 'SRB.DEMO.RAP.ST_BAR2' spras = 'E' header = 'Stacked Bar' subheader = 'ZCL_WORKSPACES_STACKED_BAR' footer = '' scale = '' news_subheader = ''  )
  ).

  tc_data_s = VALUE #(
     ( tilecontentid = 'SRB.DEMO.RAP.PRGS2' sourceclass = 'ZCL_WORKSPACES_PROGRESS'  )
     ( tilecontentid = 'SRB.DEMO.RAP.ST_BAR2' sourceclass = 'ZCL_WORKSPACES_STACKED_BAR'  )
     ( tilecontentid = 'SRB.DEMO.RAP.RADIAL' sourceclass = 'ZCL_WORKSPACES_RADIAL'  )
     ( tilecontentid = 'SRB.DEMO.RAP.RADIAL2' sourceclass = 'ZCL_WORKSPACES_RADIAL'  )
     ( tilecontentid = 'SRB.DEMO.RAP.ST_BAR' sourceclass = 'ZCL_WORKSPACES_STACKED_BAR'  )
     ( tilecontentid = 'SRB.DEMO.RAP.COLUMN' sourceclass = 'ZCL_WORKSPACES_COLUMN'  )
     ( tilecontentid = 'SRB.DEMO.RAP.COLUMN2' sourceclass = 'ZCL_WORKSPACES_COLUMN'  )
     ( tilecontentid = 'SRB.DEMO.RAP.COMPAR' sourceclass = 'ZCL_WORKSPACES_COMPARISON'  )
     ( tilecontentid = 'SRB.DEMO.RAP.COMPAR2' sourceclass = 'ZCL_WORKSPACES_COMPARISON'  )
     ( tilecontentid = 'SRB.DEMO.RAP.HARVBL' sourceclass = 'ZCL_WORKSPACES_HARVEY_BALL'  )
     ( tilecontentid = 'SRB.DEMO.RAP.HARVBL2' sourceclass = 'ZCL_WORKSPACES_HARVEY_BALL'  )
     ( tilecontentid = 'SRB.DEMO.RAP.PRGS' sourceclass = 'ZCL_WORKSPACES_PROGRESS'  )
   ).

  MODIFY /srblp/lp_main FROM TABLE lp_main.
  MODIFY /srblp/lp_main_t FROM TABLE lp_main_t.
  MODIFY /srblp/hi_main FROM TABLE hi_main.
  MODIFY /srblp/hi_main_t FROM TABLE hi_main_t.
  MODIFY /srblp/gr_assign FROM TABLE gr_assign.
  MODIFY /srblp/gr_main FROM TABLE gr_main.
  MODIFY /srblp/gr_main_t FROM TABLE gr_main_t.
  MODIFY /srblp/ti_main FROM TABLE ti_main.
  MODIFY /srblp/ti_main_t FROM TABLE ti_main_t.
  MODIFY /srblp/ti_assi_g FROM TABLE ti_assi_g.
  MODIFY /srblp/tc_main FROM TABLE tc_main.
  MODIFY /srblp/tc_main_t FROM TABLE tc_main_t.
  MODIFY /srblp/tc_data_s FROM TABLE tc_data_s.
