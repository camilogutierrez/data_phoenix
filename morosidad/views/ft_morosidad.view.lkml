view: ft_morosidad {
  sql_table_name: @{gcp_ambiente}.FT_Morosidad` ;;
  suggestions: no
  label: "Morsidad"

 ## Primary Key
  dimension: object_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
  }

  ##################
  ##  Morosidad   ##
  ##################


  ## Dates

  dimension_group: due {
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
    sql: ${TABLE}.DUE_DATE ;;
    label: "Due"
  }

  dimension_group: prox_accion {
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
    label: "Next Action"
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
    label: "Start Collect"
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

  dimension: razonsocial {
    type: string
    sql: ${TABLE}.RAZONSOCIAL ;;
    label: "Razon Social"
  }

  dimension: version_no {
    type: string
    sql: ${TABLE}.VERSION_NO ;;
    label: "Version Number"
  }


  ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    label: "Account ID"
  }

  dimension: action_id {
    type: number
    sql: ${TABLE}.ACTION_ID ;;
    label: "Action ID"
  }

  dimension: collect_debt_id {
    type: number
    sql: ${TABLE}.COLLECT_DEBT_ID ;;
    label: "Collect Debt ID"
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

  dimension: payment_plan_id {
    type: number
    sql: ${TABLE}.PAYMENT_PLAN_ID ;;
    label: "Payment Plan ID"
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
    label: "Last Action ID Exe"
  }


  ## Hidden ##

  dimension: adv_apply_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.ADV_APPLY_AMOUNT ;;
  }

  dimension: dispute_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.DISPUTE_AMOUNT ;;
  }

  dimension: invoice_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.INVOICE_AMOUNT ;;
  }

  dimension: late_payment_fee {
    hidden: yes
    type: number
    sql: ${TABLE}.LATE_PAYMENT_FEE ;;
  }

  dimension: open_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.OPEN_AMOUNT ;;
  }

  dimension: os_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.OS_AMOUNT ;;
  }

  dimension: pending_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.PENDING_AMOUNT ;;
  }

  dimension: writeoff_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.WRITEOFF_AMOUNT ;;
  }

##############
## Measures ##
##############

  measure: total_adv_apply_amount {
    type: sum
    sql: ${TABLE}.ADV_APPLY_AMOUNT ;;
    label: "Adv Apply Amount"
  }

  measure: total_dispute_amount {
    type: sum
    sql: ${TABLE}.DISPUTE_AMOUNT ;;
    label: "Distpute Amount"
  }

  measure: total_invoice_amount {
    type: sum
    sql: ${TABLE}.INVOICE_AMOUNT ;;
    label: "Invoice Amount"
  }

  measure: total_late_payment_fee {
    type: sum
    sql: ${TABLE}.LATE_PAYMENT_FEE ;;
    label: "Late Payement Fee"
  }

  measure: total_open_amount {
    type: sum
    sql: ${TABLE}.OPEN_AMOUNT ;;
    label: "Open Amount"
  }

  measure: total_os_amount {
    type: sum
    sql: ${TABLE}.OS_AMOUNT ;;
    label: "OS Amount"
  }

  measure: total_pending_amount {
    type: sum
    sql: ${TABLE}.PENDING_AMOUNT ;;
    label: "Pending Amount"
  }

  measure: total_writeoff_amount {
    type: sum
    sql: ${TABLE}.WRITEOFF_AMOUNT ;;
    label: "Writeoff Amount"
  }
}
