view: lk_orden_tipo_suspension {
  sql_table_name: @{gcp_ambiente}.LK_OrdenTipoSuspension`    ;;
  fields_hidden_by_default: yes

  dimension: orden_tipo_suspension_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoSuspensionNombre ;;
  }

  dimension: orden_tipo_suspension_sk {
    type: number
    sql: ${TABLE}.OrdenTipoSuspensionSK ;;
  }
}
