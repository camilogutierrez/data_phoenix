view: ft_cuenta_cambios_ciclo_view {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.FT_CuentaCambiosCiclo` ;;
  label: "Cuenta Cambios Ciclo"

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
  }

  dimension: act_payment_mode {
    type: string
    sql: ${TABLE}.ACT_PAYMENT_MODE ;;
  }

  dimension: act_payment_mode_des {
    type: string
    sql: ${TABLE}.ACT_PAYMENT_MODE_DES ;;
  }

  dimension: bill_cycle_type_new {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE_NEW ;;
  }

  dimension: bill_cycle_type_old {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE_OLD ;;
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

  dimension: ind_cambio_ciclo {
    type: string
    sql: ${TABLE}.IND_CAMBIO_CICLO ;;
  }

  dimension: pri_payment_mode {
    type: string
    sql: ${TABLE}.PRI_PAYMENT_MODE ;;
  }

  dimension: pri_payment_mode_des {
    type: string
    sql: ${TABLE}.PRI_PAYMENT_MODE_DES ;;
  }

  dimension: ult_payment_mode {
    type: string
    sql: ${TABLE}.ULT_PAYMENT_MODE ;;
  }

  dimension: ult_payment_mode_des {
    type: string
    sql: ${TABLE}.ULT_PAYMENT_MODE_DES ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
