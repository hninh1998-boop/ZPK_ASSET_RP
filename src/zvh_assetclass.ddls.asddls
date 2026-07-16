@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help - Asset Class'
@Metadata.ignorePropagatedAnnotations: true
define view entity zvh_assetclass
  as select from I_AssetClassText
{
  key AssetClass,
  key Language,
      AssetClassName,
      AssetClassDescription,
      AssetAuthorizationContext
}
where
  Language = $session.system_language
