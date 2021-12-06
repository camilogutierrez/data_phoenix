view: lk_cuenta_tipo {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CuentaTipo` ;;
  fields_hidden_by_default: yes

  dimension: cuenta_tipo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CuentaTipoSK ;;
  }

  dimension: cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.CuentaTipoNombre ;;
  }
}
