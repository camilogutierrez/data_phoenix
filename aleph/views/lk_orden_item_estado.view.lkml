view: lk_orden_item_estado {
  sql_table_name: @{gcp_dataset_pub}.LK_OrdenItemEstado` ;;
  fields_hidden_by_default: yes

  dimension: orden_item_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenItemEstadoSK ;;
  }

  dimension: orden_item_estado_nombre {
    type: string
    sql: ${TABLE}.OrdenItemEstadoNombre ;;
  }
}
