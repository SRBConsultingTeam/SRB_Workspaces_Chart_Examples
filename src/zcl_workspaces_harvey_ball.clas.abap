CLASS zcl_workspaces_harvey_ball DEFINITION
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



CLASS zcl_workspaces_harvey_ball IMPLEMENTATION.

  METHOD /srblp/if_mchar_content_source~retrieve_data.
    DATA colors TYPE STANDARD TABLE OF zui5valuestatecolor.

    colors = VALUE #( ( |Good| ) ( |Error| ) ( |Critical| ) ( |Neutral| ) ).

    DATA(random_value_generator) = cl_abap_random_int=>create(
      seed = cl_abap_random=>seed( )
      min  = 1
      max  = 100
    ).

    DATA(random_colorindex_generator) = cl_abap_random_int=>create(
      seed = cl_abap_random=>seed( )
      min  = 1
      max  = lines( colors )
    ).

    DATA(value1) = random_value_generator->get_next( ).

    APPEND VALUE #( linenumber = 1
                    cmcdatacolor = get_css_color( )
                    cmcdatadisplayvalue = |{ value1 } kg|
                    cmcdatavalue = |{ value1 }| ) TO data.

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
