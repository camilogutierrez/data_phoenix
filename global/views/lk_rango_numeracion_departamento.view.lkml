view: lk_rango_numeracion_departamento {
  sql_table_name: @{gcp_ambiente}.LK_RangoNumeracionDepartamento`    ;;
  fields_hidden_by_default: yes

  dimension: rango_numeracion_departamento_sk {
    primary_key: yes
    type: string
    sql: ${TABLE}.RangoNumeracionDepartamentoSK ;;
  }

  dimension: rango_numeracion_departamento_nombre {
    type: string
    sql: ${TABLE}.RangoNumeracionDepartamentoNombre ;;
  }

  dimension: rango_numeracion_departamento_srcid {
    type: string
    sql: ${TABLE}.RangoNumeracionDepartamentoSRCId ;;
  }
}
