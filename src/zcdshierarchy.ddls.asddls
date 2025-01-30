@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'hierarchy'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define hierarchy zcdshierarchy as parent child hierarchy( source zcdstree
child to parent association _tree siblings order by id ascending orphans root )
{
    key id,
    name,
    
    $node.parent_id as parentnodeid,
    $node.hierarchy_level as levelid,
    $node.hierarchy_tree_size as tree_size,
    $node.hierarchy_is_orphan as is_orphan
}
