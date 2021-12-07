view: lk_orden_tipo_cambio_plan {
  sql_table_name: @{gcp_dataset_pub}.LK_OrdenTipoCambioPlan` ;;
  fields_hidden_by_default: yes

  dimension: orden_tipo_cambio_plan_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrdenTipoCambioPlanSK ;;
  }

  dimension: orden_tipo_cambio_plan_nombre {
    type: string
    sql: ${TABLE}.OrdenTipoCambioPlanNombre ;;
  }
}
