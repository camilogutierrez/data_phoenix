view: lk_estado_fin_atendida {
  sql_table_name: @{gcp_dataset_pub}.LK_EstadoFinAtendida`;;
  fields_hidden_by_default: yes

  dimension: estado_fin_atendidasrcid {
    primary_key: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_ATENDIDASRCId ;;
  }

  dimension: estado_fin_atendidanombre {
    type: string
    sql: ${TABLE}.ESTADO_FIN_ATENDIDANombre ;;
  }
}
