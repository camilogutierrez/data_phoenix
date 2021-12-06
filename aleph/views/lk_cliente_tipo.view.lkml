view: lk_cliente_tipo {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_ClienteTipo` ;;
  fields_hidden_by_default: yes

  dimension: cliente_tipo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.ClienteTipoSK ;;
  }

  dimension: cliente_tipo_nombre {
    type: string
    sql: ${TABLE}.ClienteTipoNombre ;;
  }
}
