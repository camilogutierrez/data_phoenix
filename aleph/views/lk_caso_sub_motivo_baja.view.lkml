view: lk_caso_sub_motivo_baja {
  sql_table_name: @{gcp_dataset_pub}.LK_CasoSubMotivoBaja` ;;
  fields_hidden_by_default: yes

  dimension: caso_sub_motivo_baja_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoSubMotivoBajaSK ;;
  }

  dimension: caso_sub_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.CasoSubMotivoBajaNombre ;;
  }
}
