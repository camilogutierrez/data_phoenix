view: ft_suspension_mora {
  sql_table_name: @{gcp_ambiente}.FT_SuspensionMora` ;;
  suggestions: no
  label: "Suspension Mora"

  ## Primary Key
  dimension: suspensionpk {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.SUSPENSIONPK ;;
  }

  ########################
  ##  Suspension Mora   ##
  ########################


  ## Dates

  dimension_group: fecha_saldo {
    type: time
    timeframes: [
      raw,
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

  dimension_group: resume_actual {
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
    sql: ${TABLE}.RESUME_ACTUAL_DATE ;;
    label: "Resume Actual"
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
    label: "Strat Collect"
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

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
    label: "Last Name"
  }

  dimension: msisdn {
    type: string
    sql: ${TABLE}.MSISDN ;;
    label: "MSISDN"
  }

  dimension: razonsocial {
    type: string
    sql: ${TABLE}.RAZONSOCIAL ;;
    label: "Razon Social"
  }

  dimension: ult_bill_cycle_type {
    type: string
    sql: ${TABLE}.ULT_BILL_CYCLE_TYPE ;;
    label: "ULT Bill Cycle Type"
  }

  dimension: ult_dst_status {
    type: string
    sql: ${TABLE}.ULT_DST_STATUS ;;
    label: "ULT DST Status"
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

  dimension: object_id {
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
    label: "Object ID"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    label: "Sub ID"
  }

  dimension: ult_accion_id_exe {
    type: number
    value_format_name: id
    sql: ${TABLE}.ULT_ACCION_ID_EXE ;;
    label: "ULT Action ID Exe"
  }

  ## Hidden ##

  dimension: os_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.OS_AMOUNT ;;
  }

  dimension: saldo_total {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_TOTAL ;;
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


  ##############
  ## Measures ##
  ##############

  measure: total_os_amount {
    type: sum
    sql: ${TABLE}.OS_AMOUNT ;;
    label: "OS Amount"
  }

  measure: total_saldo_total {
    type: sum
    sql: ${TABLE}.SALDO_TOTAL ;;
    label: "Saldo Total"
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
