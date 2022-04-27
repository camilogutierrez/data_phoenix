view: ft_dc_pa_plan {
  sql_table_name: `teco-prod-edw-5e1b.ue4_prod_edw_pub_gcp.FT_DC_PA_PLAN` ;;
  label: "Dc Pa Plan"

  ## Dimensions

    ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(CAST(${pa_plan_id} AS STRING),'-',CAST(${pa_plan_detail_id} AS STRING));;
  }

    ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
  }

  dimension: auth_dept_id {
    type: string
    sql: ${TABLE}.AUTH_DEPT_ID ;;
  }

  dimension: auth_oper_id {
    type: string
    sql: ${TABLE}.AUTH_OPER_ID ;;
  }

  dimension: break_dept_id {
    type: string
    sql: ${TABLE}.BREAK_DEPT_ID ;;
  }

  dimension: break_oper_id {
    type: string
    sql: ${TABLE}.BREAK_OPER_ID ;;
  }

  dimension: cancel_oper_id {
    type: string
    sql: ${TABLE}.CANCEL_OPER_ID ;;
  }

  dimension: create_dept_id {
    type: string
    sql: ${TABLE}.CREATE_DEPT_ID ;;
  }

  dimension: create_oper_id {
    type: string
    sql: ${TABLE}.CREATE_OPER_ID ;;
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
  }

    ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
  }

  dimension: actual_paid_amount {
    type: number
    sql: ${TABLE}.ACTUAL_PAID_AMOUNT ;;
  }

  dimension: agreed_amount {
    type: number
    sql: ${TABLE}.AGREED_AMOUNT ;;
  }

  dimension: be_id {
    type: number
    sql: ${TABLE}.BE_ID ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: end_period_amount {
    type: number
    sql: ${TABLE}.END_PERIOD_AMOUNT ;;
  }

  dimension: first_min_agreed_percent {
    type: number
    sql: ${TABLE}.FIRST_MIN_AGREED_PERCENT ;;
  }

  dimension: first_period_amount {
    type: number
    sql: ${TABLE}.FIRST_PERIOD_AMOUNT ;;
  }

  dimension: grace_days {
    type: number
    sql: ${TABLE}.GRACE_DAYS ;;
  }

  dimension: instal_amount {
    type: number
    sql: ${TABLE}.INSTAL_AMOUNT ;;
  }

  dimension: instance_id {
    type: number
    sql: ${TABLE}.INSTANCE_ID ;;
  }

  dimension: max_days {
    type: number
    sql: ${TABLE}.MAX_DAYS ;;
  }

  dimension: max_interval {
    type: number
    sql: ${TABLE}.MAX_INTERVAL ;;
  }

  dimension: max_period {
    type: number
    sql: ${TABLE}.MAX_PERIOD ;;
  }

  dimension: min_agreed_amt {
    type: number
    sql: ${TABLE}.MIN_AGREED_AMT ;;
  }

  dimension: min_agreed_amt_percent {
    type: number
    sql: ${TABLE}.MIN_AGREED_AMT_PERCENT ;;
  }

  dimension: min_period_amt {
    type: number
    sql: ${TABLE}.MIN_PERIOD_AMT ;;
  }

  dimension: min_period_amt_percent {
    type: number
    sql: ${TABLE}.MIN_PERIOD_AMT_PERCENT ;;
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
  }

  dimension: open_amount {
    type: number
    sql: ${TABLE}.OPEN_AMOUNT ;;
  }

  dimension: pa_plan_detail_id {
    type: number
    sql: ${TABLE}.PA_PLAN_DETAIL_ID ;;
  }

  dimension: pa_plan_id {
    type: number
    sql: ${TABLE}.PA_PLAN_ID ;;
  }

  dimension: pa_policy_id {
    type: number
    sql: ${TABLE}.PA_POLICY_ID ;;
  }

  dimension: period_value {
    type: number
    sql: ${TABLE}.PERIOD_VALUE ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.REGION_ID ;;
  }

  dimension: remain_amount {
    type: number
    sql: ${TABLE}.REMAIN_AMOUNT ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
  }

  ## Measures


}
