view: lk_producto_estado {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ProductoEstado`  ;;

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
