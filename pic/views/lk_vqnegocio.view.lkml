view: lk_vqnegocio {
  sql_table_name: @{gcp_dataset_pub}.LK_VQNegocio`;;
  fields_hidden_by_default: yes

  dimension: vq_negociosrcid {
    type: string
    sql: ${TABLE}.VQ_NEGOCIOSRCId ;;
  }
}
