view: lk_contexto_ivr0800 {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ContextoIVR0800`;;
  fields_hidden_by_default: yes

  dimension: contexto_ivr_0800_srcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800SRCId ;;
  }
}
