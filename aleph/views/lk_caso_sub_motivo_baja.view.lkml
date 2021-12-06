view: lk_caso_sub_motivo_baja {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CasoSubMotivoBaja` ;;
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
