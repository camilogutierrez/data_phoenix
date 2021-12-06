view: lk_canal_pago_hw {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CanalPagoHW` ;;
  fields_hidden_by_default: yes

  dimension: canal_pago_hwsk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CanalPagoHWSK ;;
  }

  dimension: canal_pago_hwnombre {
    type: string
    sql: ${TABLE}.CanalPagoHWNombre ;;
  }
}
