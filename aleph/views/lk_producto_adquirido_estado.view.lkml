view: lk_producto_adquirido_estado {
  sql_table_name: @{gcp_dataset_pub}.LK_ProductoAdquiridoEstado` ;;
  fields_hidden_by_default: yes

  dimension: producto_adquirido_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoEstadoSK ;;
  }

  dimension: producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoEstadoNombre ;;
  }
}
