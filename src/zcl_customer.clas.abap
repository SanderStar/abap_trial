CLASS zcl_customer DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_customer IMPLEMENTATION.


  METHOD if_rap_query_provider~select.

    DATA:
        zlt_customer TYPE TABLE OF zi_customer,
        zls_customer LIKE LINE OF zlt_customer.

      DATA(lv_top)     = io_request->get_paging( )->get_page_size( ).
      DATA(lv_skip)    = io_request->get_paging( )->get_offset( ).
      DATA(lt_fields)  = io_request->get_requested_elements( ).
      DATA(lt_sort)    = io_request->get_sort_elements( ).

      zlt_customer = VALUE #( ( CustomerId = '100' Description = 'Star BV' ) ).

    io_response->set_total_number_of_records( lines( zlt_customer ) ).
    io_response->set_data( zlt_customer ).

  ENDMETHOD.
ENDCLASS.
