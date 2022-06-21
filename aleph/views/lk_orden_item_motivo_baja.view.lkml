view: lk_orden_item_motivo_baja {
  sql_table_name: @{gcp_ambiente}.LK_OrdenItemMotivoBaja` ;;
  fields_hidden_by_default: yes

  dimension: orden_item_motivo_baja_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenItemMotivoBajaSK ;;
  }

  dimension: orden_item_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.OrdenItemMotivoBajaNombre ;;
  }
}