view: lk_producto_adquirido_estado_red {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ProductoAdquiridoEstadoRed` ;;
  fields_hidden_by_default: yes

  dimension: producto_adquirido_estado_red_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoEstadoRedSK ;;
  }

  dimension: producto_adquirido_estado_red_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoRedNombre ;;
  }
}
