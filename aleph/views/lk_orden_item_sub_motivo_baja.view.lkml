view: lk_orden_item_sub_motivo_baja {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_OrdenItemSubMotivoBaja` ;;
  fields_hidden_by_default: yes

  dimension: orden_item_sub_motivo_baja_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenItemSubMotivoBajaSK ;;
  }

  dimension: orden_item_sub_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.OrdenItemSubMotivoBajaNombre ;;
  }
}
