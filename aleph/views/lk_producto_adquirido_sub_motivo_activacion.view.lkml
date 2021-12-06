view: lk_producto_adquirido_sub_motivo_activacion {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ProductoAdquiridoSubMotivoActivacion` ;;
  fields_hidden_by_default: yes

  dimension: producto_adquirido_sub_motivo_activacion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoAdquiridoSubMotivoActivacionSK ;;
  }

  dimension: producto_adquirido_sub_motivo_activacion_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquiridoSubMotivoActivacionNombre ;;
  }
}
