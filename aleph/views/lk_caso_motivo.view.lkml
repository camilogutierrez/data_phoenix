view: lk_caso_motivo {
  sql_table_name: @{gcp_dataset_pub}.LK_CasoMotivo` ;;
  fields_hidden_by_default: yes

  dimension: caso_motivo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoMotivoSK ;;
  }

  dimension: caso_motivo_nombre {
    type: string
    sql: ${TABLE}.CasoMotivoNombre ;;
  }
}
