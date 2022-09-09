@AbapCatalog.sqlViewName: 'ZVC_PRODUCT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view'
define view ZC_PRODUCT_SSTAR
  as select from ZI_PRODUCT_SSTAR
{
  key Nr,
      Name
}
