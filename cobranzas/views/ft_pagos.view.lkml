view: ft_pagos {
  sql_table_name:  @{gcp_dataset_pub}.FT_Pagos`;;
  suggestions: no
  label: "Pagos"

  ## Primary Key
  dimension: pk {
    primary_key: yes
    type:  string
    sql:${TABLE}.PAGOSPK;;
    label: "PK"
  }

  ##############
  ##  Pagos   ##
  ##############

  ## Dates

  dimension_group: check {
    type: time
    timeframes: [
      raw,
      time,
      date,
      time_of_day,
      day_of_month,
      day_of_week,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.CHECK_DATE ;;
    label: "Cheque Fecha"
    description: "Fecha del cheque bancario, que se ingresa en la GUI o se transfiere a través de una interfaz."
  }

  dimension_group: entry {
    type: time
    timeframes: [
      raw,
      time,
      date,
      time_of_day,
      day_of_month,
      day_of_week,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.ENTRY_DATE ;;
    label: "Entry"
  }

  dimension_group: fecha_contable {
    type: time
    timeframes: [
      raw,
      time,
      date,
      time_of_day,
      day_of_month,
      day_of_week,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.FECHA_CONTABLE ;;
    label: "Fecha Contable"
  }

  dimension_group: last_update {
    type: time
    timeframes: [
      raw,
      time,
      date,
      time_of_day,
      day_of_month,
      day_of_week,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.LAST_UPDATE_DATE ;;
    label: "Last Update"
  }

  dimension_group: payment_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      time_of_day,
      day_of_month,
      day_of_week,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.PAYMENT_DATE ;;
    label: "Payment"
  }

  dimension_group: reversal {
    type: time
    timeframes: [
      raw,
      time,
      date,
      time_of_day,
      day_of_month,
      day_of_week,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.REVERSAL_DATE ;;
    label: "Reversal"
  }

  dimension_group: trx_trans {
    type: time
    timeframes: [
      raw,
      time,
      date,
      time_of_day,
      day_of_month,
      day_of_week,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.TRX_TRANS_DATE ;;
    label: "TRX Transaction"
  }


  ## Strings

  dimension: access_method {
    type: string
    sql: ${TABLE}.ACCESS_METHOD ;;
    label: "Método de Acceso"
    description: "Método de acceso de la recarga"
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
    label: "Mercado ID"
    description: "Mercado de la cuenta en el momento de la facturación: 0 = Prepago, 1 = Pospago, 2 = Híbrido, x =  No Determinado"
  }

  dimension: acct_payment_mode_des {
    type: string
    sql: ${TABLE}.ACCT_PAYMENT_MODE_DES ;;
    group_label: "Cliente"
    label: "Mercado Descripción"
    description: "Mercado de la cuenta en el momento de la facturación: Prepago, pospago, híbrido, no Determinado"
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
    label: "Entidad Código Sucursal"
    description: "Código de sucursal, que se ingresa en la GUI o se transfiere a través de una interfaz."
  }

  dimension: bank_code {
    type: string
    sql: ${TABLE}.BANK_CODE ;;
    group_label: "Pago"
    label: "Entidad Código"
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
    label: "Entidad Código de Promoción"
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE ;;
    group_label: "Comprobante"
    label: "Ciclo Facturación"
    description: "Contiene el ciclo de facturación en formato fecha DD(SUBSTR(AllData.BILL_CYCLE_ID, 7,2))"
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.CHANNEL_ID ;;
    label: "Canal ID"
  }

  dimension: check_no {
    type: string
    sql: ${TABLE}.CHECK_NO ;;
    label: "Cheque Número"
    description: "Número de cheque, que se ingresa en la GUI o se transfiere a través de una interfaz."
  }

  dimension: credit_card_des {
    type: string
    sql: ${TABLE}.CREDIT_CARD_DES ;;
    group_label: "Pago"
    label: "Tarjeta Tipo Descripción"
  }

  dimension: credit_card_no {
    type: string
    sql: ${TABLE}.CREDIT_CARD_NO ;;
    group_label: "Pago"
    label: "Tarjeta Número"
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
    label: "Moneda Símbolo"
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

  dimension: c_payment_date {
    type: string
    sql: ${TABLE}.C_PAYMENT_DATE ;;
    label: "Payment Date"
  }

  dimension: header_bank_code {
    type: string
    sql: ${TABLE}.HEADER_BANK_CODE ;;
    group_label: "Pago"
    label: "Entidad Código de Cabecera"
    description: "Código del banco de cabecera proveniente de una entidad externa."
  }

  dimension: ice_channel_code {
    type: string
    sql: ${TABLE}.ICE_CHANNEL_CODE ;;
    label: "Canal Código ICE"
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
    label: "Prefactura ID"
    description: "Número de comprobante interno HW"
  }

  dimension: invoice_type_inf {
    type: string
    sql: ${TABLE}.INVOICE_TYPE_INF ;;
    group_label: "Comprobante"
    label: "Comprobante Tipo Inferido"
    description: "Tipo de factura a la cuál termino impactando el pago, este dato no existe como tal, por este motivo se infiere. Nació en RO para el 744."
  }

  dimension: is_invoice_payment {
    type: string
    sql: ${TABLE}.IS_INVOICE_PAYMENT ;;
    group_label: "Pago"
    label: "Comprobante Pago Flag"
    description: "Flag que indica si el pago culminó en una factura."
  }

  dimension: nro_cupon_tarjeta {
    type: string
    sql: ${TABLE}.NRO_CUPON_TARJETA ;;
    group_label: "Pago"
    label: "Número Cupón Tarjeta"
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
    label: "Operación Tipo"
    description: "Tipo de operación de pago"
  }

  dimension: operation_type_inf {
    type: string
    sql: ${TABLE}.OPERATION_TYPE_INF ;;
    group_label: "Pago"
    label: "Operación Tipo Inferido"
    description: "Tipo de operación de factura, se infiere por distintos campos, como el Canal, el canal de ICE, el método de pago. Nació en RO para el 744. CyclicInvoice, RechargeInvoice, SalesInvoice, NO DETERMINADO"
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
    label: "Medio de Pago ID"
  }

  dimension: payment_operation_type {
    type: string
    sql: ${TABLE}.PAYMENT_OPERATION_TYPE ;;
    group_label: "Pago"
    label: "Pago Tipo Operación"
    description: "Tipo de operación de pago, proviene de una entidad externa. ∅, CyclicInvoice, RechargeInvoice, SalesInvoice"
  }

  dimension: payment_plan {
    type: string
    sql: ${TABLE}.PAYMENT_PLAN ;;
    group_label: "Pago"
    label: "Pago Plan"
    description: "Plan de pago, proviene de una entidad externa. En documentación, no existe mayor información."
  }

  dimension: payment_serial_id {
    type: string
    sql: ${TABLE}.PAYMENT_SERIAL_ID ;;
    group_label: "Pago"
    label: "Pago Serial ID"
    description: "Proviene de una entidad externa, se utiliza como relación entre la tabla de pagos y wondersoft."
  }

  dimension: pri_identity {
    type: string
    sql: ${TABLE}.PRI_IDENTITY ;;
    group_label: "Cliente"
    label: "Línea"
  }

  dimension: process_date {
    type: string # En revisión- A Timestamo YYYYMMDD
    sql: ${TABLE}.PROCESS_DATE ;;
    group_label: "Pago"
    label: "Proceso Fecha"
    description: "Fecha de proceso, proviene de una entidad externa."
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}.PRODUCT_LINE ;;
    group_label: "Cliente"
    label: "Línea Producto"
    description: "Fecha de proceso, proviene de una entidad externa."
  }

  dimension: pr_status {
    type: string
    sql: ${TABLE}.PR_STATUS ;;
    group_label: "Pago"
    label: "Pago Estado"
    description: "Estado del Pago"
  }

  dimension: pr_status_des {
    type: string
    sql: ${TABLE}.PR_STATUS_DES ;;
    group_label: "Pago"
    label: "Pago Descripción Estado"
  }

  dimension: reversal_reason_code {
    type: string
    sql: ${TABLE}.REVERSAL_REASON_CODE ;;
    group_label: "Pago"
    label: "Reversión Motivo Código"
  }

  dimension: reversal_reason_des {
    type: string
    sql: ${TABLE}.REVERSAL_REASON_DES ;;
    group_label: "Pago"
    label: "Reversión Motivo Descripción"
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
    label: "Comercio Número"
    description: "Número de comercio, proviene de Wondersoft."
  }

  dimension: trans_date {
    type: string
    sql: ${TABLE}.TRANS_DATE ;;
    label: "Transaction Date"
  }

  dimension: trx_trans_type {
    type: string
    sql: ${TABLE}.TRX_TRANS_TYPE ;;
    group_label: "Comprobante"
    label: "Comprobante Tipo"
    description: "Indica el tipo de comprobante de la operación es: BLL, SLI, NODET"
  }

  dimension: trx_trans_type_des {
    type: string
    sql: ${TABLE}.TRX_TRANS_TYPE_DES ;; # En revisión
    group_label: "Comprobante"
    label: "Comprobante Tipo Descripción"
    description: "Indica la descripción del tipo de comprobante de la operación Bill run (BLL), Sales Invoice  (SLI), No Determinado (NODET)"
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
    value_format: "0"
    group_label: "Comprobante"
    label: "Lote"
  }

  dimension: credit_card_type_id {
    type: number
    sql: ${TABLE}.CREDIT_CARD_TYPE_ID ;;
    value_format: "0"
    group_label: "Pago"
    label: "Tarjeta Tipo"
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
    value_format: "0"
    group_label: "Pago"
    label: "Moneda ID"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    value_format: "0"
    group_label: "Cliente"
    label: "Cliente ID HW"
  }

  dimension: ind_pagos_migrados {
    type: number
    sql: ${TABLE}.IND_PAGOS_MIGRADOS ;;
    value_format: "0"
    group_label: "Pago"
    label: "Pagos Migrados Indicador"
  }

  dimension: ind_reversal_payment {
    type: number
    sql: ${TABLE}.IND_REVERSAL_PAYMENT ;;
    group_label: "Pago"
    label: "Reversión Indicador"
  }

  dimension: mov_origen_hw {
    type: number
    sql: ${TABLE}.MOV_ORIGEN_HW ;;
    value_format: "0"
    group_label: "Comprobante"
    label: "Movimiento Origen HW"
    description: "Flag que indica cuál es el movimiento de origen, 1 para pagos, 0 para reversiones. Nació en RO para el 744."
  }

  dimension: reversal_trans_id {
    type: number
    sql: ${TABLE}.REVERSAL_TRANS_ID ;;
    value_format: "0"
    group_label: "Pago"
    label: "Reversión Número"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    value_format: "0"
    group_label: "Cliente"
    label: "Susbcripción ID"
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.TRANS_ID ;;
    value_format: "0"
    group_label: "Pago"
    label: "Transacción Número"
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.INVOICE_ID ;;
    value_format: "0"
    group_label: "Comprobante"
    label: "Comprobante Cabecera HW ID"
    description: "Identificador de la operación, número interno de HW"
  }

  dimension: invoice_detail_id {
    type: number
    sql: ${TABLE}.INVOICE_DETAIL_ID ;;
    value_format: "0"
    group_label: "Comprobante"
    label: "Ítem Facturado ID"
  }

  dimension: wondersoft_id {
    type: number
    sql: ${TABLE}.WONDERSOFT_ID ;;
    value_format: "0"
    group_label: "Pago"
    label: "Wondersoft ID"
    description: "ID de Wondersoft, es el ID único de la tabla."
  }


## Hidden ##

  dimension: original_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.ORIGINAL_AMT ;;
  }

  dimension: payment_id {
    hidden: yes
    type: number
    sql: ${TABLE}.PAYMENT_ID ;;
  }

  dimension: payment_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.PAYMENT_AMT ;;
  }

  dimension: trx_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.TRX_AMT ;;
  }


##############
## Measures ##
##############

  measure: count_ind_reversal_payment {
    type: count_distinct
    sql: ${TABLE}.IND_REVERSAL_PAYMENT ;;
    group_label: "Cantidad"
    label: "Indicador de Pago"
  }

  measure: count_payment_id {
    type: count_distinct
    sql: ${TABLE}.PAYMENT_ID ;;
    group_label: "Cantidad"
    label: "Pago Número"
  }

  measure: total_original_amt {
    type: sum
    sql: ${TABLE}.ORIGINAL_AMT ;;
    group_label: "Total"
    label: "Comprobante Importe Original"
    description: "Monto original del comprobante antes de la conversión, para cuando la moneda es <> pesos."
  }

  measure: total_payment_amt {
    type: sum
    sql: ${TABLE}.PAYMENT_AMT ;;
    group_label: "Total"
    label: "Importe Cobro"
  }

  measure: total_trx_amt {
    type: sum
    sql: ${TABLE}.TRX_AMT ;;
    group_label: "Total"
    label: "Transacción Importe"
    description: "Monto de la Transacción"
  }
}
