view: lk_estado_fin_abandonada {
  sql_table_name: @{gcp_dataset_pub}.LK_EstadoFinAbandonada`;;
  fields_hidden_by_default: yes

  dimension: estado_fin_abandonadasrcid {
    primary_key: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_ABANDONADASRCId ;;
  }

  dimension: estado_fin_abandonadanombre {
    type: string
    sql: ${TABLE}.ESTADO_FIN_ABANDONADANombre ;;
  }
}
