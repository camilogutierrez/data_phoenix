view: lk_producto_adquirido_sub_estado {
  sql_table_name: @{gcp_dataset_pub}.LK_ProductoAdquiridoSubEstado` ;;
  fields_hidden_by_default: yes

  dimension: producto_adquirido_sub_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoSubEstadoSK ;;
  }

  dimension: producto_adquirido_sub_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubEstadoNombre ;;
  }
}
