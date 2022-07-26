view: ft_suscripcion_cambios_estado {
  label: "Suscripcion Cambios Estado"
  sql_table_name: @{gcp_ambiente}.FT_SuscripcionCambiosEstado` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql:  CONCAT(CAST(${change_date} AS STRING FORMAT 'YYYYMMDD'),'-',${sub_id}) ;;
  }

  ## Dates

  dimension_group: change {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.CHANGE_DATE ;;
    datatype: timestamp
    label: "Cambio"
    group_label: "Fecha Cambio"
  }

  dimension_group: suspension {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.SUSPENSION_DATE ;;
    datatype: timestamp
    label: "Suspension"
    group_label: "Fecha Suspension"
  }

  dimension_group: rehabilitacion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.REHABILITACION_DATE ;;
    datatype: timestamp
    label: "Rehabilitacion"
    group_label: "Fecha Rehabilitacion"
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
    label: "Fecha Actualizacion"
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

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE ;;
  }

  dimension: dst_status {
    type: string
    sql: ${TABLE}.DST_STATUS ;;
  }

  dimension: dst_status_des {
    type: string
    sql: ${TABLE}.DST_STATUS_DES ;;
  }

  dimension: dst_status_detail {
    type: string
    sql: ${TABLE}.DST_STATUS_DETAIL ;;
  }

  dimension: dst_status_detail_des {
    type: string
    sql: ${TABLE}.DST_STATUS_DETAIL_DES ;;
  }

  dimension: movimiento_des {
    type: string
    sql: ${TABLE}.MOVIMIENTO_DES ;;
  }

  dimension: payment_mode {
    type: string
    sql: ${TABLE}.PAYMENT_MODE ;;
  }

  dimension: src_status {
    type: string
    sql: ${TABLE}.SRC_STATUS ;;
  }

  dimension: src_status_des {
    type: string
    sql: ${TABLE}.SRC_STATUS_DES ;;
  }

  dimension: src_status_detail {
    type: string
    sql: ${TABLE}.SRC_STATUS_DETAIL ;;
  }

  dimension: src_status_detail_des {
    type: string
    sql: ${TABLE}.SRC_STATUS_DETAIL_DES ;;
  }

  dimension: sub_identity {
    type: string
    sql: ${TABLE}.SUB_IDENTITY ;;
  }

  ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: ind_movimiento {
    type: number
    sql: ${TABLE}.IND_MOVIMIENTO ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
  }

##############
## Measures ##
##############

  measure: count {
    type: count
    drill_fields: []
  }
}
