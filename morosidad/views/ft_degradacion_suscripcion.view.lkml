view: ft_degradacion_suscripcion {
  label: "Degradacion Suscripcion"
  sql_table_name: @{gcp_ambiente}.FT_DegradacionSuscripcion` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.DEGRADACIONPK;;
  }

  ## Dates

  dimension_group: fin_degra {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.FIN_DEGRA ;;
    datatype: date
    convert_tz: no
    group_label: "Fecha Degradacion Fin"
    label: "Degradacion Fin"
  }

  dimension_group: inicio_degra {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.INICIO_DEGRA ;;
    datatype: date
    convert_tz: no
    group_label: "Fecha Degradacion Inicio"
    label: "Degradacion Inicio"
  }

  dimension: _fecha_creacion {
    type: date_time
    datatype: datetime
    sql: ${TABLE}._fechaCreacion ;;
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  ## Strings

  dimension: _sesion_id {
    type: string
    sql: ${TABLE}._sesionId ;;
    view_label: "Auditoria"
    label: "Sesion Id"
  }

  dimension: _usuario_creacion {
    type: string
    sql: ${TABLE}._usuarioCreacion ;;
    view_label: "Auditoria"
    label: "Usuario Creacion"
  }

  dimension: _usuario_ultima_actualizacion {
    type: string
    sql: ${TABLE}._usuarioUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Usuario Modificacion"
  }

  dimension: degra_status {
    type: string
    sql: ${TABLE}.DEGRA_STATUS ;;
    label: "Degradacion Estado"
  }

  ## Numbers

  dimension: act_acct_id {
    type: number
    sql: ${TABLE}.ACT_ACCT_ID ;;
    label: "ACT Account ID"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    group_label: "Cliente"
    label: "Cliente ID"
  }

  dimension: pri_acct_id {
    type: number
    sql: ${TABLE}.PRI_ACCT_ID ;;
    label: "PRI Account ID"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    label: "Subscripcion Numero"
  }

  dimension: ult_acct_id {
    type: number
    sql: ${TABLE}.ULT_ACCT_ID ;;
    label: "ULT Account ID"
  }

## Measures

  measure: count {
    type: count
    label: "Cantidad"
  }
}
