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
      day_of_month,
      day_of_week,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.FIN_DEGRA ;;
    datatype: date
    group_label: "Degradacion Fecha Fin"
    label: "Degradacion Fin"
  }

  dimension_group: inicio_degra {
    type: time
    timeframes: [
      raw,
      date,
      day_of_month,
      day_of_week,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.INICIO_DEGRA ;;
    datatype: date
    group_label: "Degradacion Fecha Inicio"
    label: "Degradacion Inicio"
  }

    ## Strings

  dimension: degra_status {
    type: string
    sql: ${TABLE}.DEGRA_STATUS ;;
    label: "Degradacion Estado"
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
    label: "Cliente ID"
  }

  dimension: pri_acct_id {
    type: number
    sql: ${TABLE}.PRI_ACCT_ID ;;
    label: "PRI Account ID"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    label: "Subscripcion Numero"
  }

  dimension: ult_acct_id {
    type: number
    sql: ${TABLE}.ULT_ACCT_ID ;;
    label: "ULT Account ID"
  }

    ## Measures

}
