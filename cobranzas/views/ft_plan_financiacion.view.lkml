view: ft_plan_financiacion {
  sql_table_name: @{gcp_dataset_pub}.FT_PlanFinanciacion`;;
  suggestions: no
  label: "Plan Financiación"

  ## Primary Key

  dimension: pk {
    primary_key: yes
    hidden: yes
    type:  string
    sql:concat(${TABLE}.INSTALLMENT_INST_ID, ${TABLE}.CYCLE_SEQ)
  }

  ##########################
  ##  Plan Financiación   ##
  ##########################

  ## Dates

  dimension_group: ar_payment {
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
    sql: ${TABLE}.AR_PAYMENT_DATE ;;
    label: "AR Payment Date"
  }

  dimension_group: billed {
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
    sql: ${TABLE}.BILLED_DATE ;;
    label: "Billed Date"
  }

  dimension_group: create_date {
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
    sql: ${TABLE}.CREATE_DATE ;;
    label: "Create Date"
  }

  dimension_group: estimated_billing {
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
    sql: ${TABLE}.ESTIMATED_BILLING_DATE ;;
    label: "Estimated Billing Date"
  }

  dimension_group: exp_date {
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
    sql: ${TABLE}.EXP_DATE ;;
    label: "EXP Date"
  }

  dimension_group: due_date {
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
    label: "Due Date"
  }

  dimension_group: inst_create {
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
    sql: ${TABLE}.INST_CREATE_DATE ;;
    label: "INST Create Date"
  }

  dimension_group: inst_exp {
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
    sql: ${TABLE}.INST_EXP_DATE ;;
    label: "INST EXP Date"
  }

  dimension_group: modify {
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
    sql: ${TABLE}.MODIFY_TIME ;;
    label: "Modify Date"
  }

  dimension_group: payment_date {
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
    sql: ${TABLE}.PAYMENT_DATE ;;
    label: "Payment Date"
  }

  dimension_group: repay_due {
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
    sql: ${TABLE}.REPAY_DUE_DATE ;;
    label: "Repay Due Date"
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

  dimension: contract_id {
    type: string
    sql: ${TABLE}.CONTRACT_ID ;;
    label: "Contract ID"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    label: "Customer Code"
  }

  dimension: cycle_class {
    type: string
    sql: ${TABLE}.CYCLE_CLASS ;;
    label: "Cycle Class"
  }

  dimension: cycle_status {
    type: string
    sql: ${TABLE}.CYCLE_STATUS ;;
    label: "Cycle Status"
  }

  dimension: cycle_type {
    type: string
    sql: ${TABLE}.CYCLE_TYPE ;;
    label: "Cycle Type"
  }

  dimension: payment_delay_flag {
    type: string
    sql: ${TABLE}.PAYMENT_DELAY_FLAG ;;
    label: "Payment Delay Flag"
  }

  dimension: plan_type {
    type: string
    sql: ${TABLE}.PLAN_TYPE ;;
    label: "Plan Type"
  }

  dimension: traf_invoice_no {
    type: string
    sql: ${TABLE}.TRAF_INVOICE_NO ;;
    label: "TRAF Invoice Number"
  }

  dimension: vta_invoice_no {
    type: string
    sql: ${TABLE}.VTA_INVOICE_NO ;;
    label: "VTA Invoice Number"
  }


  ## Numbers

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

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
    label: "Currency ID"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    label: "Customer ID"
  }

  dimension: cycle_seq {
    type: number
    sql: ${TABLE}.CYCLE_SEQ ;;
    label: "Cycle SEQ"
  }

  dimension: installment_inst_id {
    type: number
    sql: ${TABLE}.INSTALLMENT_INST_ID ;;
    label: "Installment INST ID"
  }

  dimension: minima_cuota_impaga {
    type: number
    sql: ${TABLE}.MINIMA_CUOTA_IMPAGA ;;
    label: "Minima Cuota Impaga"
  }

  dimension: total_cycle {
    type: number
    sql: ${TABLE}.TOTAL_CYCLE ;;
    label: "Total Cycle"
  }


  ## Hidden ##

  dimension: amount {
    hidden: yes
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: billing_discount_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.BILLING_DISCOUNT_AMT ;;
  }

  dimension: initial_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.INITIAL_AMT ;;
  }

  dimension: total_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.TOTAL_AMT ;;
  }

  dimension: traf_invoice_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.TRAF_INVOICE_AMT ;;
  }

  dimension: traf_open_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.TRAF_OPEN_AMT ;;
  }

  dimension: unpaid_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.UNPAID_AMT ;;
  }

  dimension: vta_invoice_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.VTA_INVOICE_AMT ;;
  }

  dimension: vta_tax_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.VTA_TAX_AMT ;;
  }

  ##############
  ## Measures ##
  ##############

  measure: total_amount {
    type: sum
    sql: ${TABLE}.AMOUNT ;;
    label: "Total Amount"
  }

  measure: total_billing_discount_amt {
    type: sum
    sql: ${TABLE}.BILLING_DISCOUNT_AMT ;;
    label: "Total Billing Discount"
  }

  measure: total_initial_amt {
    type: sum
    sql: ${TABLE}.INITIAL_AMT ;;
    label: "Total Initial Amount"
  }

  measure: total_total_amt {
    type: sum
    sql: ${TABLE}.TOTAL_AMT ;;
    label: "Total Amount"
  }

  measure: total_traf_invoice_amt {
    type: sum
    sql: ${TABLE}.TRAF_INVOICE_AMT ;;
    label: "Total TRAF Invoice Amount"
  }

  measure: total_traf_open_amt {
    type: sum
    sql: ${TABLE}.TRAF_OPEN_AMT ;;
    label: "Total TRAF Open Amount"
  }

  measure: total_unpaid_amt {
    type: sum
    sql: ${TABLE}.UNPAID_AMT ;;
    label: "Total Unpaid Amount"
  }

  measure: total_vta_invoice_amt {
    type: sum
    sql: ${TABLE}.VTA_INVOICE_AMT ;;
    label: "Total VTA Invoice Amount"
  }

  measure: total_vta_tax_amt {
    type: sum
    sql: ${TABLE}.VTA_TAX_AMT ;;
    label: "Total VTA Tax Amount"
  }
}
