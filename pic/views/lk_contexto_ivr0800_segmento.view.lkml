view: lk_contexto_ivr0800_segmento {
  sql_table_name: @{gcp_dataset_pub}.LK_ContextoIVR0800Segmento`;;
  fields_hidden_by_default: yes

  dimension: contexto_ivr_0800_segmentosrcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800_SEGMENTOSRCId ;;
  }
}
