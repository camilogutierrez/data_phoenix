view: ft_pagos {
  sql_table_name: @{gcp_ambiente}.FT_Pagos`;;
  suggestions: no
  label: "Pagos"

## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type:  string
    sql:${TABLE}.PAGOSPK;;
  }

  ## Dates

  dimension_group: payment_date {
    type: time
    sql: ${TABLE}.PAYMENT_DATE ;;
    timeframes:[
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    group_label: "Fecha Pago"
    label: "Pago"
  }

  dimension_group: check_date {
    type: time
    timeframes:[
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CHECK_DATE ;;
    group_label: "Fecha Cheque"
    label: "Cheque"
    description: "Fecha del cheque bancario, que se ingresa en la GUI o se transfiere a traves de una interfaz."
  }

  dimension_group: entry_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ENTRY_DATE ;;
    group_label: "Fecha Creacion"
    label: "Creacion"
  }

  dimension_group: fecha_contable {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FECHA_CONTABLE ;;
    group_label: "Fecha Contable"
    label: "Contable"
  }

  dimension_group: last_update_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LAST_UPDATE_DATE ;;
    group_label: "Fecha Ultima Actualizacion"
    label: "Ultima Actualizacion"
  }

  dimension_group: reversal_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REVERSAL_DATE ;;
    group_label: "Fecha Reverso"
    label: "Reversion"
  }

  dimension_group: recon_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.RECON_DATE ;;
    group_label: "Fecha Recon"
    label: "Recon"
  }

  ## Strings

  dimension: is_invoice_payment {
    type: string
    sql: ${TABLE}.IS_INVOICE_PAYMENT ;;
    group_label: "Pago"
    label: "Es Pago Comprobante"
    description: "Flag que indica si el pago culmino en una factura."
  }

  dimension: trans_date {
    type: string
    sql: ${TABLE}.TRANS_DATE ;;
    label: "Fecha Operacion"
  }

  dimension: process_date {
    type: string
    sql: ${TABLE}.PROCESS_DATE ;;
    label: "Fecha Proceso"
    description: "Fecha de proceso, proviene de una entidad externa."
  }

  dimension: c_payment_date {
    type: string
    sql: ${TABLE}.C_PAYMENT_DATE ;;
    label: "Pago Externo"
  }

  dimension: access_method {
    type: string
    sql: ${TABLE}.ACCESS_METHOD ;;
    label: "Metodo de Acceso"
    description: "Metodo de acceso de la recarga"
  }

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    group_label: "Cliente"
    label: "Cuenta Cliente"
    description: "Responsable de pago/Cuenta Code"
  }

  dimension: acct_payment_mode {
    type: string
    sql: ${TABLE}.ACCT_PAYMENT_MODE ;;
    group_label: "Cliente"
    label: "Mercado Id"
    description: "Mercado de la cuenta en el momento de la facturacion: 0 = Prepago, 1 = Pospago, 2 = Hibrido, x =  No Determinado"
  }

  dimension: acct_payment_mode_des {
    type: string
    sql: ${TABLE}.ACCT_PAYMENT_MODE_DES ;;
    group_label: "Cliente"
    label: "Mercado Descripcion"
    description: "Mercado de la cuenta en el momento de la facturacion: Prepago, Pospago, Hibrido, No Determinado"
  }

  dimension: bank_acct_name {
    type: string
    sql: ${TABLE}.BANK_ACCT_NAME ;;
    group_label: "Pago"
    label: "Entidad Nombre Cuenta Bancaria"
    description: "Nombre de la cuenta bancaria, que se ingresa en la GUI o se transfiere a través de una interfaz."
  }

  dimension: bank_branch_code {
    type: string
    sql: ${TABLE}.BANK_BRANCH_CODE ;;
    group_label: "Pago"
    label: "Entidad Codigo Sucursal"
    description: "Codigo de sucursal, que se ingresa en la GUI o se transfiere a traves de una interfaz."
  }

  dimension: bank_code {
    type: string
    sql: ${TABLE}.BANK_CODE ;;
    group_label: "Pago"
    label: "Entidad Codigo"
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}.BANK_NAME ;;
    group_label: "Pago"
    label: "Entidad Nombre"
  }

  dimension: bank_promotion_code {
    type: string
    sql: ${TABLE}.BANK_PROMOTION_CODE ;;
    group_label: "Pago"
    label: "Entidad Codigo de Promocion"
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE ;;
    group_label: "Comprobante"
    label: "Ciclo Facturacion"
    description: "Contiene el ciclo de facturación en formato fecha DD(SUBSTR(AllData.BILL_CYCLE_ID, 7,2))"
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.CHANNEL_ID ;;
    label: "Canal Id"
  }

  dimension: check_no {
    type: string
    sql: ${TABLE}.CHECK_NO ;;
    label: "Cheque Numero"
    description: "Numero de cheque, que se ingresa en la GUI o se transfiere a traves de una interfaz."
  }

  dimension: credit_card_des {
    type: string
    sql: ${TABLE}.CREDIT_CARD_DES ;;
    group_label: "Pago"
    label: "Tarjeta Tipo Descripcion"
  }

  dimension: credit_card_no {
    type: string
    sql: ${TABLE}.CREDIT_CARD_NO ;;
    group_label: "Pago"
    label: "Tarjeta Numero"
    description: "Encriptado"
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.CURRENCY_NAME ;;
    group_label: "Pago"
    label: "Moneda"
  }

  dimension: currency_symbol {
    type: string
    sql: ${TABLE}.CURRENCY_SYMBOL ;;
    group_label: "Pago"
    label: "Moneda Simbolo"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    group_label: "Cliente"
    label: "Cliente"
  }

  dimension: cust_first_name {
    type: string
    sql: ${TABLE}.CUST_FIRST_NAME ;;
    group_label: "Cliente"
    label: "Nombre"
  }

  dimension: cust_last_name {
    type: string
    sql: ${TABLE}.CUST_LAST_NAME ;;
    group_label: "Cliente"
    label: "Apellido"
  }

  dimension: cust_segment {
    type: string
    sql: ${TABLE}.CUST_SEGMENT ;;
    group_label: "Cliente"
    label: "Segmento"
  }

  dimension: header_bank_code {
    type: string
    sql: ${TABLE}.HEADER_BANK_CODE ;;
    group_label: "Pago"
    label: "Entidad Codigo de Cabecera"
    description: "Codigo del banco de cabecera proveniente de una entidad externa."
  }

  dimension: ice_channel_code {
    type: string
    sql: ${TABLE}.ICE_CHANNEL_CODE ;;
    label: "Canal Codigo ICE"
    description: "Canal 1002 - Entidades externas"
  }

  dimension: ind_unallocated {
    type: string
    sql: ${TABLE}.IND_UNALLOCATED ;;
    group_label: "Pago"
    label: "Indicador no alocado"
    description: "Indicador de pago no alocado"
  }

  dimension: ind_wondersoft {
    type: string
    sql: ${TABLE}.IND_WONDERSOFT ;;
    group_label: "Pago"
    label: "Indicador Wondersoft"
    description: "Indicador de pago proveniente de Wondersoft."
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.INVOICE_NO ;;
    group_label: "Comprobante"
    label: "Prefactura Id"
    description: "Numero de comprobante interno HW"
  }

  dimension: invoice_type_inf {
    type: string
    sql: ${TABLE}.INVOICE_TYPE_INF ;;
    group_label: "Comprobante"
    label: "Comprobante Tipo Inferido"
    description: "Tipo de factura a la cuál termino impactando el pago, este dato no existe como tal, por este motivo se infiere. Nació en RO para el 744."
  }

  dimension: nro_cupon_tarjeta {
    type: string
    sql: ${TABLE}.NRO_CUPON_TARJETA ;;
    group_label: "Pago"
    label: "Numero Cupon Tarjeta"
  }

  dimension: number_of_installment {
    type: string
    sql: ${TABLE}.NUMBER_OF_INSTALLMENT ;;
    group_label: "Pago"
    label: "Cuotas DPF"
    description: "Cantidad de cuotas para DPF."
  }

  dimension: operation_type {
    type: string
    sql: ${TABLE}.OPERATION_TYPE ;;
    group_label: "Pago"
    label: "Operacion Tipo"
    description: "Tipo de operación de pago"
  }

  dimension: operation_type_inf {
    type: string
    sql: ${TABLE}.OPERATION_TYPE_INF ;;
    group_label: "Pago"
    label: "Operacion Tipo Inferido"
    description: "Tipo de operacion de factura, se infiere por distintos campos, como el Canal, el canal de ICE, el metodo de pago. Nacio en RO para el 744. CyclicInvoice, RechargeInvoice, SalesInvoice, NO DETERMINADO"
  }

  dimension: oper_id {
    type: string
    sql: ${TABLE}.OPER_ID ;;
    group_label: "Pago"
    label: "Operador"
  }

  dimension: paid_flag {
    type: string
    sql: ${TABLE}.PAID_FLAG ;;
    group_label: "Pago"
    label: "Pago Flag"
    description: "Indica si el modo de pago es prepago o pospago. Las opciones son las siguientes: 0: prepago, 1: pospago"
  }

  dimension: payment_channel_name {
    type: string
    sql: ${TABLE}.PAYMENT_CHANNEL_NAME ;;
    group_label: "Pago"
    label: "Pago Canal"
  }

  dimension: payment_method_des {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_DES ;;
    group_label: "Pago"
    label: "Medio de Pago"
  }

  dimension: payment_method_id {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_ID ;;
    group_label: "Pago"
    label: "Medio Pago Id"
  }

  dimension: payment_operation_type {
    type: string
    sql: ${TABLE}.PAYMENT_OPERATION_TYPE ;;
    group_label: "Pago"
    label: "Pago Tipo Operacion"
    description: "Tipo de operacion de pago, proviene de una entidad externa. ∅, CyclicInvoice, RechargeInvoice, SalesInvoice"
  }

  dimension: payment_plan {
    type: string
    sql: ${TABLE}.PAYMENT_PLAN ;;
    group_label: "Pago"
    label: "Pago Plan"
    description: "Plan de pago, proviene de una entidad externa. En documentacion, no existe mayor informacion."
  }

  dimension: payment_serial_id {
    type: string
    sql: ${TABLE}.PAYMENT_SERIAL_ID ;;
    group_label: "Pago"
    label: "Pago Serial Id"
    description: "Proviene de una entidad externa, se utiliza como relacion entre la tabla de pagos y wondersoft."
  }

  dimension: pri_identity {
    type: string
    sql: ${TABLE}.PRI_IDENTITY ;;
    group_label: "Cliente"
    label: "Linea"
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}.PRODUCT_LINE ;;
    group_label: "Cliente"
    label: "Linea Producto"
  }

  dimension: pr_status {
    type: string
    sql: ${TABLE}.PR_STATUS ;;
    group_label: "Pago"
    label: "Pago Estado"
    description: "Estado del pago"
  }

  dimension: pr_status_des {
    type: string
    sql: ${TABLE}.PR_STATUS_DES ;;
    group_label: "Pago"
    label: "Pago Descripcion Estado"
  }

  dimension: reversal_reason_code {
    type: string
    sql: ${TABLE}.REVERSAL_REASON_CODE ;;
    group_label: "Pago"
    label: "Reversion Motivo Codigo"
  }

  dimension: reversal_reason_des {
    type: string
    sql: ${TABLE}.REVERSAL_REASON_DES ;;
    group_label: "Pago"
    label: "Reversion Motivo Descripcion"
  }

  dimension: staff_name {
    type: string
    sql: ${TABLE}.STAFF_NAME ;;
    group_label: "Pago"
    label: "Operador Nombre"
  }

  dimension: trade_number {
    type: string
    sql: ${TABLE}.TRADE_NUMBER ;;
    group_label: "Pago"
    label: "Comercio Numero"
    description: "Numero de comercio, proviene de Wondersoft."
  }

  dimension: collection_entity {
    type: string
    sql: ${TABLE}.COLLECTION_ENTITY ;;
    label: "Entidad Recaudacion"
    description: "Entidad de Recaudacion"
  }

  dimension: gestor_batch {
    type: string
    sql: ${TABLE}.GESTOR_BATCH ;;
    label: "Gestor Batch"
    description: "Gestor Batch"
  }

  dimension: status_batch {
    type: string
    sql: ${TABLE}.STATUS_BATCH ;;
    label: "Status Batch"
    description: "Status Batch"
  }

  dimension: cobro_migrado_batch {
    type: string
    sql: ${TABLE}.COBRO_MIGRADO_BATCH ;;
    label: "Cobro Migrado Batch"
    description: "Cobro Migrado Batch"
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.FILE_NAME ;;
    label: "Nombre Archivo"
    description: "Nombre de archivo"
  }

  dimension: canal_cobro_batch {
    type: string
    sql: ${TABLE}.CANAL_COBRO_BATCH ;;
    label: "Canal Cobro Batch"
    description: "Canal cobro batch"
  }

 ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    group_label: "Cliente"
    label: "Lote"
  }

  dimension: batch_no {
    type: number
    sql: ${TABLE}.BATCH_NO ;;
    value_format_name: id
    group_label: "Comprobante"
    label: "Lote"
  }

  dimension: credit_card_type_id {
    type: number
    sql: ${TABLE}.CREDIT_CARD_TYPE_ID ;;
    value_format_name: id
    group_label: "Pago"
    label: "Tarjeta Tipo"
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
    value_format_name: id
    group_label: "Pago"
    label: "Moneda Id"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    value_format_name: id
    group_label: "Cliente"
    label: "Cliente Id HW"
  }

  dimension: ind_pagos_migrados {
    type: number
    sql: ${TABLE}.IND_PAGOS_MIGRADOS ;;
    value_format_name: id
    group_label: "Pago"
    label: "Pagos Migrados Indicador"
  }

  dimension: ind_reversal_payment {
    type: number
    sql: ${TABLE}.IND_REVERSAL_PAYMENT ;;
    group_label: "Pago"
    label: "Reversion Indicador"
  }

  dimension: mov_origen_hw {
    type: number
    sql: ${TABLE}.MOV_ORIGEN_HW ;;
    group_label: "Comprobante"
    label: "Movimiento Origen HW"
    description: "Flag que indica cual es el movimiento de origen, 1 para pagos, 0 para reversiones. Nacio en RO para el 744."
  }

  dimension: reversal_trans_id {
    type: number
    sql: ${TABLE}.REVERSAL_TRANS_ID ;;
    value_format_name: id
    group_label: "Pago"
    label: "Reversion Numero"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    value_format_name: id
    group_label: "Cliente"
    label: "Susbcripcion Id"
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.TRANS_ID ;;
    value_format_name: id
    group_label: "Pago"
    label: "Transaccion Numero"
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.INVOICE_ID ;;
    value_format_name: id
    group_label: "Comprobante"
    label: "Comprobante Cabecera HW Id"
    description: "Identificador de la operacion, numero interno de HW"
  }

  dimension: invoice_detail_id {
    type: number
    sql: ${TABLE}.INVOICE_DETAIL_ID ;;
    value_format_name: id
    group_label: "Comprobante"
    label: "Item Facturado Id"
  }

  dimension: wondersoft_id {
    type: number
    sql: ${TABLE}.WONDERSOFT_ID ;;
    value_format_name: id
    group_label: "Pago"
    label: "Wondersoft Id"
    description: "Id de Wondersoft, es el Id unico de la tabla."
  }

  dimension: payment_id {
    type: number
    sql: ${TABLE}.PAYMENT_ID ;;
    value_format_name: id
    label: "Pago Id"
  }

  ## Hidden

  dimension: original_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.ORIGINAL_AMT ;;
  }

  dimension: payment_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.PAYMENT_AMT ;;
  }

## Measures

  measure: count_pagos {
    type: count
    group_label: "Cantidad"
    group_item_label: "Pagos"
    label: "Cantidad Pagos"
  }

  measure: total_original_amt {
    type: sum
    sql: ${original_amt} ;;
    group_label: "Total"
    label: "Comprobante Importe Original"
    description: "Monto original del comprobante antes de la conversion, para cuando la moneda es <> pesos."
  }

  measure: total_payment_amt {
    type: sum
    sql: ${payment_amt} ;;
    group_label: "Total"
    label: "Importe Cobro"
  }
}
