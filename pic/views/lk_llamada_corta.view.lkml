view: lk_llamada_corta {
  sql_table_name: @{gcp_dataset_pub}.LK_LlamadaCorta`;;
  fields_hidden_by_default: yes

  dimension: llamada_cortasrcid {
    primary_key: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.LLAMADA_CORTASRCId ;;
  }

  dimension: llamada_cortanombre {
    type: string
    sql: ${TABLE}.LLAMADA_CORTANombre ;;
  }
}
