view: ft_pagos {
  sql_table_name:  @{gcp_dataset_pub}.FT_Pagos`;;
  suggestions: no
  label: "Pagos"

  ## Primary Key
  dimension: pk {
    primary_key: yes
    hidden: yes
    type:  string
    sql:${TABLE}.PAGOSPK;;
  }

  ##############
  ##  Pagos   ##
  ##############

  ## Dates

  dimension_group: check {
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
    sql: ${TABLE}.CHECK_DATE ;;
    label: "Check"
  }

  dimension_group: entry {
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
    sql: ${TABLE}.ENTRY_DATE ;;
    label: "Entry"
  }

  dimension_group: fecha_contable {
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
    sql: ${TABLE}.FECHA_CONTABLE ;;
    label: "Fecha Contable"
  }

  dimension_group: last_update {
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
    sql: ${TABLE}.LAST_UPDATE_DATE ;;
    label: "Last Update"
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
    label: "Payment"
  }

  dimension_group: reversal {
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
    sql: ${TABLE}.REVERSAL_DATE ;;
    label: "Reversal"
  }

  dimension_group: trx_trans {
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
    sql: ${TABLE}.TRX_TRANS_DATE ;;
    label: "TRX Transaction"
  }


  ## Strings

  dimension: access_method {
    type: string
    sql: ${TABLE}.ACCESS_METHOD ;;
    label: "Access Method"
  }

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    label: "Account"
  }

  dimension: acct_payment_mode {
    type: string
    sql: ${TABLE}.ACCT_PAYMENT_MODE ;;
    label: "Account Payment Mode"
  }

  dimension: acct_payment_mode_des {
    type: string
    sql: ${TABLE}.ACCT_PAYMENT_MODE_DES ;;
    label: "Account Payment Mode Description"
  }

  dimension: bank_acct_name {
    type: string
    sql: ${TABLE}.BANK_ACCT_NAME ;;
    label: "Bank Account Name"
  }

  dimension: bank_branch_code {
    type: string
    sql: ${TABLE}.BANK_BRANCH_CODE ;;
    label: "Bank Branch Code"
  }

  dimension: bank_code {
    type: string
    sql: ${TABLE}.BANK_CODE ;;
    label: "Bank Code"
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}.BANK_NAME ;;
    label: "Bank Name"
  }

  dimension: bank_promotion_code {
    type: string
    sql: ${TABLE}.BANK_PROMOTION_CODE ;;
    label: "Bank Promotion Code"
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE ;;
    label: "Bill Cycle Type"
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.CHANNEL_ID ;;
    label: "Channel ID"
  }

  dimension: check_no {
    type: string
    sql: ${TABLE}.CHECK_NO ;;
    label: "Check Number"
  }

  dimension: credit_card_des {
    type: string
    sql: ${TABLE}.CREDIT_CARD_DES ;;
    label: "Credit Card Description"
  }

  dimension: credit_card_no {
    type: string
    sql: ${TABLE}.CREDIT_CARD_NO ;;
    label: "Credit Card Number"
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.CURRENCY_NAME ;;
    label: "Currency Name"
  }

  dimension: currency_symbol {
    type: string
    sql: ${TABLE}.CURRENCY_SYMBOL ;;
    label: "Currency Symbol"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    label: "Customer Code"
  }

  dimension: cust_first_name {
    type: string
    sql: ${TABLE}.CUST_FIRST_NAME ;;
    label: "Customer First Name"
  }

  dimension: cust_last_name {
    type: string
    sql: ${TABLE}.CUST_LAST_NAME ;;
    label: "Customer Last Name"
  }

  dimension: cust_segment {
    type: string
    sql: ${TABLE}.CUST_SEGMENT ;;
    label: "Customer Segment"
  }

  dimension: c_payment_date {
    type: string
    sql: ${TABLE}.C_PAYMENT_DATE ;;
    label: "Payment Date"
  }

  dimension: header_bank_code {
    type: string
    sql: ${TABLE}.HEADER_BANK_CODE ;;
    label: "Header Bank Code"
  }

  dimension: ice_channel_code {
    type: string
    sql: ${TABLE}.ICE_CHANNEL_CODE ;;
    label: "Ice Channel Code"
  }

  dimension: ind_unallocated {
    type: string
    sql: ${TABLE}.IND_UNALLOCATED ;;
    label: "IND Unallocated"
  }

  dimension: ind_wondersoft {
    type: string
    sql: ${TABLE}.IND_WONDERSOFT ;;
    label: "IND Wondersoft"
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.INVOICE_NO ;;
    label: "Invoice Number"
  }

  dimension: invoice_type_inf {
    type: string
    sql: ${TABLE}.INVOICE_TYPE_INF ;;
    label: "Invoice Type INF"
  }

  dimension: is_invoice_payment {
    type: string
    sql: ${TABLE}.IS_INVOICE_PAYMENT ;;
    label: "IS Invoice Payment"
  }

  dimension: nro_cupon_tarjeta {
    type: string
    sql: ${TABLE}.NRO_CUPON_TARJETA ;;
    label: "Numero Cupon Tarjeta"
  }

  dimension: number_of_installment {
    type: string
    sql: ${TABLE}.NUMBER_OF_INSTALLMENT ;;
    label: "Number of Installment"
  }

  dimension: operation_type {
    type: string
    sql: ${TABLE}.OPERATION_TYPE ;;
    label: "Operation Type"
  }

  dimension: operation_type_inf {
    type: string
    sql: ${TABLE}.OPERATION_TYPE_INF ;;
    label: "Operation Type INF"
  }

  dimension: oper_id {
    type: string
    sql: ${TABLE}.OPER_ID ;;
    label: "Operation ID"
  }

  dimension: paid_flag {
    type: string
    sql: ${TABLE}.PAID_FLAG ;;
    label: "Paid Flag"
  }

  dimension: payment_channel_name {
    type: string
    sql: ${TABLE}.PAYMENT_CHANNEL_NAME ;;
    label: "Payment Channel"
  }

  dimension: payment_method_des {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_DES ;;
    label: "Payment Method Description"
  }

  dimension: payment_method_id {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_ID ;;
    label: "Payment Method ID"
  }

  dimension: payment_operation_type {
    type: string
    sql: ${TABLE}.PAYMENT_OPERATION_TYPE ;;
    label: "Payment Operation Type"
  }

  dimension: payment_plan {
    type: string
    sql: ${TABLE}.PAYMENT_PLAN ;;
    label: "Payment Plan"
  }

  dimension: payment_serial_id {
    type: string
    sql: ${TABLE}.PAYMENT_SERIAL_ID ;;
    label: "Payment Serial ID"
  }

  dimension: pri_identity {
    type: string
    sql: ${TABLE}.PRI_IDENTITY ;;
    label: "PRI Identity"
  }

  dimension: process_date {
    type: string
    sql: ${TABLE}.PROCESS_DATE ;;
    label: "Process Date"
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}.PRODUCT_LINE ;;
    label: "Product Line"
  }

  dimension: pr_status {
    type: string
    sql: ${TABLE}.PR_STATUS ;;
    label: "PR Status"
  }

  dimension: pr_status_des {
    type: string
    sql: ${TABLE}.PR_STATUS_DES ;;
    label: "PR Status Description"
  }

  dimension: reversal_reason_code {
    type: string
    sql: ${TABLE}.REVERSAL_REASON_CODE ;;
    label: "Reversal Reason Code"
  }

  dimension: reversal_reason_des {
    type: string
    sql: ${TABLE}.REVERSAL_REASON_DES ;;
    label: "Reversal Reason Description"
  }

  dimension: staff_name {
    type: string
    sql: ${TABLE}.STAFF_NAME ;;
    label: "Staff Name"
  }

  dimension: trade_number {
    type: string
    sql: ${TABLE}.TRADE_NUMBER ;;
    label: "Trade Number"
  }

  dimension: trans_date {
    type: string
    sql: ${TABLE}.TRANS_DATE ;;
    label: "Transaction Date"
  }

  dimension: trx_trans_type {
    type: string
    sql: ${TABLE}.TRX_TRANS_TYPE ;;
    label: "TRX Transaction Type"
  }

  dimension: trx_trans_type_des {
    type: string
    sql: ${TABLE}.TRX_TRANS_TYPE_DES ;;
    label: "TRX Transaction Type Description"
  }


 ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    label: "Account ID"
  }

  dimension: batch_no {
    type: number
    sql: ${TABLE}.BATCH_NO ;;
    value_format: "0"
    label: "Batch Number"
  }

  dimension: credit_card_type_id {
    type: number
    sql: ${TABLE}.CREDIT_CARD_TYPE_ID ;;
    value_format: "0"
    label: "Credit Card Type ID"
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
    value_format: "0"
    label: "Currency ID"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    value_format: "0"
    label: "Customer ID"
  }

  dimension: ind_pagos_migrados {
    type: number
    sql: ${TABLE}.IND_PAGOS_MIGRADOS ;;
    value_format: "0"
    label: "IND Pagos Migrados"
  }

  dimension: ind_reversal_payment {
    type: number
    sql: ${TABLE}.IND_REVERSAL_PAYMENT ;;
    label: "Indicador de Pago"
  }

  dimension: mov_origen_hw {
    type: number
    sql: ${TABLE}.MOV_ORIGEN_HW ;;
    value_format: "0"
    label: "MOV Origen HW"
  }

  dimension: reversal_trans_id {
    type: number
    sql: ${TABLE}.REVERSAL_TRANS_ID ;;
    value_format: "0"
    label: "Reversal Transaction ID"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    value_format: "0"
    label: "SUB ID"
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.TRANS_ID ;;
    value_format: "0"
    label: "Transaction ID"
  }

  dimension: wondersoft_id {
    type: number
    sql: ${TABLE}.WONDERSOFT_ID ;;
    value_format: "0"
    label: "Wondersoft ID"
  }


## Hidden ##

  dimension: original_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.ORIGINAL_AMT ;;
  }

  dimension: payment_id {
    hidden: yes
    type: number
    sql: ${TABLE}.PAYMENT_ID ;;
  }

  dimension: payment_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.PAYMENT_AMT ;;
  }

  dimension: trx_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.TRX_AMT ;;
  }


##############
## Measures ##
##############

  measure: count_ind_reversal_payment {
    type: count_distinct
    sql: ${TABLE}.IND_REVERSAL_PAYMENT ;;
    group_label: "Cantidad"
    label: "Indicador de Pago"
  }

  measure: count_payment_id {
    type: count_distinct
    sql: ${TABLE}.PAYMENT_ID ;;
    group_label: "Cantidad"
    label: "Payment ID"
  }

  measure: total_original_amt {
    type: sum
    sql: ${TABLE}.ORIGINAL_AMT ;;
    group_label: "Total"
    label: "Original Amount"
  }

  measure: total_payment_amt {
    type: sum
    sql: ${TABLE}.PAYMENT_AMT ;;
    group_label: "Total"
    label: "Payment Amount"
  }

  measure: total_trx_amt {
    type: sum
    sql: ${TABLE}.TRX_AMT ;;
    group_label: "Total"
    label: "TRX Amount"
  }
}
