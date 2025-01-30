@AbapCatalog.sqlViewName: 'ZFUNC_LOC_SRC'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Functional Location Source View'
define view zcdstree as select from ztree
association [0..1] to zcdstree as _tree  
    on $projection.parent = _tree.id
{
    key id,
    parent_id as parent,
    
    _tree
}
