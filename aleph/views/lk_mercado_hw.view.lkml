view: lk_mercado_hw {
  sql_table_name: @{gcp_dataset_pub}.LK_MercadoHW` ;;
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
