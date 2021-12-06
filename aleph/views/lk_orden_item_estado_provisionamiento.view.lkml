view: lk_orden_item_estado_provisionamiento {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_OrdenItemEstadoProvisionamiento` ;;
  fields_hidden_by_default: yes

  dimension: orden_item_estado_provisionamiento_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenItemEstadoProvisionamientoSK ;;
  }

  dimension: orden_item_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.OrdenItemEstadoProvisionamientoNombre ;;
  }
}
