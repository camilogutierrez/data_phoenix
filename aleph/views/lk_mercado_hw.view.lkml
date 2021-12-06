view: lk_mercado_hw {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_MercadoHW` ;;
  fields_hidden_by_default: yes

  dimension: mercado_hwsk {
    primary_key: yes
    type: number
    sql: ${TABLE}.MercadoHWSK ;;
  }

  dimension: mercado_hwnombre {
    type: string
    sql: ${TABLE}.MercadoHWNombre ;;
  }
}
