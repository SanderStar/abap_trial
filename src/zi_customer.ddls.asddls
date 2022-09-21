@EndUserText.label: 'Customer'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_CUSTOMER'
    }
}
define root custom entity ZI_CUSTOMER {
     key CustomerId     : abap.char( 10 );
     Description        : abap.char( 2 );
}
