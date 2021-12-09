view: lk_vqestado {
  sql_table_name: @{gcp_dataset_pub}.LK_VQEstado`;;
  fields_hidden_by_default: yes

  dimension: vq_estadosrcid {
    type: string
    sql: ${TABLE}.VQ_ESTADOSRCId ;;
  }
}
