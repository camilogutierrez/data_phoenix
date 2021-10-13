view: ft_suscripcion_alta_baja_view {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.FT_SuscripcionAltaBaja` ;;
  label: "Suscripcion Alta Baja"

  dimension: act_acct_code {
    type: string
    sql: ${TABLE}.ACT_ACCT_CODE ;;
  }

  dimension: act_acct_id {
    type: number
    sql: ${TABLE}.ACT_ACCT_ID ;;
  }

  dimension: act_bill_cycle_type {
    type: string
    sql: ${TABLE}.ACT_BILL_CYCLE_TYPE ;;
  }

  dimension: act_offering_id {
    type: number
    sql: ${TABLE}.ACT_OFFERING_ID ;;
  }

  dimension: act_offering_name {
    type: string
    sql: ${TABLE}.ACT_OFFERING_NAME ;;
  }

  dimension: act_payment_mode {
    type: string
    sql: ${TABLE}.ACT_PAYMENT_MODE ;;
  }

  dimension: act_payment_mode_des {
    type: string
    sql: ${TABLE}.ACT_PAYMENT_MODE_DES ;;
  }

  dimension: act_sub_identity {
    type: string
    sql: ${TABLE}.ACT_SUB_IDENTITY ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension_group: eff {
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
    sql: ${TABLE}.EFF_DATE ;;
    datatype: timestamp
  }

  dimension_group: exp {
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
    datatype: timestamp
  }

  dimension: pri_acct_code {
    type: string
    sql: ${TABLE}.PRI_ACCT_CODE ;;
  }

  dimension: pri_acct_id {
    type: number
    sql: ${TABLE}.PRI_ACCT_ID ;;
  }

  dimension: pri_bill_cycle_type {
    type: string
    sql: ${TABLE}.PRI_BILL_CYCLE_TYPE ;;
  }

  dimension: pri_offering_id {
    type: number
    sql: ${TABLE}.PRI_OFFERING_ID ;;
  }

  dimension: pri_offering_name {
    type: string
    sql: ${TABLE}.PRI_OFFERING_NAME ;;
  }

  dimension: pri_payment_mode {
    type: string
    sql: ${TABLE}.PRI_PAYMENT_MODE ;;
  }

  dimension: pri_payment_mode_des {
    type: string
    sql: ${TABLE}.PRI_PAYMENT_MODE_DES ;;
  }

  dimension: pri_sub_identity {
    type: string
    sql: ${TABLE}.PRI_SUB_IDENTITY ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: status_des {
    type: string
    sql: ${TABLE}.STATUS_DES ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
  }

  dimension: ult_acct_code {
    type: string
    sql: ${TABLE}.ULT_ACCT_CODE ;;
  }

  dimension: ult_acct_id {
    type: number
    sql: ${TABLE}.ULT_ACCT_ID ;;
  }

  dimension: ult_bill_cycle_type {
    type: string
    sql: ${TABLE}.ULT_BILL_CYCLE_TYPE ;;
  }

  dimension: ult_offering_id {
    type: number
    sql: ${TABLE}.ULT_OFFERING_ID ;;
  }

  dimension: ult_offering_name {
    type: string
    sql: ${TABLE}.ULT_OFFERING_NAME ;;
  }

  dimension: ult_payment_mode {
    type: string
    sql: ${TABLE}.ULT_PAYMENT_MODE ;;
  }

  dimension: ult_payment_mode_des {
    type: string
    sql: ${TABLE}.ULT_PAYMENT_MODE_DES ;;
  }

  dimension: ult_sub_identity {
    type: string
    sql: ${TABLE}.ULT_SUB_IDENTITY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
