view: lk_cliente_tipo {
  sql_table_name: @{gcp_dataset_pub}.LK_ClienteTipo` ;;
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
