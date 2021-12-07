view: lk_producto_estado {
  sql_table_name: @{gcp_dataset_pub}.LK_ProductoEstado`  ;;
  fields_hidden_by_default: yes

  dimension: producto_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoEstadoSK ;;
  }

  dimension: producto_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoEstadoNombre ;;
  }
}
