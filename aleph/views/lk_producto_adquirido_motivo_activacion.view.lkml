view: lk_producto_adquirido_motivo_activacion {
  sql_table_name: @{gcp_dataset_pub}.LK_ProductoAdquiridoMotivoActivacion` ;;
  fields_hidden_by_default: yes

  dimension: producto_adquirido_motivo_activacion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoMotivoActivacionSK ;;
  }

  dimension: producto_adquirido_motivo_activacion_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoMotivoActivacionNombre ;;
  }
}
