view: lk_producto_adquirido_estado_provisionamiento {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ProductoAdquiridoEstadoProvisionamiento`  ;;
  fields_hidden_by_default: yes

  dimension: producto_adquirido_estado_provisionamiento_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoEstadoProvisionamientoSK ;;
  }

  dimension: producto_adquirido_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoProvisionamientoNombre ;;
  }
}
