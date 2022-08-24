view: ft_morosidad_resumen {
  label: "Morosidad Resumen"
  sql_table_name: @{gcp_ambiente}.FT_MorosidadResumen` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: object_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
  }

  ## Dates

  dimension_group: fact_venc_mas_antigua {
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
    sql: ${TABLE}.FACT_VENC_MAS_ANTIGUA ;;
    datatype: timestamp
    group_label: "Fecha Vto. Mas Antiguo"
    label: "Vto. Mas Antiguo"
  }

  dimension_group: fecha_inicio_mora {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.FECHA_INICIO_MORA ;;
    datatype: date
    convert_tz: no
    group_label: "Fecha Inicio Mora"
    label: "Mora Iniciada"
  }

  dimension_group: fecha_pago_mas_reciente {
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
    sql: ${TABLE}.FECHA_PAGO_MAS_RECIENTE ;;
    datatype: timestamp
    group_label: "Fecha Ultimo Pago"
    label: "Pago Mas Reciente"
  }

  dimension_group: _fecha_creacion {
    type: time
    datatype: datetime
    sql: ${TABLE}._fechaCreacion ;;
    view_label: "Auditoria"
    label: "Fecha Creacion"
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

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    view_label: "Cliente"
    label: "Cuenta Codigo"
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE ;;
    label: "Bill Cycle Type"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    view_label: "Cliente"
    label: "Codigo"
  }

  dimension: document_number {
    type: string
    sql: ${TABLE}.DOCUMENT_NUMBER ;;
    view_label: "Cliente"
    label: "Documento"
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}.DOCUMENT_TYPE ;;
    view_label: "Cliente"
    label: "Tipo Documento"
  }

  dimension: familia_producto {
    type: string
    sql: ${TABLE}.FAMILIA_PRODUCTO ;;
    label: "Familia Producto"
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
    view_label: "Cliente"
    label: "Nombre"
  }

  dimension: plan_financiamiento {
    type: string
    sql: ${TABLE}.PLAN_FINANCIAMIENTO ;;
    label: "Plan Financiamiento"
  }

  dimension: razonsocial {
    type: string
    sql: ${TABLE}.RAZONSOCIAL ;;
    view_label: "Cliente"
    label: "Razon Social"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
    view_label: "Cliente"
    label: "Apellido"
  }

  dimension: tipo_linea_mora {
    type: string
    sql: ${TABLE}.TIPO_LINEA_MORA ;;
    label: "Tipo Linea Mora"
  }

  ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    label: "Account ID"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    label: "Customer ID"
  }

  dimension: pago_mas_reciente {
    type: number
    sql: ${TABLE}.PAGO_MAS_RECIENTE ;;
    label: "Pago Mas Reciente"
  }

  dimension: servicios_activos {
    type: number
    sql: ${TABLE}.SERVICIOS_ACTIVOS ;;
    label: "Servicios Activos"
  }

  dimension: servicios_susp_cuenta {
    type: number
    sql: ${TABLE}.SERVICIOS_SUSP_CUENTA ;;
    label: "Servicios Suspendidos Cuenta"
  }

  ## Hidden

  dimension: importe_pago_mas_reciente {
    hidden: yes
    type: number
    sql: ${TABLE}.IMPORTE_PAGO_MAS_RECIENTE ;;
  }

  dimension: saldo_a_vencer {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_A_VENCER ;;
  }

  dimension: saldo_vencido {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_VENCIDO ;;
  }

  dimension: saldo_total {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_TOTAL ;;
  }

  dimension: cant_degra {
    hidden: yes
    type: number
    sql: ${TABLE}.CANT_DEGRA ;;
  }

  dimension: cant_dias_moroso {
    hidden: yes
    type: number
    sql: ${TABLE}.CANT_DIAS_MOROSO ;;
  }

  dimension: saldo_venc_hasta_30_d {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_VENC_HASTA_30D ;;
  }

  dimension: saldo_venc_31_a_60_d {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_VENC_31_A_60D ;;
  }

  dimension: saldo_venc_61_a_90_d {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_VENC_61_A_90D ;;
  }

  dimension: saldo_venc_91_a_120_d {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_VENC_91_A_120D ;;
  }

  dimension: saldo_venc_121_a_150_d {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_VENC_121_A_150D ;;
  }

  dimension: saldo_venc_151_a_180_d {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_VENC_151_A_180D ;;
  }

  dimension: saldo_venc_181_a_360_d {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_VENC_181_A_360D ;;
  }

  dimension: saldo_venc_mas_de_360_d {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_VENC_MAS_DE_360D ;;
  }

## Measures

  measure: total_importe_pago_mas_reciente {
    type: sum
    sql: ${importe_pago_mas_reciente} ;;
    label: "Importe Pago Mas Reciente"
  }

  measure: total_saldo_a_vencer {
    type: sum
    sql: ${saldo_a_vencer} ;;
    label: "Saldo a Vencer"
  }

  measure: total_saldo_vencido {
    type: sum
    sql: ${saldo_vencido} ;;
    label: "Saldo Vencido"
  }

  measure: total_saldo_total {
    type: sum
    sql: ${saldo_total} ;;
    label: "Saldo Total"
  }

  measure: count {
    type: count
    group_label: "Cantidad"
    label: "Registros"
  }

  measure: total_cant_degra {
    type: sum
    sql: ${cant_degra} ;;
    group_label: "Cantidad"
    label: "Degradaciones"
  }

  measure: total_cant_dias_moroso {
    type: sum
    sql: ${cant_dias_moroso} ;;
    group_label: "Cantidad"
    label: "Dias Morosos"
  }

  measure: total_saldo_venc_hasta_30_d {
    type: sum
    sql: ${saldo_venc_hasta_30_d} ;;
    group_label: "Saldos Vencidos"
    group_item_label: "1- 1 a 30"
    label: "Saldo 1 a 30 dias"
  }

  measure: total_saldo_venc_31_a_60_d {
    type: sum
    sql: ${saldo_venc_31_a_60_d} ;;
    group_label: "Saldos Vencidos"
    group_item_label: "2- 31 a 60"
    label: "Saldo 31 a 60 dias"
  }

  measure: total_saldo_venc_61_a_90_d {
    type: sum
    sql: ${saldo_venc_61_a_90_d} ;;
    group_label: "Saldos Vencidos"
    group_item_label: "3- 61 a 90"
    label: "Saldo 61 a 90 dias"
  }

  measure: total_saldo_venc_91_a_120_d {
    type: sum
    sql: ${saldo_venc_91_a_120_d} ;;
    group_label: "Saldos Vencidos"
    group_item_label: "4- 91 a 120"
    label: "Saldo 91 a 120 dias"
  }

  measure: total_saldo_venc_121_a_150_d {
    type: sum
    sql: ${saldo_venc_121_a_150_d} ;;
    group_label: "Saldos Vencidos"
    group_item_label: "5- 121 a 150"
    label: "Saldo 121 a 150 dias"
  }

  measure: total_saldo_venc_151_a_180_d {
    type: sum
    sql: ${saldo_venc_151_a_180_d} ;;
    group_label: "Saldos Vencidos"
    group_item_label: "6- 151 a 180"
    label: "Saldo 151 a 180 dias"
  }

  measure: total_saldo_venc_181_a_360_d {
    type: sum
    sql: ${saldo_venc_181_a_360_d} ;;
    group_label: "Saldos Vencidos"
    group_item_label: "7- 181 a 360"
    label: "Saldo 181 a 360 dias"
  }

  measure: total_saldo_venc_mas_de_360_d {
    type: sum
    sql: ${saldo_venc_mas_de_360_d} ;;
    group_label: "Saldos Vencidos"
    group_item_label: "8- Mayor a 360"
    label: "Saldo Mas de 360 dias"
  }
}
