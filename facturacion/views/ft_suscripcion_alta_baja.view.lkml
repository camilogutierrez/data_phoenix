view: ft_suscripcion_alta_baja {
  label: "Suscripcion Alta Baja"
  sql_table_name: @{gcp_ambiente}.FT_SuscripcionAltaBaja` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${sub_id} ;;
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

  dimension: _fecha_creacion {
    type: date_time
    datatype: datetime
    sql: ${TABLE}._fechaCreacion ;;
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date_time
    datatype: datetime
    sql: ${TABLE}._fechaUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Fecha Actualizacion"
  }

  ## Strings

  dimension: _sesion_id {
    type: string
    sql: ${TABLE}._sesionId ;;
    view_label: "Auditoria"
    label: "Sesion Id"
  }

  dimension: _usuario_creacion {
    type: string
    sql: ${TABLE}._usuarioCreacion ;;
    view_label: "Auditoria"
    label: "Usuario Creacion"
  }

  dimension: _usuario_ultima_actualizacion {
    type: string
    sql: ${TABLE}._usuarioUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Usuario Modificacion"
  }

  dimension: act_acct_code {
    type: string
    sql: ${TABLE}.ACT_ACCT_CODE ;;
  }

  dimension: act_bill_cycle_type {
    type: string
    sql: ${TABLE}.ACT_BILL_CYCLE_TYPE ;;
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

  dimension: pri_acct_code {
    type: string
    sql: ${TABLE}.PRI_ACCT_CODE ;;
  }

  dimension: pri_bill_cycle_type {
    type: string
    sql: ${TABLE}.PRI_BILL_CYCLE_TYPE ;;
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

  dimension: ult_acct_code {
    type: string
    sql: ${TABLE}.ULT_ACCT_CODE ;;
  }

  dimension: ult_bill_cycle_type {
    type: string
    sql: ${TABLE}.ULT_BILL_CYCLE_TYPE ;;
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

  ## Numbers

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: pri_acct_id {
    type: number
    sql: ${TABLE}.PRI_ACCT_ID ;;
  }

  dimension: pri_offering_id {
    type: number
    sql: ${TABLE}.PRI_OFFERING_ID ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
  }

  dimension: ult_acct_id {
    type: number
    sql: ${TABLE}.ULT_ACCT_ID ;;
  }

  dimension: act_acct_id {
    type: number
    sql: ${TABLE}.ACT_ACCT_ID ;;
  }

  dimension: act_offering_id {
    type: number
    sql: ${TABLE}.ACT_OFFERING_ID ;;
  }

  dimension: ult_offering_id {
    type: number
    sql: ${TABLE}.ULT_OFFERING_ID ;;
  }

##############
## Measures ##
##############

  measure: count {
    type: count
    drill_fields: []
  }
}
