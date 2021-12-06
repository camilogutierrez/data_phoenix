view: lk_contexto_ivr0800_opcion {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ContextoIVR0800Opcion`;;
  fields_hidden_by_default: yes

  dimension: contexto_ivr_0800_opcionsrcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800_OPCIONSRCId ;;
  }
}
