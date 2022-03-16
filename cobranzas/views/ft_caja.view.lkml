view: ft_caja {
  sql_table_name: @{gcp_dataset_pub}.FT_Caja`;;
  suggestions: no
  label: "Caja"

  ## Primary Key
  dimension: pk {
    primary_key: yes
    hidden: yes
    type:  string
    sql:${TABLE}.CAJAPK;;
  }

  #############
  ##  Caja   ##
  #############

  ## Dates

  dimension_group: cr_close {
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
    sql: ${TABLE}.CR_CLOSE_DATE ;;
    label: "Close"
  }

  dimension_group: cr_open {
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
    sql: ${TABLE}.CR_OPEN_DATE ;;
    label: "Open"
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
    label: "Transaction"
  }

  ## Strings

  dimension: canal2_point_sale_des {
    type: string
    sql: ${TABLE}.CANAL2_POINT_SALE_DES ;;
    label: "Canal2 Point Sale"
  }

  dimension: cr_mismatch_reason {
    type: string
    sql: ${TABLE}.CR_MISMATCH_REASON ;;
    label: "Mismatch Reason"
  }

  dimension: cr_oper_id {
    type: string
    sql: ${TABLE}.CR_OPER_ID ;;
    label: "CR Operation ID"
  }

  dimension: cr_point_sale_id {
    type: string
    sql: ${TABLE}.CR_POINT_SALE_ID ;;
    label: "CR Point Sale ID"
  }

  dimension: cr_prov_point_sale_id {
    type: string
    sql: ${TABLE}.CR_PROV_POINT_SALE_ID ;;
    label: "CR Province Point Sale ID"
  }

  dimension: cr_staff_name {
    type: string
    sql: ${TABLE}.CR_STAFF_NAME ;;
    label: "CR Staff Name"
  }

  dimension: cr_status {
    type: string
    sql: ${TABLE}.CR_STATUS ;;
    label: "CR Status"
  }

  dimension: cr_status_des {
    type: string
    sql: ${TABLE}.CR_STATUS_DES ;;
    label: "CR Status Description"
  }

  dimension: crd_bank_acct_code {
    type: string
    sql: ${TABLE}.CRD_BANK_ACCT_CODE ;;
    label: "CR Bank Account"
  }

  dimension: crd_oper_id {
    type: string
    sql: ${TABLE}.CRD_OPER_ID ;;
    label: "CRD Operation ID"
  }

  dimension: crd_staff_name {
    type: string
    sql: ${TABLE}.CRD_STAFF_NAME ;;
    label: "CRD Staff Name"
  }

  dimension: crd_tipo_operacion {
    type: string
    sql: ${TABLE}.CRD_TIPO_OPERACION ;;
    label: "CRD Operation Type"
  }

  dimension: crd_trans_method {
    type: string
    sql: ${TABLE}.CRD_TRANS_METHOD ;;
    label: "CRD Transaction Method"
  }

  dimension: credit_card_type_des {
    type: string
    sql: ${TABLE}.CREDIT_CARD_TYPE_DES ;;
    label: "Credit Card Type"
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.CURRENCY_NAME ;;
    label: "Currency"
  }

  dimension: currency_symbol {
    type: string
    sql: ${TABLE}.CURRENCY_SYMBOL ;;
    label: "Currency Symbol"
  }

  dimension: entity_des {
    type: string
    sql: ${TABLE}.ENTITY_DES ;;
    label: "Entity Description"
  }

  dimension: entity_id {
    type: string
    sql: ${TABLE}.ENTITY_ID ;;
    label: "Entity ID"
  }

  dimension: ind_cash_register_close {
    type: string
    sql: ${TABLE}.IND_CASH_REGISTER_CLOSE ;;
    label: "IND Cash Register Close"
  }

  dimension: ind_wondersoft {
    type: string
    sql: ${TABLE}.IND_WONDERSOFT ;;
    label: "IND Wondersoft"
  }

  dimension: num_boleta {
    type: string
    sql: ${TABLE}.NUM_BOLETA ;;
    label: "Boleta"
  }

  dimension: payment_method_des {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_DES ;;
    label: "Payment Method"
  }

  dimension: payment_method_id {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_ID ;;
    label: "Payment Method ID"
  }

  dimension: point_sale_des {
    type: string
    sql: ${TABLE}.POINT_SALE_DES ;;
    label: "Point Sale"
  }

  dimension: province_name {
    type: string
    sql: ${TABLE}.PROVINCE_NAME ;;
    label: "Province Name"
  }


  ## Numbers

  dimension: batch_no {
    type: number
    sql: ${TABLE}.BATCH_NO ;;
    value_format: "0"
    label: "Batch Number"
  }

  dimension: cr_emission_point_id {
    type: number
    sql: ${TABLE}.CR_EMISSION_POINT_ID ;;
    value_format: "0"
    label: "Emission Point ID"
  }

  dimension: crd_credit_card_type_id {
    type: number
    sql: ${TABLE}.CRD_CREDIT_CARD_TYPE_ID ;;
    value_format: "0"
    label: "CRD Credit Card Type ID"
  }

  dimension: crd_trans_id {
    type: number
    sql: ${TABLE}.CRD_TRANS_ID ;;
    value_format: "0"
    label: "CRD Transaction ID"
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
    value_format: "0"
    label: "Currency ID"
  }

  ## Hidden ##

  dimension: cash_reg_detail_id {
    hidden: yes
    type: number
    sql: ${TABLE}.CASH_REG_DETAIL_ID ;;
  }

  dimension: cr_actual_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CR_ACTUAL_AMT ;;
  }

  dimension: cr_adj_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CR_ADJ_AMT ;;
  }

  dimension: cr_init_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CR_INIT_AMT ;;
  }

  dimension: cr_safe_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CR_SAFE_AMT ;;
  }

  dimension: cr_trans_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CR_TRANS_AMT ;;
  }

  dimension: trans_detail_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.TRANS_DETAIL_AMT ;;
  }

  dimension: trx_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.TRX_AMT ;;
  }

##############
## Measures ##
##############

  measure: count_cash_reg_detail_id {
    type: count_distinct
    sql: ${TABLE}.CASH_REG_DETAIL_ID ;;
    group_label: "Cantidad"
    label: "Cash Reg Detail"
  }

 measure: total_cr_actual_amt {
    type: sum
    sql: ${TABLE}.CR_ACTUAL_AMT ;;
    group_label: "Total"
    label: "CR Actual Amount"
  }

  measure: total_cr_adj_amt {
    type: sum
    sql: ${TABLE}.CR_ADJ_AMT ;;
    group_label: "Total"
    label: "CR ADJ Amount"
  }

  measure: total_cr_init_amt {
    type: sum
    sql: ${TABLE}.CR_INIT_AMT ;;
    group_label: "Total"
    label: "CR Init Amount"
  }

  measure: total_cr_safe_amt {
    type: sum
    sql: ${TABLE}.CR_SAFE_AMT ;;
    group_label: "Total"
    label: "CR Safe Amount"
  }

  measure: total_cr_trans_amt {
    type: sum
    sql: ${TABLE}.CR_TRANS_AMT ;;
    group_label: "Total"
    label: "CR Transaction Amount"
  }

  measure: total_trans_detail_amt {
    type: sum
    sql: ${TABLE}.TRANS_DETAIL_AMT ;;
    group_label: "Total"
    label: "Transaction Detail Amount"
  }

  measure: total_trx_amt {
    type: sum
    sql: ${TABLE}.TRX_AMT ;;
    group_label: "Total"
    label: "Trx Amount"
  }
}
