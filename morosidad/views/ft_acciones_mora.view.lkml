view: ft_acciones_mora {
  sql_table_name: `teco-prod-edw-5e1b.ue4_prod_edw_pub_gcp.FT_AccionesMora`
    ;;

  dimension_group: _fecha_creacion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}._fechaCreacion ;;
  }

  dimension_group: _fecha_ultima_actualizacion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}._fechaUltimaActualizacion ;;
  }

  dimension: _sesion_id {
    type: string
    sql: ${TABLE}._sesionId ;;
  }

  dimension: _usuario_creacion {
    type: string
    sql: ${TABLE}._usuarioCreacion ;;
  }

  dimension: _usuario_ultima_actualizacion {
    type: string
    sql: ${TABLE}._usuarioUltimaActualizacion ;;
  }

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
  }

  dimension_group: close_collect {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CLOSE_COLLECT_DATE ;;
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: document_number {
    type: string
    sql: ${TABLE}.DOCUMENT_NUMBER ;;
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}.DOCUMENT_TYPE ;;
  }

  dimension: exec_status {
    type: string
    sql: ${TABLE}.EXEC_STATUS ;;
  }

  dimension_group: fecha_saldo {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FECHA_SALDO ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.GROUP_CODE ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.GROUP_ID ;;
  }

  dimension: group_version {
    type: string
    sql: ${TABLE}.GROUP_VERSION ;;
  }

  dimension: hold_status {
    type: string
    sql: ${TABLE}.HOLD_STATUS ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }

  dimension: mgr_status {
    type: string
    sql: ${TABLE}.MGR_STATUS ;;
  }

  dimension: mgr_status_reason {
    type: string
    sql: ${TABLE}.MGR_STATUS_REASON ;;
  }

  dimension: msisdn {
    type: string
    sql: ${TABLE}.MSISDN ;;
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
  }

  dimension: os_amount {
    type: number
    sql: ${TABLE}.OS_AMOUNT ;;
  }

  dimension: pa_status {
    type: string
    sql: ${TABLE}.PA_STATUS ;;
  }

  dimension: plan_code {
    type: string
    sql: ${TABLE}.PLAN_CODE ;;
  }

  dimension: plan_version {
    type: string
    sql: ${TABLE}.PLAN_VERSION ;;
  }

  dimension_group: prox_accion_fecha {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PROX_ACCION_FECHA ;;
  }

  dimension: razonsocial {
    type: string
    sql: ${TABLE}.RAZONSOCIAL ;;
  }

  dimension: resume_accion_cancel_status {
    type: string
    sql: ${TABLE}.RESUME_ACCION_CANCEL_STATUS ;;
  }

  dimension: resume_accion_status {
    type: string
    sql: ${TABLE}.RESUME_ACCION_STATUS ;;
  }

  dimension: resume_action_code {
    type: string
    sql: ${TABLE}.RESUME_ACTION_CODE ;;
  }

  dimension: resume_action_id {
    type: number
    sql: ${TABLE}.RESUME_ACTION_ID ;;
  }

  dimension: resume_actual_date {
    type: string
    sql: ${TABLE}.RESUME_ACTUAL_DATE ;;
  }

  dimension: saldo_vencido {
    type: number
    sql: ${TABLE}.SALDO_VENCIDO ;;
  }

  dimension: saldo_x_vencer {
    type: number
    sql: ${TABLE}.SALDO_X_VENCER ;;
  }

  dimension_group: start_collect {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.START_COLLECT_DATE ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
  }

  dimension: task_order_id {
    type: number
    sql: ${TABLE}.TASK_ORDER_ID ;;
  }

  dimension: ult_accion_cancel_status {
    type: string
    sql: ${TABLE}.ULT_ACCION_CANCEL_STATUS ;;
  }

  dimension: ult_accion_code_exe {
    type: string
    sql: ${TABLE}.ULT_ACCION_CODE_EXE ;;
  }

  dimension_group: ult_accion_fecha_exe {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ULT_ACCION_FECHA_EXE ;;
  }

  dimension: ult_accion_id_exe {
    type: number
    value_format_name: id
    sql: ${TABLE}.ULT_ACCION_ID_EXE ;;
  }

  dimension: ult_accion_status {
    type: string
    sql: ${TABLE}.ULT_ACCION_STATUS ;;
  }

  dimension: ult_action_name {
    type: string
    sql: ${TABLE}.ULT_ACTION_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [ult_action_name, last_name, first_name]
  }
}
