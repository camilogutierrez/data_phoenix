view: lk_orden_metodo_entrega {
  sql_table_name: @{gcp_dataset_pub}.LK_OrdenMetodoEntrega` ;;
  fields_hidden_by_default: yes

  dimension: orden_metodo_entrega_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenMetodoEntregaSK ;;
  }

  dimension: orden_metodo_entrega_nombre {
    type: string
    sql: ${TABLE}.OrdenMetodoEntregaNombre ;;
  }
}
