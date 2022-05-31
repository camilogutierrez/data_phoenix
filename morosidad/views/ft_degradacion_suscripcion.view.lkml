view: ft_degradacion_suscripcion {
  sql_table_name: @{gcp_ambiente}.FT_DegradacionSuscripcion` ;;
  label: "Degradacion Suscripcion"

  ## Dimensions

    ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.DEGRADACIONPK;;
  }

    ## Dates

  dimension_group: fin_degra {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FIN_DEGRA ;;
    label: "Fin Degradacion"
  }

  dimension_group: inicio_degra {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.INICIO_DEGRA ;;
    label: "Inicio Degradacion"
  }

    ## Strings

  dimension: degra_status {
    type: string
    sql: ${TABLE}.DEGRA_STATUS ;;
    label: "Degradacion Status"
  }

    ## Numbers

  dimension: act_acct_id {
    type: number
    sql: ${TABLE}.ACT_ACCT_ID ;;
    label: "ACT Account ID"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    label: "Customer ID"
  }

  dimension: pri_acct_id {
    type: number
    sql: ${TABLE}.PRI_ACCT_ID ;;
    label: "PRI Account ID"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    label: "Sub ID"
  }

  dimension: ult_acct_id {
    type: number
    sql: ${TABLE}.ULT_ACCT_ID ;;
    label: "ULT Account ID"
  }

    ## Measures

}
