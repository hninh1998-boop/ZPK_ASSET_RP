@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Int.View - Config Asset Report'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_asset_rp
  as select from ztb_asset_rp
{
  key account_determination  as AccountDetermination,
  key account_assignment_for as AccountAssignmentFor,
      gl_account             as GlAccount
}
