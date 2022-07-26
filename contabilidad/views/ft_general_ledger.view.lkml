view: ft_general_ledger {
  label: "General Ledger"
  sql_table_name: @{gcp_ambiente}.FT_GeneralLedger` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: ledger_pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.LedgerPK ;;
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
    group_label: "Fecha Contabilidad"
    label: "Contabilidad"
  }

  dimension_group: invoice {
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
    sql: ${TABLE}.INVOICE_DATE ;;
    group_label: "Fecha Factura"
    label: "Factura"
  }

  dimension: _fecha_creacion {
    type: date
    sql: ${TABLE}._fechaCreacion ;;
    datatype: datetime
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date
    sql: ${TABLE}._fechaUltimaActualizacion ;;
    datatype: datetime
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

  dimension: banco_interd {
    type: string
    sql: ${TABLE}.BANCO_INTERD ;;
  }

  dimension: bank_agent {
    type: string
    sql: ${TABLE}.BANK_AGENT ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: charge_code_id {
    type: string
    sql: ${TABLE}.CHARGE_CODE_ID ;;
  }

  dimension: charge_code_type_id {
    type: string
    sql: ${TABLE}.CHARGE_CODE_TYPE_ID ;;
  }

  dimension: cr_gl_acct_code {
    type: string
    sql: ${TABLE}.CR_GL_ACCT_CODE ;;
  }

  dimension: cr_gl_acct_name {
    type: string
    sql: ${TABLE}.CR_GL_ACCT_NAME ;;
  }

  dimension: cr_gl_amt {
    type: number
    sql: ${TABLE}.CR_GL_AMT ;;
  }

  dimension: cr_jnl_rule_name {
    type: string
    sql: ${TABLE}.CR_JNL_RULE_NAME ;;
  }

  dimension: dr_gl_acct_code {
    type: string
    sql: ${TABLE}.DR_GL_ACCT_CODE ;;
  }

  dimension: dr_gl_acct_name {
    type: string
    sql: ${TABLE}.DR_GL_ACCT_NAME ;;
  }

  dimension: dr_jnl_rule_name {
    type: string
    sql: ${TABLE}.DR_JNL_RULE_NAME ;;
  }

  dimension: invoice_trans_type {
    type: string
    sql: ${TABLE}.INVOICE_TRANS_TYPE ;;
  }

  dimension: jnl_status {
    type: string
    sql: ${TABLE}.JNL_STATUS ;;
  }

  dimension: jnl_status_name {
    type: string
    sql: ${TABLE}.JNL_STATUS_NAME ;;
  }

  dimension: payment_method_id {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_ID ;;
  }

  dimension: prov_cert {
    type: string
    sql: ${TABLE}.PROV_CERT ;;
  }

  dimension: src_activity_id {
    type: string
    sql: ${TABLE}.SRC_ACTIVITY_ID ;;
  }

  dimension: src_trans_id {
    type: string
    sql: ${TABLE}.SRC_TRANS_ID ;;
  }

  dimension: trans_id {
    type: string
    sql: ${TABLE}.TRANS_ID ;;
  }

  ## Numbers

  dimension: cr_jnl_rule_id {
    type: number
    sql: ${TABLE}.CR_JNL_RULE_ID ;;
    value_format_name: id
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
    value_format_name: id
  }

  dimension: jnl_accept_serial {
    type: number
    sql: ${TABLE}.JNL_ACCEPT_SERIAL ;;
    value_format_name: id
  }

  dimension: origen_srcid {
    type: number
    sql: ${TABLE}.OrigenSRCId ;;
    value_format_name: id
  }

  dimension: dr_gl_amt {
    type: number
    sql: ${TABLE}.DR_GL_AMT ;;
  }

## Measures

  measure: total_dr_gl_amt {
    type: sum
    sql: ${dr_gl_amt} ;;
  }
}
