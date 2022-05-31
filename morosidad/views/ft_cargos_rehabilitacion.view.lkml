view: ft_cargos_rehabilitacion {
  sql_table_name: @{gcp_ambiente}.FT_CargosRehabilitacion`;;
  suggestions: no
  label: "Cargos Rehabilitacion"

  ## Primary Key
  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.CARGOSPK;;
  }

  ##############################
  ##  Cargos Rehabilitacion   ##
  ##############################


  ## Dates

  dimension_group: invoice {
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
    sql: ${TABLE}.INVOICE_DATE ;;
    label: "Invoice"
  }

  dimension_group: resume {
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
    sql: ${TABLE}.RESUME_DATE ;;
    label: "Resume"
  }

  ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    label: "Account Code"
  }

  dimension: bill_cycle_id {
    type: string
    sql: ${TABLE}.BILL_CYCLE_ID ;;
    label: "Bill Cycle ID"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    label: "Customer Code"
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.INVOICE_NO ;;
    label: "Invoice Number"
  }

  ## Numbers

  dimension: accion_id {
    type: number
    sql: ${TABLE}.ACCION_ID ;;
    label: "Action ID"
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    label: "Account ID"
  }

  dimension: charge_code_id {
    type: number
    sql: ${TABLE}.CHARGE_CODE_ID ;;
    label: "Charge Code ID"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    label: "Customer ID"
  }

  dimension: invoice_detail_id {
    type: number
    sql: ${TABLE}.INVOICE_DETAIL_ID ;;
    label: "Invoice Detail ID"
  }

  dimension: task_order_id {
    type: number
    sql: ${TABLE}.TASK_ORDER_ID ;;
    label: "Task Order ID"
  }

  ## Hidden ##

  dimension: charge_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CHARGE_AMT ;;
  }

  ##############
  ## Measures ##
  ##############

  measure: total_charge_amt {
    type: sum
    sql: ${TABLE}.CHARGE_AMT ;;
    label: "Charge Amount"
  }
}
