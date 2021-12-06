view: lk_punto_venta_tipo_contacto {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_PuntoVentaTipoContacto`  ;;
  fields_hidden_by_default: yes

  dimension: punto_venta_tipo_contacto_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PuntoVentaTipoContactoSK ;;
  }

  dimension: punto_venta_tipo_contacto_nombre {
    type: string
    sql: ${TABLE}.PuntoVentaTipoContactoNombre ;;
  }
}
