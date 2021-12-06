view: lk_medio_pago_cuenta_bancaria_tipo {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_MedioPagoCuentaBancariaTipo` ;;
  fields_hidden_by_default: yes

  dimension: medio_pago_cuenta_bancaria_tipo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.MedioPagoCuentaBancariaTipoSK ;;
  }

  dimension: medio_pago_cuenta_bancaria_tipo_nombre {
    type: string
    sql: ${TABLE}.MedioPagoCuentaBancariaTipoNombre ;;
  }
}
