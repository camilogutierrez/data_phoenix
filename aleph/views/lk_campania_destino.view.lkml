view: lk_campania_destino {
  sql_table_name: @{gcp_ambiente}.LK_CampaniaDestino` ;;
  fields_hidden_by_default: yes

  dimension: campania_destino_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.CampaniaDestinoSK ;;
  }

  dimension: campania_destino_nombre {
    type: string
    sql: ${TABLE}.CampaniaDestinoNombre ;;
  }
}