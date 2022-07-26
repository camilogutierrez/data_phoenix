view: lk_suspensiones_tipo_estado {
  sql_table_name: @{gcp_ambiente}.LK_SuspensionesTipoEstado` ;;
  fields_hidden_by_default: yes

  dimension: suspensiones_tipo_estado_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.SuspensionesTipoEstadoSK ;;
  }

  dimension: suspensiones_tipo_estado_nombre {
    type: string
    sql: ${TABLE}.SuspensionesTipoEstadoNombre ;;
  }
}
