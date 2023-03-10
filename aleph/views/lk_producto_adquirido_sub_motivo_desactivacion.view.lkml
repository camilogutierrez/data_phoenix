view: lk_producto_adquirido_sub_motivo_desactivacion {
  sql_table_name: @{gcp_ambiente}.LK_ProductoAdquiridoSubMotivoDesactivacion` ;;
  fields_hidden_by_default: yes

  dimension: producto_adquirido_sub_motivo_desactivacion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoSubMotivoDesactivacionSK ;;
  }

  dimension: producto_adquirido_sub_motivo_desactivacion_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubMotivoDesactivacionNombre ;;
  }
}