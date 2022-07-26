view: ft_conta_detalle {
  label: "Detalle Contabilidad"
  sql_table_name: @{gcp_ambiente}.FT_ContaDetalle` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: conta_detalle_pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.ContaDetallePK ;;
  }

  ## Dates

  dimension_group: cr_accounting {
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
    sql: ${TABLE}.CR_ACCOUNTING_DATE ;;
    datatype: timestamp
    group_label: "Fecha Contabilidad"
    label: "Contabilidad"
  }

  dimension_group: trans {
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
    sql: ${TABLE}.TRANS_DATE ;;
    datatype: timestamp
    group_label: "Fecha Transaccion"
    label: "Transaccion"
  }

  dimension: _fecha_creacion {
    type: date_time
    sql: ${TABLE}._fechaCreacion ;;
    datatype: datetime
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date_time
    sql: ${TABLE}._fechaUltimaActualizacion ;;
    datatype: datetime
    view_label: "Auditoria"
    label: "Fecha Modificacion"
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

  dimension: bank_interdeposit {
    type: string
    sql: ${TABLE}.BANK_INTERDEPOSIT ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: cr_gl_acct_code {
    type: string
    sql: ${TABLE}.CR_GL_ACCT_CODE ;;
  }

  dimension: cr_gl_acct_name {
    type: string
    sql: ${TABLE}.CR_GL_ACCT_NAME ;;
  }

  dimension: cr_jnl_rule_name {
    type: string
    sql: ${TABLE}.CR_JNL_RULE_NAME ;;
  }

  dimension: credit_card_type_des {
    type: string
    sql: ${TABLE}.CREDIT_CARD_TYPE_DES ;;
  }

  dimension: dr_gl_acct_code {
    type: string
    sql: ${TABLE}.DR_GL_ACCT_CODE ;;
  }

  dimension: dr_gl_acct_name {
    type: string
    sql: ${TABLE}.DR_GL_ACCT_NAME ;;
  }

  dimension: jnl_status {
    type: string
    sql: ${TABLE}.JNL_STATUS ;;
  }

  dimension: jnl_status_name {
    type: string
    sql: ${TABLE}.JNL_STATUS_NAME ;;
  }

  dimension: pay_channel_name {
    type: string
    sql: ${TABLE}.PAY_CHANNEL_NAME ;;
  }

  dimension: payment_method_des {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_DES ;;
  }

  dimension: payment_method_id {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_ID ;;
  }

  dimension: point_sale_id {
    type: string
    sql: ${TABLE}.POINT_SALE_ID ;;
  }

  dimension: province_des {
    type: string
    sql: ${TABLE}.PROVINCE_DES ;;
  }

  dimension: trade_number {
    type: string
    sql: ${TABLE}.TRADE_NUMBER ;;
  }

  dimension: trans_type {
    type: string
    sql: ${TABLE}.TRANS_TYPE ;;
  }

  dimension: trans_type_des {
    type: string
    sql: ${TABLE}.TRANS_TYPE_DES ;;
  }

  ## Numbers

  dimension: cr_jnl_rule_id {
    type: number
    sql: ${TABLE}.CR_JNL_RULE_ID ;;
    value_format_name: id
  }

  dimension: credit_card_type_id {
    type: number
    sql: ${TABLE}.CREDIT_CARD_TYPE_ID ;;
    value_format_name: id
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.TRANS_ID ;;
    value_format_name: id
  }

  dimension: dr_gl_amt {
    type: number
    sql: ${TABLE}.DR_GL_AMT ;;
  }

  dimension: cr_gl_amt {
    type: number
    sql: ${TABLE}.CR_GL_AMT ;;
  }

  dimension: trx_amt {
    type: number
    sql: ${TABLE}.TRX_AMT ;;
  }

## Measures

  measure: total_dr_gl_amt {
    type: sum
    sql: ${dr_gl_amt} ;;
  }

  measure: total_cr_gl_amt {
    type: sum
    sql: ${cr_gl_amt} ;;
  }

  measure: total_trx_amt {
    type: sum
    sql: ${trx_amt} ;;
  }
}
