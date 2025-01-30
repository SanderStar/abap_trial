CLASS zcl_tree DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tree IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data lt_tree type table of ztree.
  data ls_tree like line of lt_tree.

  ls_tree = value #( id = 1 name = '1' ).
  append ls_tree to lt_tree.

  ls_tree = value #( id = 11 name = '11' parent_id = 1 ).
  append ls_tree to lt_tree.

  ls_tree = value #( id = 12 name = '12' parent_id = 1 ).
  append ls_tree to lt_tree.

  ls_tree = value #( id = 123 name = '123' parent_id = 12 ).
  append ls_tree to lt_tree.

  ls_tree = value #( id = 2 name = '2' ).
  append ls_tree to lt_tree.

  ls_tree = value #( id = 21 name = '21' parent_id = 2 ).
  append ls_tree to lt_tree.

  DELETE FROM ztree.

  INSERT ztree FROM TABLE @lt_tree.

  out->write( 'klaar' ).

  ENDMETHOD.
ENDCLASS.
