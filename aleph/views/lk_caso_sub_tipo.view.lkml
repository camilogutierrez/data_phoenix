view: lk_caso_sub_tipo {
  sql_table_name: @{gcp_dataset_pub}.LK_CasoSubTipo` ;;
  fields_hidden_by_default: yes

  dimension: caso_sub_tipo_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoSubTipoSK ;;
  }

  dimension: caso_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.CasoSubTipoNombre ;;
  }
}
