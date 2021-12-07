view: lk_producto_familia {
  sql_table_name: @{gcp_dataset_pub}.LK_ProductoFamilia` ;;
  fields_hidden_by_default: yes

  dimension: producto_familia_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoFamiliaSK ;;
  }

  dimension: producto_familia_nombre {
    type: string
    sql: ${TABLE}.ProductoFamiliaNombre ;;
  }
}
