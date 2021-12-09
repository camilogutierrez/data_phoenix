view: lk_contexto_ivr0800_opcion {
  sql_table_name: @{gcp_dataset_pub}.LK_ContextoIVR0800Opcion`;;
  fields_hidden_by_default: yes

  dimension: contexto_ivr_0800_opcionsrcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800_OPCIONSRCId ;;
  }
}
