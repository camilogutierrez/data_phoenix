view: ft_acciones_mora {
  sql_table_name: @{gcp_ambiente}.FT_AccionesMora` ;;
  label: "Acciones Mora"

  ## Dimensions

    ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.ACCIONESPK;;
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
    datatype: date
    convert_tz: no
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
    label: "Exe"
  }

    ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    label: "Account Code"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    label: "Customer Code"
  }

  dimension: document_number {
    type: string
    sql: ${TABLE}.DOCUMENT_NUMBER ;;
    label: "Document Number"
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}.DOCUMENT_TYPE ;;
    label: "Document Type"
  }

  dimension: exec_status {
    type: string
    sql: ${TABLE}.EXEC_STATUS ;;
    label: "Exec Status"
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
    label: "First Name"
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.GROUP_CODE ;;
    label: "Group Code"
  }

  dimension: group_version {
    type: string
    sql: ${TABLE}.GROUP_VERSION ;;
    label: "Group Version"
  }

  dimension: ult_accion_hold_status {
    type: string
    sql: ${TABLE}.ULT_ACCION_HOLD_STATUS ;;
    group_label: "Ultima Accion"
    group_item_label: "Hold Status"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
    label: "Last Name"
  }

  dimension: mgr_status {
    type: string
    sql: ${TABLE}.MGR_STATUS ;;
    label: "MGR Status"
  }

  dimension: mgr_status_reason {
    type: string
    sql: ${TABLE}.MGR_STATUS_REASON ;;
    label: "MGR Status Reason"
  }

  dimension: msisdn {
    type: string
    sql: ${TABLE}.MSISDN ;;
    label: "MSISDN"
  }

  dimension: pa_status {
    type: string
    sql: ${TABLE}.PA_STATUS ;;
    label: "PA Status"
  }

  dimension: plan_code {
    type: string
    sql: ${TABLE}.PLAN_CODE ;;
    label: "Plan Code"
  }

  dimension: plan_version {
    type: string
    sql: ${TABLE}.PLAN_VERSION ;;
    label: "Plan Version"
  }

  dimension: razonsocial {
    type: string
    sql: ${TABLE}.RAZONSOCIAL ;;
    label: "Razon Social"
  }

  dimension: resume_accion_cancel_status {
    type: string
    sql: ${TABLE}.RESUME_ACCION_CANCEL_STATUS ;;
    group_label: "Resume Action"
    group_item_label: "Cancel Status"
  }

  dimension: resume_accion_status {
    type: string
    sql: ${TABLE}.RESUME_ACCION_STATUS ;;
    group_label: "Resume Action"
    group_item_label: "Status"
  }

  dimension: resume_action_code {
    type: string
    sql: ${TABLE}.RESUME_ACTION_CODE ;;
    group_label: "Resume Action"
    group_item_label: "Code"

  }

  dimension: resume_actual_date {
    type: string
    sql: ${TABLE}.RESUME_ACTUAL_DATE ;;
    label: "Resue Actual Date"
  }

  dimension: ult_accion_cancel_status {
    type: string
    sql: ${TABLE}.ULT_ACCION_CANCEL_STATUS ;;
    group_label: "Ultima Accion"
    group_item_label: "Cancel Status"
  }

  dimension: ult_accion_code_exe {
    type: string
    sql: ${TABLE}.ULT_ACCION_CODE_EXE ;;
    group_label: "Ultima Accion"
    group_item_label: "Code Exe"
  }

  dimension: ult_accion_status {
    type: string
    sql: ${TABLE}.ULT_ACCION_STATUS ;;
    group_label: "Ultima Accion"
    group_item_label: "Status"
  }

  dimension: ult_accion_name {
    type: string
    sql: ${TABLE}.ULT_ACCION_NAME ;;
    group_label: "Ultima Accion"
    group_item_label: "Name"
  }

    ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    label: "Account ID"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    label: "Customer ID"
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.GROUP_ID ;;
    label: "Group ID"
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
    label: "Object ID"
  }

  dimension: resume_action_id {
    type: number
    sql: ${TABLE}.RESUME_ACTION_ID ;;
    group_label: "Resume Action"
    group_item_label: "ID"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    label: "Sub ID"
  }

  dimension: ult_accion_task_order_id {
    type: number
    sql: ${TABLE}.ULT_ACCION_TASK_ORDER_ID ;;
    group_label: "Ultima Accion"
    group_item_label: "Task Order ID"
  }

  dimension: ult_accion_id_exe {
    type: number
    sql: ${TABLE}.ULT_ACCION_ID_EXE ;;
    group_label: "Ultima Accion"
    group_item_label: "ID Exe"
  }

  ## Hidden

  dimension: os_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.OS_AMOUNT ;;
  }

  dimension: saldo_vencido {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_VENCIDO ;;
  }

  dimension: saldo_x_vencer {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_X_VENCER ;;
  }


  ## Measures

  measure: total_os_amount {
    type: sum
    sql: ${TABLE}.OS_AMOUNT ;;
    label: "OS Amount"
  }

  measure: total_saldo_vencido {
    type: sum
    sql: ${TABLE}.SALDO_VENCIDO ;;
    label: "Saldo Vencido"
  }

  measure: total_saldo_x_vencer {
    type: sum
    sql: ${TABLE}.SALDO_X_VENCER ;;
    label: "Saldo por Vencer"
  }

}
