@AbapCatalog.sqlViewName: 'ZVI_PRODUCT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view products'
define view ZI_PRODUCT_SSTAR as select from zproduct_sstar {

nr as Nr,
name as Name
    
}
