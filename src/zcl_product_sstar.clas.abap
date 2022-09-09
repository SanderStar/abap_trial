CLASS zcl_product_sstar DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_product_sstar IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA itab TYPE TABLE OF zproduct_sstar.

    itab = VALUE #(
        ( nr = 1 name = 'Ball' )
        ( nr = 2 name = 'Fence' )
        ( nr = 3 name = 'Computer')
    ).


*   delete existing entries in the database table
    DELETE FROM zproduct_sstar.

*   insert the new table entries
    INSERT zproduct_sstar FROM TABLE @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } product entries inserted successfully!| ).
  ENDMETHOD.

ENDCLASS.
