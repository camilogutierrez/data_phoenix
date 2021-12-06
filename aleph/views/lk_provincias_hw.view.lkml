view: lk_provincias_hw {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ProvinciasHW` ;;
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
