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
    sql: ${TABLE}.SUB_ID;;
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

  dimension_group: status_date {
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
    sql: ${TABLE}.STATUS_DATE ;;
    datatype: date
    convert_tz: no
    group_label: "Fecha Status"
    label: "Status"
  }

  dimension: _fecha_creacion {
    type: date_time
    datatype: datetime
    sql: ${TABLE}._fechaCreacion ;;
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date_time
    datatype: datetime
    sql: ${TABLE}._fechaUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Fecha Ultima Actualizacion"
  }

  ## Strings

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

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    label: "Cuenta Codigo"
  }

  dimension: degra_status {
    type: string
    sql: ${TABLE}.STATUS ;;
    label: "Degradacion Estado"
  }

  dimension: familia_producto {
    type: string
    sql: ${TABLE}.FAMILIA_PRODUCTO ;;
    label: "Familia Producto"
  }

  dimension: id_recurso {
    type: string
    sql: ${TABLE}.ID_RECURSO ;;
    label: "ID Recurso"
  }

  dimension: msisdn {
    type: string
    sql: ${TABLE}.MSISDN ;;
    label: "MSISDN"
  }

  dimension: payment_mode {
    type: string
    sql: ${TABLE}.PAYMENT_MODE ;;
    label: "Payment Mode"
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
    label: "Status"
  }

  dimension: status_desc {
    type: string
    sql: ${TABLE}.STATUS_DESC ;;
    label: "Status Desc"
  }

  ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    value_format_name: id
    label: "Account ID"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    value_format_name: id
    label: "Cliente ID"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    value_format_name: id
    label: "Subscripcion Numero"
  }

## Measures

  measure: count {
    type: count
    label: "Cantidad"
  }
}
