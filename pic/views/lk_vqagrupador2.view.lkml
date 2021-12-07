view: lk_vqagrupador2 {
  sql_table_name: @{gcp_dataset_pub}.LK_VQAgrupador2`;;
  fields_hidden_by_default: yes

  dimension: vq_agrupador2_srcid {
    type: string
    sql: ${TABLE}.VQ_AGRUPADOR2SRCId ;;
  }
}
