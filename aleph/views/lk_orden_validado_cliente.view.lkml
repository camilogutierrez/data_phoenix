view: lk_orden_validado_cliente {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_OrdenValidadoCliente` ;;
  fields_hidden_by_default: yes

  dimension: orden_validado_cliente_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenValidadoClienteSK ;;
  }

  dimension: orden_validado_cliente_nombre {
    type: string
    sql: ${TABLE}.OrdenValidadoClienteNombre ;;
  }
}
