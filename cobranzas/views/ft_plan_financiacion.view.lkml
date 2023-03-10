view: ft_plan_financiacion {
  label: "Plan Financiacion"
  sql_table_name: @{gcp_ambiente}.FT_PlanFinanciacion`;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: pk {
    primary_key: yes
    hidden: yes
    type:  string
    sql:${TABLE}.PLANFINANCIACIONPK;;
  }

  ## Dates

  dimension_group: ar_payment {
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
    sql: ${TABLE}.AR_PAYMENT_DATE ;;
    datatype: timestamp
    group_label: "Fecha Pago"
    label: "Pago"
  }

  dimension_group: billed {
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
    sql: ${TABLE}.BILLED_DATE ;;
    datatype: timestamp
    group_label: "Fecha Billed"
    label: "Billed"
  }

  dimension_group: create_date {
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
    sql: ${TABLE}.CREATE_DATE ;;
    datatype: timestamp
    group_label: "Fecha Creacion"
    label: "Create"
  }

  dimension_group: exp_date {
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
    sql: ${TABLE}.EXP_DATE ;;
    datatype: timestamp
    group_label: "Fecha Expiracion"
    label: "Expiracion"
  }

  dimension_group: due_date {
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
    sql: ${TABLE}.DUE_DATE ;;
    datatype: timestamp
    group_label: "Fecha Vencimiento"
    label: "Vencimiento"
  }

  dimension_group: inst_create {
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
    sql: ${TABLE}.INST_CREATE_DATE ;;
    datatype: timestamp
    group_label: "Fecha Creacion Inst"
    label: "Creacion Inst"
  }

  dimension_group: inst_exp {
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
    sql: ${TABLE}.INST_EXP_DATE ;;
    datatype: timestamp
    group_label: "Fecha Expiracion Inst"
    label: "Expiracion Inst"
  }

  dimension_group: modify {
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
    sql: ${TABLE}.MODIFY_TIME ;;
    datatype: timestamp
    group_label: "Fecha Modificacion"
    label: "Modificacion"
  }

  dimension_group: payment_date {
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
    sql: ${TABLE}.PAYMENT_DATE ;;
    datatype: timestamp
    group_label: "Fecha Pago"
    label: "Pago"
  }

  dimension_group: repay_due {
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
    sql: ${TABLE}.REPAY_DUE_DATE ;;
    datatype: timestamp
    group_label: "Fecha Repago"
    label: "Repay Due"
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

  dimension: estimated_billing {
    type: string
    sql: ${TABLE}.ESTIMATED_BILLING_DATE ;;
    label: "Estimated Billing date"
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
    value_format: "0"
    label: "Account ID"
  }

  dimension: charge_code_id {
    type: number
    sql: ${TABLE}.CHARGE_CODE_ID ;;
    value_format: "0"
    label: "Charge Code ID"
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

  dimension: cycle_seq {
    type: number
    sql: ${TABLE}.CYCLE_SEQ ;;
    value_format: "0"
    label: "Cycle SEQ"
  }

  dimension: installment_inst_id {
    type: number
    sql: ${TABLE}.INSTALLMENT_INST_ID ;;
    value_format: "0"
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

  ## Hidden

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

## Measures

  measure: total_amount {
    type: sum
    sql: ${TABLE}.AMOUNT ;;
    group_label: "Total"
    label: "Amount"
  }

  measure: total_billing_discount_amt {
    type: sum
    sql: ${TABLE}.BILLING_DISCOUNT_AMT ;;
    group_label: "Total"
    label: "Billing Discount"
  }

  measure: total_initial_amt {
    type: sum
    sql: ${TABLE}.INITIAL_AMT ;;
    group_label: "Total"
    label: "Initial Amount"
  }

  measure: total_total_amt {
    type: sum
    sql: ${TABLE}.TOTAL_AMT ;;
    group_label: "Total"
    label: "Total Amount"
  }

  measure: total_traf_invoice_amt {
    type: sum
    sql: ${TABLE}.TRAF_INVOICE_AMT ;;
    group_label: "Total"
    label: "TRAF Invoice Amount"
  }

  measure: total_traf_open_amt {
    type: sum
    sql: ${TABLE}.TRAF_OPEN_AMT ;;
    group_label: "Total"
    label: "TRAF Open Amount"
  }

  measure: total_unpaid_amt {
    type: sum
    sql: ${TABLE}.UNPAID_AMT ;;
    group_label: "Total"
    label: "Unpaid Amount"
  }

  measure: total_vta_invoice_amt {
    type: sum
    sql: ${TABLE}.VTA_INVOICE_AMT ;;
    group_label: "Total"
    label: "VTA Invoice Amount"
  }

  measure: total_vta_tax_amt {
    type: sum
    sql: ${TABLE}.VTA_TAX_AMT ;;
    group_label: "Total"
    label: "VTA Tax Amount"
  }
}
