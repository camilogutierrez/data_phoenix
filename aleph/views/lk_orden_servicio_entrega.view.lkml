view: lk_orden_servicio_entrega {
  sql_table_name: @{gcp_dataset_pub}.LK_OrdenServicioEntrega` ;;
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
