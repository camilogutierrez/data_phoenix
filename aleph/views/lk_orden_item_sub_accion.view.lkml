view: lk_orden_item_sub_accion {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_OrdenItemSubAccion` ;;
  fields_hidden_by_default: yes

  dimension: orden_item_sub_accion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenItemSubAccionSK ;;
  }

  dimension: orden_item_sub_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenItemSubAccionNombre ;;
  }
}
