view: ft_cuenta_cambios_ciclo {
  sql_table_name: @{gcp_ambiente}.FT_CuentaCambiosCiclo` ;;
  suggestions: no
  label: "Cuenta Cambios Ciclo"

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(CAST(${eff_date} AS STRING FORMAT 'YYYYMMDD'),'-',${acct_id});;
  }

  ## Dates

  dimension_group: eff {
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
    sql: ${TABLE}.EFF_DATE ;;
    datatype: timestamp
    label: "Efectiva"
    group_label: "Fecha Efectiva"
  }

  dimension_group: exp {
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
    label: "Expiracion"
    group_label: "Fecha Expiracion"
  }

  ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
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

  ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

##############
## Measures ##
##############

  measure: count {
    type: count
    drill_fields: []
  }
}
