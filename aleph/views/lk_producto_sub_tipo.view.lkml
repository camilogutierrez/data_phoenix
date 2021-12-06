view: lk_producto_sub_tipo {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ProductoSubTipo` ;;
  fields_hidden_by_default: yes

  dimension: producto_sub_tipo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductoSubTipoSK ;;
  }

  dimension: producto_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.ProductoSubTipoNombre ;;
  }
}
