view: lk_campania_sub_tipo {
  sql_table_name: @{gcp_dataset_pub}.LK_CampaniaSubTipo` ;;
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
