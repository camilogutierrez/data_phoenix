view: lk_vqnegocio {
  sql_table_name: @{gcp_ambiente}.LK_VQNegocio`;;
  fields_hidden_by_default: yes

  dimension: vq_negociosrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VQ_NEGOCIOSRCId ;;
  }
}