view: ft_suscripcion_cambios_plan {
  label: "Suscripcion Cambios Plan"
  sql_table_name: @{gcp_ambiente}.FT_SuscripcionCambiosPlan` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${o_inst_id} ;;
  }

  ## Dates

  dimension: status_date_new {
    type: date_time
    sql: ${TABLE}.STATUS_DATE_NEW ;;
    datatype: timestamp
  }

  dimension: status_date_old {
    type: date_time
    sql: ${TABLE}.STATUS_DATE_OLD ;;
    datatype: timestamp
  }

  dimension: eff_date_new {
    type: date_time
    sql: ${TABLE}.EFF_DATE_NEW ;;
    datatype: timestamp
  }

  dimension: eff_date_old {
    type: date_time
    sql: ${TABLE}.EFF_DATE_OLD ;;
    datatype: timestamp
  }

  dimension: exp_date_new {
    type: date_time
    sql: ${TABLE}.EXP_DATE_NEW ;;
    datatype: timestamp
  }

  dimension: exp_date_old {
    type: date_time
    sql: ${TABLE}.EXP_DATE_OLD ;;
    datatype: timestamp
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

  dimension: act_brand_name {
    type: string
    sql: ${TABLE}.ACT_BRAND_NAME ;;
  }

  dimension: act_sub_identity {
    type: string
    sql: ${TABLE}.ACT_SUB_IDENTITY ;;
  }

  dimension: ind_cambio_plan {
    type: string
    sql: ${TABLE}.IND_CAMBIO_PLAN ;;
  }

  dimension: offering_name_new {
    type: string
    sql: ${TABLE}.OFFERING_NAME_NEW ;;
  }

  dimension: offering_name_old {
    type: string
    sql: ${TABLE}.OFFERING_NAME_OLD ;;
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

  dimension: pri_bill_cycle_type {
    type: string
    sql: ${TABLE}.PRI_BILL_CYCLE_TYPE ;;
  }

  dimension: pri_brand_name {
    type: string
    sql: ${TABLE}.PRI_BRAND_NAME ;;
  }

  dimension: pri_sub_identity {
    type: string
    sql: ${TABLE}.PRI_SUB_IDENTITY ;;
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

  dimension: ult_acct_code {
    type: string
    sql: ${TABLE}.ULT_ACCT_CODE ;;
  }

  dimension: ult_bill_cycle_type {
    type: string
    sql: ${TABLE}.ULT_BILL_CYCLE_TYPE ;;
  }

  dimension: ult_brand_name {
    type: string
    sql: ${TABLE}.ULT_BRAND_NAME ;;
  }

  dimension: ult_sub_identity {
    type: string
    sql: ${TABLE}.ULT_SUB_IDENTITY ;;
  }

  ## Numbers

  dimension: pri_acct_id {
    type: number
    sql: ${TABLE}.PRI_ACCT_ID ;;
  }

  dimension: pri_brand_id {
    type: number
    sql: ${TABLE}.PRI_BRAND_ID ;;
  }

  dimension: offering_new_id {
    type: number
    sql: ${TABLE}.OFFERING_NEW_ID ;;
  }

  dimension: o_inst_id {
    type: number
    sql: ${TABLE}.O_INST_ID ;;
  }

  dimension: offering_old_id {
    type: number
    sql: ${TABLE}.OFFERING_OLD_ID ;;
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

  dimension: act_brand_id {
    type: number
    sql: ${TABLE}.ACT_BRAND_ID ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: ult_brand_id {
    type: number
    sql: ${TABLE}.ULT_BRAND_ID ;;
  }

##############
## Measures ##
##############

  measure: count {
    type: count
    drill_fields: []
  }
}
