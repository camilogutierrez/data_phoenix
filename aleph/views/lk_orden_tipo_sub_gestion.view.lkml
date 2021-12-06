view: lk_orden_tipo_sub_gestion {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_OrdenTipoSubGestion` ;;
  fields_hidden_by_default: yes

  dimension: orden_tipo_sub_gestion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenTipoSubGestionSK ;;
  }

  dimension: orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoSubGestionNombre ;;
  }
}
