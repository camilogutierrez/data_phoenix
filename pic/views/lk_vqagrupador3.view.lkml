view: lk_vqagrupador3 {
  sql_table_name: @{gcp_ambiente}.LK_VQAgrupador3`;;
  fields_hidden_by_default: yes

  dimension: vq_agrupador3_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VQ_AGRUPADOR3SRCId ;;
  }
}