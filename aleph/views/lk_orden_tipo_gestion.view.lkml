view: lk_orden_tipo_gestion {
  sql_table_name: @{gcp_dataset_pub}.LK_OrdenTipoGestion` ;;
  fields_hidden_by_default: yes

  dimension: orden_tipo_gestion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenTipoGestionSK ;;
  }

  dimension: orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoGestionNombre ;;
  }
}
