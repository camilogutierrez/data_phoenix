view: ft_acciones_mora {
  sql_table_name: @{gcp_ambiente}.FT_AccionesMora` ;;
  label: "Acciones Mora"

  ## Dimensions

    ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(CAST(${fecha_saldo_date} AS STRING FORMAT 'YYYYMMDD'),'-',${object_id});;
  }

    ## Dates

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
    label: "Close Collect"
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
    label: "Saldo"
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
    label: "Proxima Accion"
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
    label: "Start Collect"
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
    label: "Ult Accion Exe"
  }

    ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
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

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.GROUP_CODE ;;
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

  dimension: resume_actual_date {
    type: string
    sql: ${TABLE}.RESUME_ACTUAL_DATE ;;
  }

  dimension: ult_accion_cancel_status {
    type: string
    sql: ${TABLE}.ULT_ACCION_CANCEL_STATUS ;;
  }

  dimension: ult_accion_code_exe {
    type: string
    sql: ${TABLE}.ULT_ACCION_CODE_EXE ;;
  }

  dimension: ult_accion_status {
    type: string
    sql: ${TABLE}.ULT_ACCION_STATUS ;;
  }

  dimension: ult_action_name {
    type: string
    sql: ${TABLE}.ULT_ACTION_NAME ;;
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

  dimension: group_id {
    type: number
    sql: ${TABLE}.GROUP_ID ;;
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
  }

  dimension: os_amount {
    type: number
    sql: ${TABLE}.OS_AMOUNT ;;
  }

  dimension: resume_action_id {
    type: number
    sql: ${TABLE}.RESUME_ACTION_ID ;;
  }

  dimension: saldo_vencido {
    type: number
    sql: ${TABLE}.SALDO_VENCIDO ;;
  }

  dimension: saldo_x_vencer {
    type: number
    sql: ${TABLE}.SALDO_X_VENCER ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
  }

  dimension: task_order_id {
    type: number
    sql: ${TABLE}.TASK_ORDER_ID ;;
  }

  dimension: ult_accion_id_exe {
    type: number
    sql: ${TABLE}.ULT_ACCION_ID_EXE ;;
  }

  ## Measures


}
