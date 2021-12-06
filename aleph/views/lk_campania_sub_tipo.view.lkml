view: lk_campania_sub_tipo {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_CampaniaSubTipo` ;;
  fields_hidden_by_default: yes

  dimension: campania_sub_tipo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CampaniaSubTipoSK ;;
  }

  dimension: campania_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.CampaniaSubTipoNombre ;;
  }
}
