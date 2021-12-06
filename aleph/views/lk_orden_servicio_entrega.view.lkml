view: lk_orden_servicio_entrega {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_OrdenServicioEntrega` ;;
  fields_hidden_by_default: yes

  dimension: orden_servicio_entrega_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenServicioEntregaSK ;;
  }

  dimension: orden_servicio_entrega_nombre {
    type: string
    sql: ${TABLE}.OrdenServicioEntregaNombre ;;
  }
}
