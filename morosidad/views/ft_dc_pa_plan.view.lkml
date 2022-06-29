view: ft_dc_pa_plan {
  sql_table_name: @{gcp_ambiente}.FT_DC_PA_PLAN` ;;
  label: "Plan Financiacion Deuda"

  ## Dimensions

    ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.PLANPK;;
  }

    ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    label: "Account Code"
  }

  dimension: auth_dept_id {
    type: string
    sql: ${TABLE}.AUTH_DEPT_ID ;;
    label: "Auth Department ID"
  }

  dimension: auth_oper_id {
    type: string
    sql: ${TABLE}.AUTH_OPER_ID ;;
    label: "Auth Operation ID"
  }

  dimension: break_dept_id {
    type: string
    sql: ${TABLE}.BREAK_DEPT_ID ;;
    label: "Break Department ID"
  }

  dimension: break_oper_id {
    type: string
    sql: ${TABLE}.BREAK_OPER_ID ;;
    label: "Break Operation ID"
  }

  dimension: cancel_oper_id {
    type: string
    sql: ${TABLE}.CANCEL_OPER_ID ;;
    label: "Cancel Operation ID"
  }

  dimension: create_dept_id {
    type: string
    sql: ${TABLE}.CREATE_DEPT_ID ;;
    label: "Create Department ID"
  }

  dimension: create_oper_id {
    type: string
    sql: ${TABLE}.CREATE_OPER_ID ;;
    label: "Create Operation ID"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    label: "Customer Code"
  }

    ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    label: "Account ID"
  }

  dimension: actual_paid_amount {
    type: number
    sql: ${TABLE}.ACTUAL_PAID_AMOUNT ;;
    label: "Actual Paid Amount"
  }

  dimension: agreed_amount {
    type: number
    sql: ${TABLE}.AGREED_AMOUNT ;;
    label: "Agreed Amount"
  }

  dimension: be_id {
    type: number
    sql: ${TABLE}.BE_ID ;;
    label: "BE ID"
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
    label: "Currency ID"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    label: "Customer ID"
  }

  dimension: end_period_amount {
    type: number
    sql: ${TABLE}.END_PERIOD_AMOUNT ;;
    label: "End Period Amount"
  }

  dimension: first_min_agreed_percent {
    type: number
    sql: ${TABLE}.FIRST_MIN_AGREED_PERCENT ;;
    label: "First Min Agreed Percent"
  }

  dimension: first_period_amount {
    type: number
    sql: ${TABLE}.FIRST_PERIOD_AMOUNT ;;
    label: "First Period Amount"
  }

  dimension: grace_days {
    type: number
    sql: ${TABLE}.GRACE_DAYS ;;
    label: "Grace Days"
  }

  dimension: instal_amount {
    type: number
    sql: ${TABLE}.INSTAL_AMOUNT ;;
    label: "Instal Amount"
  }

  dimension: instance_id {
    type: number
    sql: ${TABLE}.INSTANCE_ID ;;
    label: "Instance ID"
  }

  dimension: max_days {
    type: number
    sql: ${TABLE}.MAX_DAYS ;;
    label: "Max Days"
  }

  dimension: max_interval {
    type: number
    sql: ${TABLE}.MAX_INTERVAL ;;
    label: "Max Interval"
  }

  dimension: max_period {
    type: number
    sql: ${TABLE}.MAX_PERIOD ;;
    label: "Max Period"
  }

  dimension: min_agreed_amt {
    type: number
    sql: ${TABLE}.MIN_AGREED_AMT ;;
    label: "Min Agreed Amount"
  }

  dimension: min_agreed_amt_percent {
    type: number
    sql: ${TABLE}.MIN_AGREED_AMT_PERCENT ;;
    label: "Min Agreed Amount Percent"
  }

  dimension: min_period_amt {
    type: number
    sql: ${TABLE}.MIN_PERIOD_AMT ;;
    label: "Min Period Amount"
  }

  dimension: min_period_amt_percent {
    type: number
    sql: ${TABLE}.MIN_PERIOD_AMT_PERCENT ;;
    label: "Min Period Amount Percent"
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
    label: "Object ID"
  }

  dimension: open_amount {
    type: number
    sql: ${TABLE}.OPEN_AMOUNT ;;
    label: "Open Amount"
  }

  dimension: pa_plan_detail_id {
    type: number
    sql: ${TABLE}.PA_PLAN_DETAIL_ID ;;
    label: "PA Plan Detail ID"
  }

  dimension: pa_plan_id {
    type: number
    sql: ${TABLE}.PA_PLAN_ID ;;
    label: "PA Plan ID"
  }

  dimension: pa_policy_id {
    type: number
    sql: ${TABLE}.PA_POLICY_ID ;;
    label: "PA Policy ID"
  }

  dimension: period_value {
    type: number
    sql: ${TABLE}.PERIOD_VALUE ;;
    label: "Period Value"
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.REGION_ID ;;
    label: "Region ID"
  }

  dimension: remain_amount {
    type: number
    sql: ${TABLE}.REMAIN_AMOUNT ;;
    label: "Remain Amount"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    label: "Sub ID"
  }

  ## Measures

  measure: count_object_id {
    type: count_distinct
    sql: ${TABLE}.OBJECT_ID ;;
    group_label: "Cantidad"
    label: "Object ID"
  }

  measure: count {
    type: count
    group_label: "Cantidad"
    label: "Count"
  }


}
