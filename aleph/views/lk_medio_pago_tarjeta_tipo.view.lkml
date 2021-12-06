view: lk_medio_pago_tarjeta_tipo {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_MedioPagoTarjetaTipo` ;;
  fields_hidden_by_default: yes

  dimension: medio_pago_tarjeta_tipo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.MedioPagoTarjetaTipoSK ;;
  }

  dimension: medio_pago_tarjeta_tipo_nombre {
    type: string
    sql: ${TABLE}.MedioPagoTarjetaTipoNombre ;;
  }
}
