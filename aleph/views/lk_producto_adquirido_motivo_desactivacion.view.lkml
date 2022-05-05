view: lk_producto_adquirido_motivo_desactivacion {
  sql_table_name: @{gcp_ambiente}.LK_ProductoAdquiridoMotivoDesactivacion` ;;
  fields_hidden_by_default: yes

  dimension: producto_adquirido_motivo_desactivacion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoMotivoDesactivacionSK ;;
  }

  dimension: producto_adquirido_motivo_desactivacion_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoMotivoDesactivacionNombre ;;
  }
}