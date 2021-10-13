view: ft_suscripcion_cambios_plan_view {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.FT_SuscripcionCambiosPlan` ;;
  label: "Suscripcion Cambios Plan"

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

  dimension: act_brand_id {
    type: number
    sql: ${TABLE}.ACT_BRAND_ID ;;
  }

  dimension: act_brand_name {
    type: string
    sql: ${TABLE}.ACT_BRAND_NAME ;;
  }

  dimension: act_sub_identity {
    type: string
    sql: ${TABLE}.ACT_SUB_IDENTITY ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension_group: eff_date_new {
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
    sql: ${TABLE}.EFF_DATE_NEW ;;
    datatype: timestamp
  }

  dimension_group: eff_date_old {
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
    sql: ${TABLE}.EFF_DATE_OLD ;;
    datatype: timestamp
  }

  dimension_group: exp_date_new {
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
    sql: ${TABLE}.EXP_DATE_NEW ;;
    datatype: timestamp
  }

  dimension_group: exp_date_old {
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
    sql: ${TABLE}.EXP_DATE_OLD ;;
    datatype: timestamp
  }

  dimension: ind_cambio_plan {
    type: string
    sql: ${TABLE}.IND_CAMBIO_PLAN ;;
  }

  dimension: o_inst_id {
    type: number
    sql: ${TABLE}.O_INST_ID ;;
  }

  dimension: offering_name_new {
    type: string
    sql: ${TABLE}.OFFERING_NAME_NEW ;;
  }

  dimension: offering_name_old {
    type: string
    sql: ${TABLE}.OFFERING_NAME_OLD ;;
  }

  dimension: offering_new_id {
    type: number
    sql: ${TABLE}.OFFERING_NEW_ID ;;
  }

  dimension: offering_old_id {
    type: number
    sql: ${TABLE}.OFFERING_OLD_ID ;;
  }

  dimension: offering_payment_mode_des_new {
    type: string
    sql: ${TABLE}.OFFERING_PAYMENT_MODE_DES_NEW ;;
  }

  dimension: offering_payment_mode_des_old {
    type: string
    sql: ${TABLE}.OFFERING_PAYMENT_MODE_DES_OLD ;;
  }

  dimension: offering_payment_mode_new {
    type: string
    sql: ${TABLE}.OFFERING_PAYMENT_MODE_NEW ;;
  }

  dimension: offering_payment_mode_old {
    type: string
    sql: ${TABLE}.OFFERING_PAYMENT_MODE_OLD ;;
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

  dimension: pri_brand_id {
    type: number
    sql: ${TABLE}.PRI_BRAND_ID ;;
  }

  dimension: pri_brand_name {
    type: string
    sql: ${TABLE}.PRI_BRAND_NAME ;;
  }

  dimension: pri_sub_identity {
    type: string
    sql: ${TABLE}.PRI_SUB_IDENTITY ;;
  }

  dimension_group: status_date_new {
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
    sql: ${TABLE}.STATUS_DATE_NEW ;;
    datatype: timestamp
  }

  dimension_group: status_date_old {
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
    sql: ${TABLE}.STATUS_DATE_OLD ;;
    datatype: timestamp
  }

  dimension: status_detail_new {
    type: string
    sql: ${TABLE}.STATUS_DETAIL_NEW ;;
  }

  dimension: status_detail_old {
    type: string
    sql: ${TABLE}.STATUS_DETAIL_OLD ;;
  }

  dimension: status_new {
    type: string
    sql: ${TABLE}.STATUS_NEW ;;
  }

  dimension: status_new_des {
    type: string
    sql: ${TABLE}.STATUS_NEW_DES ;;
  }

  dimension: status_old {
    type: string
    sql: ${TABLE}.STATUS_OLD ;;
  }

  dimension: status_old_des {
    type: string
    sql: ${TABLE}.STATUS_OLD_DES ;;
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

  dimension: ult_brand_id {
    type: number
    sql: ${TABLE}.ULT_BRAND_ID ;;
  }

  dimension: ult_brand_name {
    type: string
    sql: ${TABLE}.ULT_BRAND_NAME ;;
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
