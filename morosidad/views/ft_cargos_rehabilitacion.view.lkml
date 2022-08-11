view: ft_cargos_rehabilitacion {
  label: "Cargos Rehabilitacion"
  sql_table_name: @{gcp_ambiente}.FT_CargosRehabilitacion`;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.CARGOSPK;;
  }

  ## Dates

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
    datatype: timestamp
    group_label: "Fecha Emision Comprobante"
    label: "Emision Comprobante"
  }

  dimension_group: resume {
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
    sql: ${TABLE}.RESUME_DATE ;;
    datatype: timestamp
    group_label: "Fecha Rehabilitacion"
    label: "Rehabilitacion"
  }

  dimension: _fecha_creacion {
    type: date_time
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
    group_label: "Cliente"
    label: "Cuenta Codigo"
  }

  dimension: bill_cycle_id {
    type: string
    sql: ${TABLE}.BILL_CYCLE_ID ;;
    label: "Ciclo Facturacion ID"
    description: "Contiene el ciclo de facturacion en formato fecha completo YYYYMMDD"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    group_label: "Cliente"
    label: "Cliente Codigo"
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.INVOICE_NO ;;
    label: "Prefactura ID"
    description: "Numero interno de comprobante HW"
  }

  ## Numbers

  dimension: accion_id {
    type: number
    sql: ${TABLE}.ACCION_ID ;;
    label: "Accion ID"
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    group_label: "Cliente"
    label: "Cuenta ID"
  }

  dimension: charge_code_id {
    type: number
    sql: ${TABLE}.CHARGE_CODE_ID ;;
    label: "Cargo ID"
    description: "ID de Cargos de las terminales de venta, e intereses y otros conceptos."
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    group_label: "Cliente"
    label: "Cliente ID"
  }

  dimension: invoice_detail_id {
    type: number
    sql: ${TABLE}.INVOICE_DETAIL_ID ;;
    label: "Item Facturado ID"
  }

  dimension: task_order_id {
    type: number
    sql: ${TABLE}.TASK_ORDER_ID ;;
    label: "Orden de Trabajo ID"
  }

  ## Hidden

  dimension: charge_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CHARGE_AMT ;;
  }

## Measures

  measure: total_charge_amt {
    type: sum
    sql: ${charge_amt};;
    label: "Cargo Total"
  }

  measure: count {
    type: count
    label: "Cantidad"
  }
}
