CLASS zcl_workspaces_column DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES /srblp/if_mchar_content_source.
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS get_random_up_to
      IMPORTING max           TYPE i
      RETURNING VALUE(random) TYPE i.

    METHODS get_css_color
      RETURNING VALUE(color) TYPE string.
ENDCLASS.



CLASS zcl_workspaces_column IMPLEMENTATION.

  METHOD /srblp/if_mchar_content_source~retrieve_data.
    DATA colors TYPE STANDARD TABLE OF zui5valuestatecolor.

    colors = VALUE #( ( |Good| ) ( |Error| ) ( |Critical| ) ( |Neutral| ) ).

    DATA(random_value_generator) = cl_abap_random_int=>create(
      seed = cl_abap_random=>seed( )
      min  = 30
      max  = 60
    ).

    DATA(random_colorindex_generator) = cl_abap_random_int=>create(
      seed = cl_abap_random=>seed( )
      min  = 1
      max  = lines( colors )
    ).

    DATA(current_value) = random_value_generator->get_next( ).

    APPEND VALUE #( linenumber = 1
                    cmcdatacolor = colors[ random_colorindex_generator->get_next( ) ]
                    cmcdatadisplayvalue = current_value
                    cmcdatavalue = current_value
                    cmcdatatitle = 'A' ) TO data.

    current_value = random_value_generator->get_next( ).

    APPEND VALUE #( linenumber = 2
                    cmcdatacolor = get_css_color( )
                    cmcdatadisplayvalue = current_value
                    cmcdatavalue = current_value
                    cmcdatatitle = 'B' ) TO data.

    current_value = random_value_generator->get_next( ).

    APPEND VALUE #( linenumber = 3
                    cmcdatacolor = get_css_color( )
                    cmcdatadisplayvalue = current_value
                    cmcdatavalue = current_value
                    cmcdatatitle = 'C' ) TO data.

  ENDMETHOD.

  METHOD get_random_up_to.
    DATA(rng) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
                                            min  = 1
                                            max  = max ).

    random = rng->get_next( ).
  ENDMETHOD.

  METHOD get_css_color.

    DATA(hexnumber) = cl_trex_utility=>conv_dec_to_hex( CONV #( get_random_up_to( 255 ) ) ).

    hexnumber = hexnumber && cl_trex_utility=>conv_dec_to_hex( CONV #( get_random_up_to( 255 ) ) ).
    hexnumber = hexnumber && cl_trex_utility=>conv_dec_to_hex( CONV #( get_random_up_to( 255 ) ) ).

    color = '#' && hexnumber.

  ENDMETHOD.

ENDCLASS.
