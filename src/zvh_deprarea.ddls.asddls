@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help - Depreciation Area'
@Metadata.ignorePropagatedAnnotations: true
define view entity zvh_deprarea
  as select distinct from I_DeprAreaForLedgerText
{
  key AssetDepreciationArea,
  key Language,
      AssetDepreciationAreaName,
      AssetDepreciationAreaShortName
}
where
      Ledger      =  '0L'
  and Language    = $session.system_language
  and CompanyCode <> '1610'
