view: lk_orden_motivo_anulacion {
  sql_table_name: @{gcp_dataset_pub}.LK_OrdenMotivoAnulacion` ;;
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
