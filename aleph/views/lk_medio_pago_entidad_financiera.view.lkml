view: lk_medio_pago_entidad_financiera {
  sql_table_name: @{gcp_dataset_pub}.LK_MedioPagoEntidadFinanciera` ;;
  fields_hidden_by_default: yes

  dimension: medio_pago_entidad_financiera_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.MedioPagoEntidadFinancieraSK ;;
  }

  dimension: medio_pago_entidad_financiera_nombre {
    type: string
    sql: ${TABLE}.MedioPagoEntidadFinancieraNombre ;;
  }
}
