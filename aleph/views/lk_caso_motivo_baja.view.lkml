view: lk_caso_motivo_baja {
  sql_table_name: @{gcp_ambiente}.LK_CasoMotivoBaja` ;;
  fields_hidden_by_default: yes

  dimension: caso_motivo_baja_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoMotivoBajaSK ;;
  }

  dimension: caso_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.CasoMotivoBajaNombre ;;
  }
}