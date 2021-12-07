view: ft_cuenta_cambios_ciclo_view {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.FT_CuentaCambiosCiclo` ;;
  suggestions: no
  label: "Cuenta Cambios Ciclo"

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(CAST(${eff} AS STRING FORMAT 'YYYYMMDD'),'-',${acct_id});;
  }

  ## Dates

  dimension: eff {
    type: date_time
    sql: ${TABLE}.EFF_DATE ;;
    datatype: timestamp
  }

  dimension: exp {
    type: date_time
    sql: ${TABLE}.EXP_DATE ;;
    datatype: timestamp
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
