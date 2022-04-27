view: ft_degradacion_suscripcion {
  sql_table_name: `teco-prod-edw-5e1b.ue4_prod_edw_pub_gcp.FT_DegradacionSuscripcion` ;;

  ## Dimensions

    ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(CAST(${sub_id} AS STRING),'-',CAST(${cust_id} AS STRING));;
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
  }

    ## Strings

  dimension: degra_status {
    type: string
    sql: ${TABLE}.DEGRA_STATUS ;;
  }

    ## Numbers

  dimension: act_acct_id {
    type: number
    sql: ${TABLE}.ACT_ACCT_ID ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: pri_acct_id {
    type: number
    sql: ${TABLE}.PRI_ACCT_ID ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
  }

  dimension: ult_acct_id {
    type: number
    sql: ${TABLE}.ULT_ACCT_ID ;;
  }

    ## Measures

  measure: count {
    type: count
    drill_fields: []
  }
}
