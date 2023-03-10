view: lk_caso_tipo_item {
  sql_table_name: @{gcp_ambiente}.LK_CasoTipoItem` ;;
  fields_hidden_by_default: yes

  dimension: caso_tipo_item_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CasoTipoItemSK ;;
  }

  dimension: caso_tipo_item_nombre {
    type: string
    sql: ${TABLE}.CasoTipoItemNombre ;;
  }
}