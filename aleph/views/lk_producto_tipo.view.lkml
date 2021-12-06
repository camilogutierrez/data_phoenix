view: lk_producto_tipo {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ProductoTipo` ;;
  fields_hidden_by_default: yes

  dimension: producto_tipo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoTipoSK ;;
  }

  dimension: producto_tipo_nombre {
    type: string
    sql: ${TABLE}.ProductoTipoNombre ;;
  }
}
