view: lk_medio_pago_tipo {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_MedioPagoTipo` ;;
  fields_hidden_by_default: yes

  dimension: medio_pago_tipo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.MedioPagoTipoSK ;;
  }

  dimension: medio_pago_tipo_nombre {
    type: string
    sql: ${TABLE}.MedioPagoTipoNombre ;;
  }
}
