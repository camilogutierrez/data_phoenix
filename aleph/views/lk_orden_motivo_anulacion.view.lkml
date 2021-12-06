view: lk_orden_motivo_anulacion {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_OrdenMotivoAnulacion` ;;
  fields_hidden_by_default: yes

  dimension: orden_motivo_anulacion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenMotivoAnulacionSK ;;
  }

  dimension: orden_motivo_anulacion_nombre {
    type: string
    sql: ${TABLE}.OrdenMotivoAnulacionNombre ;;
  }
}
