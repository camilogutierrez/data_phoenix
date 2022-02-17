view: ft_pagos {
  sql_table_name:  @{gcp_dataset_pub}.FT_Pagos`;;
  suggestions: no
  label: "Pagos"

  ## Primary Key
  dimension: pk {
    primary_key: yes
    hidden: yes
    type:  string
    sql:concat(${TABLE}.PAYMENT_ID, ${TABLE}.TRANS_ID)
  }

  ##############
  ##  Pagos   ##
  ##############


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

  dimension: access_method {
    type: string
    sql: ${TABLE}.ACCESS_METHOD ;;
  }

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
  }

  dimension: acct_payment_mode {
    type: string
    sql: ${TABLE}.ACCT_PAYMENT_MODE ;;
  }

  dimension: acct_payment_mode_des {
    type: string
    sql: ${TABLE}.ACCT_PAYMENT_MODE_DES ;;
  }

  dimension: bank_acct_name {
    type: string
    sql: ${TABLE}.BANK_ACCT_NAME ;;
  }

  dimension: bank_branch_code {
    type: string
    sql: ${TABLE}.BANK_BRANCH_CODE ;;
  }

  dimension: bank_code {
    type: string
    sql: ${TABLE}.BANK_CODE ;;
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}.BANK_NAME ;;
  }

  dimension: bank_promotion_code {
    type: string
    sql: ${TABLE}.BANK_PROMOTION_CODE ;;
  }

  dimension: batch_no {
    type: number
    sql: ${TABLE}.BATCH_NO ;;
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE ;;
  }

  dimension: c_payment_date {
    type: string
    sql: ${TABLE}.C_PAYMENT_DATE ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.CHANNEL_ID ;;
  }

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
  }

  dimension: check_no {
    type: string
    sql: ${TABLE}.CHECK_NO ;;
  }

  dimension: credit_card_des {
    type: string
    sql: ${TABLE}.CREDIT_CARD_DES ;;
  }

  dimension: credit_card_no {
    type: string
    sql: ${TABLE}.CREDIT_CARD_NO ;;
  }

  dimension: credit_card_type_id {
    type: number
    sql: ${TABLE}.CREDIT_CARD_TYPE_ID ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.CURRENCY_NAME ;;
  }

  dimension: currency_symbol {
    type: string
    sql: ${TABLE}.CURRENCY_SYMBOL ;;
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
  }

  dimension: cust_first_name {
    type: string
    sql: ${TABLE}.CUST_FIRST_NAME ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: cust_last_name {
    type: string
    sql: ${TABLE}.CUST_LAST_NAME ;;
  }

  dimension: cust_segment {
    type: string
    sql: ${TABLE}.CUST_SEGMENT ;;
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
  }

  dimension: header_bank_code {
    type: string
    sql: ${TABLE}.HEADER_BANK_CODE ;;
  }

  dimension: ice_channel_code {
    type: string
    sql: ${TABLE}.ICE_CHANNEL_CODE ;;
  }

  dimension: ind_pagos_migrados {
    type: number
    sql: ${TABLE}.IND_PAGOS_MIGRADOS ;;
  }

  dimension: ind_reversal_payment {
    type: number
    sql: ${TABLE}.IND_REVERSAL_PAYMENT ;;
  }

  dimension: ind_unallocated {
    type: string
    sql: ${TABLE}.IND_UNALLOCATED ;;
  }

  dimension: ind_wondersoft {
    type: string
    sql: ${TABLE}.IND_WONDERSOFT ;;
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.INVOICE_NO ;;
  }

  dimension: invoice_type_inf {
    type: string
    sql: ${TABLE}.INVOICE_TYPE_INF ;;
  }

  dimension: is_invoice_payment {
    type: string
    sql: ${TABLE}.IS_INVOICE_PAYMENT ;;
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
  }

  dimension: mov_origen_hw {
    type: number
    sql: ${TABLE}.MOV_ORIGEN_HW ;;
  }

  dimension: nro_cupon_tarjeta {
    type: string
    sql: ${TABLE}.NRO_CUPON_TARJETA ;;
  }

  dimension: number_of_installment {
    type: string
    sql: ${TABLE}.NUMBER_OF_INSTALLMENT ;;
  }

  dimension: oper_id {
    type: string
    sql: ${TABLE}.OPER_ID ;;
  }

  dimension: operation_type {
    type: string
    sql: ${TABLE}.OPERATION_TYPE ;;
  }

  dimension: operation_type_inf {
    type: string
    sql: ${TABLE}.OPERATION_TYPE_INF ;;
  }

  dimension: original_amt {
    type: number
    sql: ${TABLE}.ORIGINAL_AMT ;;
  }

  dimension: paid_flag {
    type: string
    sql: ${TABLE}.PAID_FLAG ;;
  }

  dimension: payment_amt {
    type: number
    sql: ${TABLE}.PAYMENT_AMT ;;
  }

  dimension: payment_channel_name {
    type: string
    sql: ${TABLE}.PAYMENT_CHANNEL_NAME ;;
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
  }

  dimension: payment_id {
    type: number
    sql: ${TABLE}.PAYMENT_ID ;;
  }

  dimension: payment_method_des {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_DES ;;
  }

  dimension: payment_method_id {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_ID ;;
  }

  dimension: payment_operation_type {
    type: string
    sql: ${TABLE}.PAYMENT_OPERATION_TYPE ;;
  }

  dimension: payment_plan {
    type: string
    sql: ${TABLE}.PAYMENT_PLAN ;;
  }

  dimension: payment_serial_id {
    type: string
    sql: ${TABLE}.PAYMENT_SERIAL_ID ;;
  }

  dimension: pr_status {
    type: string
    sql: ${TABLE}.PR_STATUS ;;
  }

  dimension: pr_status_des {
    type: string
    sql: ${TABLE}.PR_STATUS_DES ;;
  }

  dimension: pri_identity {
    type: string
    sql: ${TABLE}.PRI_IDENTITY ;;
  }

  dimension: process_date {
    type: string
    sql: ${TABLE}.PROCESS_DATE ;;
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}.PRODUCT_LINE ;;
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
  }

  dimension: reversal_reason_code {
    type: string
    sql: ${TABLE}.REVERSAL_REASON_CODE ;;
  }

  dimension: reversal_reason_des {
    type: string
    sql: ${TABLE}.REVERSAL_REASON_DES ;;
  }

  dimension: reversal_trans_id {
    type: number
    sql: ${TABLE}.REVERSAL_TRANS_ID ;;
  }

  dimension: staff_name {
    type: string
    sql: ${TABLE}.STAFF_NAME ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
  }

  dimension: trade_number {
    type: string
    sql: ${TABLE}.TRADE_NUMBER ;;
  }

  dimension: trans_date {
    type: string
    sql: ${TABLE}.TRANS_DATE ;;
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.TRANS_ID ;;
  }

  dimension: trx_amt {
    type: number
    sql: ${TABLE}.TRX_AMT ;;
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
  }

  dimension: trx_trans_type {
    type: string
    sql: ${TABLE}.TRX_TRANS_TYPE ;;
  }

  dimension: trx_trans_type_des {
    type: string
    sql: ${TABLE}.TRX_TRANS_TYPE_DES ;;
  }

  dimension: wondersoft_id {
    type: number
    sql: ${TABLE}.WONDERSOFT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      cust_first_name,
      staff_name,
      payment_channel_name,
      cust_last_name,
      currency_name,
      bank_acct_name,
      bank_name
    ]
  }
}
