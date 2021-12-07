view: lk_provincias_hw {
  sql_table_name: @{gcp_dataset_pub}.LK_ProvinciasHW` ;;
  fields_hidden_by_default: yes

  dimension: provincias_hwsk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProvinciasHWSK ;;
  }

  dimension: provincias_hwnombre {
    type: string
    sql: ${TABLE}.ProvinciasHWNombre ;;
  }
}
