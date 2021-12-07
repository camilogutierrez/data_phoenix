view: lk_cuenta_tipo {
  sql_table_name: @{gcp_dataset_pub}.LK_CuentaTipo` ;;
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
