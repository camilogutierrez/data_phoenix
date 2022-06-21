view: lk_punto_venta_tipo_contacto {
  sql_table_name: @{gcp_ambiente}.LK_PuntoVentaTipoContacto`  ;;
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