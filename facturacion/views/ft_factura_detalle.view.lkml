view: ft_factura_detalle {
  label: "Factura Detalle"
  sql_table_name: @{gcp_ambiente}.FT_FacturaDetalle` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${invoice_detail_id} ;;
  }

  ## Dates

  dimension_group: invoice_date {
    type: time
    datatype: timestamp
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
    view_label: "Comprobante Cabecera"
    group_label: "Fecha Emision"
    label: "Emision"
  }

  dimension_group: due_date {
    type: time
    datatype: timestamp
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
    sql: ${TABLE}.DUE_DATE ;;
    view_label: "Comprobante Cabecera"
    group_label: "Fecha Vencimiento"
    label: "Vencimiento"
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

  # dimension: _sesion_id {
  #   type: string
  #   sql: ${TABLE}._sesionId ;;
  #   view_label: "Auditoria"
  #   label: "Sesion Id"
  # }

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

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    view_label: "Cliente"
    group_label: "Cuenta"
    label: "Codigo"
    description: "Responsable de pago / Cuenta Code"
  }

  dimension: acct_payment_mode {
    type: string
    sql: ${TABLE}.ACCT_PAYMENT_MODE ;;
    view_label: "Cliente"
    group_label: "Cuenta"
    label: "ID Mercado"
    description: "Mercado de la cuenta en el momento de la facturacion. 0:Prepago | 1:Pospago | 2:Hibrido"
  }

  dimension: acct_payment_mode_desc {
    type: string
    sql: ${TABLE}.ACCT_PAYMENT_MODE_DESC ;;
    view_label: "Cliente"
    label: "Mercado"
  }

  dimension: act_dst_status {
    type: string
    sql: ${TABLE}.ACT_DST_STATUS ;;
    view_label: "Suscripcion"
  }

  dimension: act_dst_status_des {
    type: string
    sql: ${TABLE}.ACT_DST_STATUS_DES ;;
    view_label: "Suscripcion"
  }

  dimension: act_dst_status_detail {
    type: string
    sql: ${TABLE}.ACT_DST_STATUS_DETAIL ;;
    view_label: "Suscripcion"
  }

  dimension: act_dst_status_detail_des {
    type: string
    sql: ${TABLE}.ACT_DST_STATUS_DETAIL_DES ;;
    view_label: "Suscripcion"
  }

  dimension: bill_cycle_id {
    type: string
    sql: ${TABLE}.BILL_CYCLE_ID ;;
    view_label: "Comprobante"
    label: "Ciclo de Consumo"
    description: "Contiene el ciclo de consumo facturado (YYYYMMDD)."
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE ;;
    view_label: "Comprobante"
    label: "Ciclo"
    description: "Contiene el ciclo de facturacion (DD)"
  }

  dimension: busi_type {
    type: string
    sql: ${TABLE}.BUSI_TYPE ;;
    view_label: "Comprobante"
    label: "Busi Type"
    description: "Id de transaccion interno de Huawei."
  }

  dimension: charge_code {
    type: string
    sql: ${TABLE}.CHARGE_CODE ;;
    view_label: "Comprobante Detalle"
    group_label: "Cargo"
    label: "Codigo"
    description: "Codigo del concepto del ítem facturado."
  }

  dimension: charge_code_name {
    type: string
    sql: ${TABLE}.CHARGE_CODE_NAME ;;
    view_label: "Comprobante Detalle"
    group_label: "Cargo"
    label: "Nombre"
    description: "Nombre del concepto del ítem facturado."
  }

  dimension: charge_code_type {
    type: string
    sql: ${TABLE}.CHARGE_CODE_TYPE ;;
    view_label: "Comprobante Detalle"
    group_label: "Cargo"
    label: "Tipo"
    description: "U = USAGE FEE | O = ONE-OFF FEE | R = RECURRING FEE | D = DISCOUNT | T = TAX | E = EXEMPTED TAX | Y = DEPOSIT | V = ADVANCED AMOUNT | S = SALES"
  }

  dimension: charge_code_type_des {
    type: string
    sql: ${TABLE}.CHARGE_CODE_TYPE_DES ;;
    view_label: "Comprobante Detalle"
    group_label: "Cargo"
    label: "Descripcion Tipo"
    description: "U = USAGE FEE | O = ONE-OFF FEE | R = RECURRING FEE | D = DISCOUNT | T = TAX | E = EXEMPTED TAX | Y = DEPOSIT | V = ADVANCED AMOUNT | S = SALES"
  }

  dimension: charge_code_type_des_fact {
    type: string
    sql: ${TABLE}.CHARGE_CODE_TYPE_DES_FACT ;;
    view_label: "Comprobante Detalle"
    group_label: "Cargo"
    label: "Descripcion Tipo Comprobante"
  }

  dimension: charge_code_type_fact {
    type: string
    sql: ${TABLE}.CHARGE_CODE_TYPE_FACT ;;
    view_label: "Comprobante Detalle"
    group_label: "Cargo"
    label: "Codigo Tipo Comprobante"
  }

  dimension: crm_product_id {
    type: string
    sql: ${TABLE}.CRM_PRODUCT_ID ;;
    view_label: "Parque"
    label: "ID Producto"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    view_label: "Cliente"
    label: "Codigo"
  }

  dimension: cust_document_number {
    type: string
    sql: ${TABLE}.CUST_DOCUMENT_NUMBER ;;
    view_label: "Cliente"
    label: "Documento Numero"
  }

  dimension: cust_document_type {
    type: string
    sql: ${TABLE}.CUST_DOCUMENT_TYPE ;;
    view_label: "Cliente"
    label: "Documento Tipo"
  }

  dimension: cust_first_name {
    type: string
    sql: ${TABLE}.CUST_FIRST_NAME ;;
    view_label: "Cliente"
    label: "Nombre"
  }

  dimension: cust_last_name {
    type: string
    sql: ${TABLE}.CUST_LAST_NAME ;;
    view_label: "Cliente"
    label: "Apellido"
  }

  dimension: cust_segment {
    type: string
    sql: ${TABLE}.CUST_SEGMENT ;;
    view_label: "Cliente"
    label: "Segmento de Cliente"
  }

  dimension: cust_subsegment1 {
    type: string
    sql: ${TABLE}.CUST_SUBSEGMENT1 ;;
    view_label: "Cliente"
    label: "Subsegmento 1 de Cliente"
  }

  dimension: cust_subsegment2 {
    type: string
    sql: ${TABLE}.CUST_SUBSEGMENT2 ;;
    view_label: "Cliente"
    label: "Subsegmento 2 de Cliente"
  }

  dimension: cust_type {
    type: string
    sql: ${TABLE}.CUST_TYPE ;;
    view_label: "Cliente"
    label: "Tipo"
  }

  dimension: cust_type_des {
    type: string
    sql: ${TABLE}.CUST_TYPE_DES ;;
    view_label: "Cliente"
    label: "Tipo Descripcion"
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "Nombre"
    description: "Nombre de la terminal vendida"
  }

  dimension: equip_imei {
    type: string
    sql: ${TABLE}.EQUIP_IMEI ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "IMEI"
    description: "Viene de: AR_INVOICE_DETAIL.EXT_PROPERTY (‘IMEI')"
  }

  dimension: equip_nmu {
    type: string
    sql: ${TABLE}.EQUIP_NMU ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "NMU"
  }

  dimension: imei {
    type: string
    sql: ${TABLE}.IMEI ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "IMEI (2)"
  }

  dimension: ind_fact_migradas {
    type: string
    sql: ${TABLE}.IND_FACT_MIGRADAS ;;
    view_label: "Comprobante Cabecera"
    group_label: "Marcas"
    label: "Flag Facturas Migradas"
  }

  dimension: ind_legal_no {
    type: string
    sql: ${TABLE}.IND_LEGAL_NO ;;
    view_label: "Comprobante Cabecera"
    group_label: "Marcas"
    label: "Flag Numero Legal"
  }

  dimension: invoice_letter {
    type: string
    sql: ${TABLE}.INVOICE_LETTER ;;
    view_label: "Comprobante"
    label: "Letra"
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.INVOICE_NO ;;
    view_label: "Comprobante"
    label: "Prefactura"
    description: "Numero de comprobante interno HW"
  }

  dimension: invoice_no_asoc_ncnd {
    type: string
    sql: ${TABLE}.INVOICE_NO_ASOC_NCND ;;
    view_label: "Comprobante"
    label: "Prefactura Asociada"
    description: "Indica la descripción del tipo de comprobante asociado de la operación | Bill run (BLL) | Credit Notes (CNT) | Debit Notes (DNT) | Sales Invoice  (SLI)"
  }

  dimension: invoice_status {
    type: string
    sql: ${TABLE}.INVOICE_STATUS ;;
    view_label: "Comprobante"
    label: "Estado"
    description: "Open= con saldo / Close = pago / Rejected = anulada / P"
  }

  dimension: legal_no {
    type: string
    sql: ${TABLE}.LEGAL_NO ;;
    view_label: "Comprobante"
    label: "Numero Legal"

  }

  dimension: legal_no_asoc_ncnd {
    type: string
    sql: ${TABLE}.LEGAL_NO_ASOC_NCND ;;
    view_label: "Comprobante"
    label: "Numero Legal Asociado"
    description: "Comprobante legal asociado a la factura"
  }

  dimension: linea {
    type: string
    sql: ${TABLE}.LINEA ;;
    view_label: "Suscripcion"
    label: "Linea (2)"
  }

  dimension: nombre_terminal {
    type: string
    sql: ${TABLE}.NOMBRE_TERMINAL ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "Nombre (2)"
    description: "Nombre de la terminal vendida Viene de: AR_INVOICE_DETAIL.EXT_PROPERTY (DESCRIPTION)"
  }

  dimension: offering_code {
    type: string
    sql: ${TABLE}.OFFERING_CODE ;;
    view_label: "Comprobante Detalle"
    group_label: "Oferta"
    label: "Codigo"
  }

  dimension: offering_id {
    type: string
    sql: ${TABLE}.OFFERING_ID ;;
    view_label: "Comprobante Detalle"
    group_label: "Oferta"
    label: "ID"
  }

  dimension: offering_name {
    type: string
    sql: ${TABLE}.OFFERING_NAME ;;
    view_label: "Comprobante Detalle"
    group_label: "Oferta"
    label: "Nombre"
  }

  dimension: offering_payment_mode {
    type: string
    sql: ${TABLE}.OFFERING_PAYMENT_MODE ;;
    view_label: "Comprobante Detalle"
    group_label: "Oferta"
    label: "Mercado"
    description: "0:Prepago | 1:Pospago | 2:Hibrido"
  }

  dimension: offering_primary_flag {
    type: string
    sql: ${TABLE}.OFFERING_PRIMARY_FLAG ;;
    view_label: "Comprobante Detalle"
    group_label: "Oferta"
    label: "Oferta Flag Primaria"
  }

  dimension: offering_short_name {
    type: string
    sql: ${TABLE}.OFFERING_SHORT_NAME ;;
    view_label: "Comprobante Detalle"
    group_label: "Oferta"
    label: "Nombre Corto"
  }

  dimension: payment_method_id {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_ID ;;
    view_label: "Cobranza"
    label: "ID Medio de Cobro"
  }

  dimension: payment_method_desc {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_DESC ;;
    view_label: "Cobranza"
    label: "Medio de Cobro"
  }

  dimension: payment_object_type {
    type: string
    sql: ${TABLE}.PAYMENT_OBJECT_TYPE ;;
    view_label: "Comprobante"
    label: "Pago Nivel"
    description: "Indica si el pago es a nivel de Cuenta o Suscriptor | A: Cuenta | S: Suscripción | C: Grupo de Suscripción"
  }

  dimension: plan_id {
    type: string
    sql: ${TABLE}.PLAN_ID ;;
    view_label: "Comprobante"
    label: "ID Plan"
  }

  dimension: plan_payment_mode {
    type: string
    sql: ${TABLE}.PLAN_PAYMENT_MODE ;;
    view_label: "Comprobante Detalle"
    group_label: "Oferta"
    label: "Plan Mercado"
  }

  dimension: pri_dst_status {
    type: string
    sql: ${TABLE}.PRI_DST_STATUS ;;
    view_label: "Suscripcion"
  }

  dimension: pri_dst_status_des {
    type: string
    sql: ${TABLE}.PRI_DST_STATUS_DES ;;
    view_label: "Suscripcion"
  }

  dimension: pri_dst_status_detail {
    type: string
    sql: ${TABLE}.PRI_DST_STATUS_DETAIL ;;
    view_label: "Suscripcion"
  }

  dimension: pri_dst_status_detail_des {
    type: string
    sql: ${TABLE}.PRI_DST_STATUS_DETAIL_DES ;;
    view_label: "Suscripcion"
  }

  dimension: pri_identity {
    type: string
    sql: ${TABLE}.PRI_IDENTITY ;;
    view_label: "Suscripcion"
    label: "Linea"
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.REGION_CODE ;;
    view_label: "Comprobante"
    label: "Region Codigo"
  }

  dimension: sales_municipality {
    type: string
    sql: ${TABLE}.SALES_MUNICIPALITY ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "Venta Municipalidad"
  }

  dimension: sales_province {
    type: string
    sql: ${TABLE}.SALES_PROVINCE ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "Venta Provincia"
  }

  dimension: total_installment {
    type: string
    sql: ${TABLE}.TOTAL_INSTALLMENT ;;
    view_label: "Cobranza"
    label: "Cuotas Total"
  }
  dimension: trans_type {
    type: string
    sql: ${TABLE}.TRANS_TYPE ;;
    view_label: "Comprobante"
    label: "Comprobante Tipo"
    description: "Indica el tipo de comprobante de la operacion es: BLL, CNT, DNT, SLI"
  }

  dimension: trans_type_asoc_ncnd {
    type: string
    sql: ${TABLE}.TRANS_TYPE_ASOC_NCND ;;
    view_label: "Comprobante"
    label: "Descripcion Tipo Asociado"
    description: "Indica la descripcion del tipo de comprobante asociado de la operacion. Bill run (BLL), Credit Notes (CNT), Debit Notes (DNT), Sales Invoice  (SLI)"
  }

  dimension: trans_type_des {
    type: string
    sql: ${TABLE}.TRANS_TYPE_DES ;;
    view_label: "Comprobante"
    label: "Descripcion Tipo"
    description: "Indica la descripcion del tipo de comprobante asociado de la operación. Bill run (BLL), Credit Notes (CNT), Debit Notes (DNT), Sales Invoice  (SLI)"
  }

  dimension: ult_dst_status {
    type: string
    sql: ${TABLE}.ULT_DST_STATUS ;;
    view_label: "Suscripcion"
  }

  dimension: ult_dst_status_des {
    type: string
    sql: ${TABLE}.ULT_DST_STATUS_DES ;;
    view_label: "Suscripcion"
  }

  dimension: ult_dst_status_detail {
    type: string
    sql: ${TABLE}.ULT_DST_STATUS_DETAIL ;;
    view_label: "Suscripcion"
  }

  dimension: ult_dst_status_detail_des {
    type: string
    sql: ${TABLE}.ULT_DST_STATUS_DETAIL_DES ;;
    view_label: "Suscripcion"
  }

  dimension: sub_identity {
    type: string
    sql: ${TABLE}.SUB_IDENTITY ;;
    view_label: "Suscripcion"
    label: "Linea (3)"
  }

  dimension: desc_segmento_doc_grupo {
    type: string
    sql: "01_Individuos" ;;
    view_label: "Comprobante Detalle"
    label: "Segmento Grupo"
  }

  dimension: desc_tipo_venta {
    type: string
    sql: CASE WHEN ${charge_code} = 'C_OT_MB_EQUIPMENT_PHONES' THEN '01_Ventas' ELSE '(no informado)' END ;;
    view_label: "Comprobante Detalle"
    label: "Tipo Venta"
  }

  dimension: addr_altura_piso_depto {
    type: string
    sql: ${TABLE}.ADDR_ALTURA_PISO_DEPTO ;;
    view_label: "Cliente"
    group_label: "Domicilio"
    label: "Altura - Piso - Depto"
    description: "Domicilio de facturacion del cliente"
  }

  dimension: addr_calle {
    type: string
    sql: ${TABLE}.ADDR_CALLE ;;
    view_label: "Cliente"
    group_label: "Domicilio"
    label: "Calle"
    description: "Calle de facturacion del cliente"
  }

  dimension: addr_localidad {
    type: string
    sql: ${TABLE}.ADDR_LOCALIDAD ;;
    view_label: "Cliente"
    group_label: "Domicilio"
    label: "Localidad"
  }

  dimension: addr_postal_code {
    type: string
    sql: ${TABLE}.ADDR_POSTAL_CODE ;;
    view_label: "Cliente"
    group_label: "Domicilio"
    label: "Codigo Postal"
    description: "Codigo Postal de facturacion de cliente"
  }

  dimension: addr_provincia {
    type: string
    sql: ${TABLE}.ADDR_PROVINCIA ;;
    view_label: "Cliente"
    group_label: "Domicilio"
    label: "Provincia"
    description: "Provincia del Cliente"
  }

  ## Flags

  dimension: flag_legal_no {
    hidden: yes
    type: yesno
    sql: CASE WHEN ${legal_no} IS NULL THEN FALSE ELSE TRUE END ;;
  }

  ## Numbers

  dimension: charge_code_id {
    type: number
    sql: ${TABLE}.CHARGE_CODE_ID ;;
    value_format_name: id
    view_label: "Comprobante Detalle"
    group_label: "Cargo"
    label: "ID"
    description: "ID del concepto del ítem facturado."
  }

  dimension: invoice_detail_id {
    type: number
    sql: ${TABLE}.INVOICE_DETAIL_ID ;;
    value_format_name: id
    view_label: "Comprobante Detalle"
    label: "ID Item"
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.INVOICE_ID ;;
    value_format_name: id
    view_label: "Comprobante"
    label: "ID"
    description: "Identificador de la operacion, numero interno de HW"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    value_format_name: id
    view_label: "Cliente"
    label: "ID"
    description: "ID de cliente HW"
  }

  dimension: invoice_id_asoc_ncnd {
    type: number
    sql: ${TABLE}.INVOICE_ID_ASOC_NCND ;;
    value_format_name: id
    view_label: "Comprobante"
    label: "ID Asociado"
    description: "Numero de comprobante asociado a la factura."
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    value_format_name: id
    view_label: "Cliente"
    group_label: "Cuenta"
    label: "ID"
    description: "ID cuenta de cliente"
  }

  dimension: ind_vta_equipos {
    type: number
    sql: ${TABLE}.IND_VTA_EQUIPOS ;;
    view_label: "Comprobante Cabecera"
    group_label: "Marcas"
    label: "Flag Venta Equipos"
    description: "Si TRANS_TYPE= 'SLI' informa 1 | Si TRANS_TYPE Es 'CNT' o 'DNT' informa 2 | Resto = 0"
  }

  dimension: addr_id {
    type: number
    sql: ${TABLE}.ADDR_ID ;;
    value_format_name: id
    view_label: "Cliente"
    group_label: "Domicilio"
    label: "ID"
  }

  dimension: apply_trans_id {
    type: number
    sql: ${TABLE}.APPLY_TRANS_ID ;;
    view_label: "Cobranza"
    label: "ID Transaccion Pago Aplicado"
  }

  dimension: be_id {
    type: number
    sql: ${TABLE}.BE_ID ;;
    value_format_name: id
    view_label: "Comprobante"
    label: "Entidad de Negocio"
    description: "Id de Personal, Telecom"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    value_format_name: id
    view_label: "Suscripcion"
    label: "Numero"
  }

  dimension: total_cycle {
    type: number
    sql: ${TABLE}.TOTAL_CYCLE ;;
    view_label: "Cobranza"
    label: "Cuotas DPF"
    description: "Total de cuotas financiadas por Débito en próxima factura."
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.TRANS_ID ;;
    view_label: "Comprobante"
    label: "ID Transaccion"
    description: "Identificador de la operacion, numero interno de HW"
  }

  dimension: tax_amt {
    type: number
    sql: ${TABLE}.TAX_AMT ;;
    view_label: "Comprobante Detalle"
    label: "Impuestos"
  }

  ## Hidden

  dimension: charge_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CHARGE_AMT ;;
  }

  dimension: discount_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.DISCOUNT_AMT ;;
  }

  dimension: gross_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.GROSS_AMT ;;
  }

  dimension: invoice_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.INVOICE_AMT ;;
  }

  dimension: invoice_discount_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.INVOICE_DISCOUNT_AMT ;;
  }

  dimension: invoice_tax_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.INVOICE_TAX_AMT ;;
  }

  dimension: original_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.ORIGINAL_AMT ;;
  }

## Measures

  measure: count_items {
    type: count_distinct
    sql: ${invoice_detail_id} ;;
    view_label: "Comprobante Detalle"
    group_label: "Cantidad"
    group_item_label: "Items"
    label: "Cantidad Items"
  }

  measure: total_charge_amt {
    type: sum
    sql: ${charge_amt} ;;
    view_label: "Comprobante Detalle"
    group_label: "Total"
    label: "Monto Cargo"
  }

  measure: total_discount_amt {
    type: sum
    sql: ${discount_amt} ;;
    view_label: "Comprobante Detalle"
    group_label: "Total"
    label: "Monto Bonificaciones"
  }

  measure: total_gross_amt {
    type: sum
    sql: ${gross_amt} ;;
    view_label: "Comprobante Detalle"
    group_label: "Total"
    label: "Monto Total sin Impuestos"
  }

  measure: total_gross_amt_format {
    type: sum
    sql: ${gross_amt} ;;
    value_format: "[>=1000000] $###,###,, \"M\"; [>=10000] $###,##0, \"K\" ; [>=1000] $###,##0"
    view_label: "Comprobante Detalle"
    group_label: "Total con Formato"
    label: "Monto Facturado sin Impuestos"
  }

  measure: total_invoice_amt {
    type: sum
    sql: ${invoice_amt} ;;
    view_label: "Comprobante Cabecera"
    group_label: "Total"
    label: "Monto Facturado"
    description: "La suma de los cargos, mas los impuestos, menos las bonificaciones."
  }

  measure: total_invoice_discount_amt {
    type: sum
    sql: ${invoice_discount_amt} ;;
    view_label: "Comprobante Cabecera"
    group_label: "Total"
    label: "Monto Bonificado"
  }

  measure: total_invoice_tax_amt {
    type: sum
    sql: ${invoice_tax_amt} ;;
    view_label: "Comprobante Cabecera"
    group_label: "Total"
    label: "Monto Impuestos"
  }

  measure: total_original_amt {
    type: sum
    sql: ${original_amt} ;;
    view_label: "Comprobante Detalle"
    group_label: "Total"
    label: "Monto Original"
    description: "Monto original del comprobante antes de la conversion, para cuando la moneda no es pesos argentinos."
  }

  measure: total_tax_amt {
    type: sum
    sql: ${tax_amt} ;;
    view_label: "Comprobante Detalle"
    group_label: "Total"
    group_item_label: "Monto Impuestos"
    label: "Total Monto Impuestos Comprobante"
  }

  measure: count_legal_no_venta_bruta {
    hidden: yes
    type: count_distinct
    sql: ${legal_no} ;;
    filters: [
        flag_legal_no: "Yes"
      , trans_type: "SLI, DNT"
    ]
  }

  measure: count_legal_no_venta_nc {
    hidden: yes
    type: count_distinct
    sql: ${legal_no} ;;
    filters: [
        flag_legal_no: "Yes"
      , trans_type: "CNT"
    ]
  }

  measure: count_legal_no_venta_neta {
    type: number
    sql: ${count_legal_no_venta_bruta} - ${count_legal_no_venta_nc} ;;
    view_label: "Comprobante Detalle"
    group_label: "Cantidad"
    label: "Q Ventas"
  }

  measure: count_accesorios {
    type: count_distinct
    sql: ${invoice_detail_id} ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "Accesorios"
    filters: [
        charge_code: "C^_OT^_MB^_EQUIPMENT^_ACCESORIOS"
      , legal_no: "-NULL"
      , trans_type: "-BLL"
    ]
  }

  measure: count_delivery {
    type: count_distinct
    sql: ${invoice_detail_id} ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "Delivery"
    filters: [
        charge_code: "C^_OT^_MB^_DELIVERY"
      , legal_no: "-NULL"
      , trans_type: "-BLL"
    ]
  }

  measure: count_dispositivos_hogar {
    type: count_distinct
    sql: ${invoice_detail_id} ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "Dispositivos Hogar"
    filters: [
        charge_code: "C^_OT^_TV^_EQUIPMENT^_DISPHOGAR"
      , legal_no: "-NULL"
      , trans_type: "-BLL"
    ]
  }

  measure: count_equipos {
    type: count_distinct
    sql: ${invoice_detail_id} ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "Equipos"
    filters: [
        charge_code: "C^_OT^_MB^_EQUIPMENT^_PHONES"
      , legal_no: "-NULL"
      , trans_type: "-BLL"
    ]
  }

  measure: count_equipos_ceg {
    type: count_distinct
    sql: ${invoice_detail_id} ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "Equipos CEG"
    filters: [
        charge_code: "C^_OT^_MB^_EQUIPMENT^_PHONES^_CEG"
      , legal_no: "-NULL"
      , trans_type: "-BLL"
    ]
  }

  measure: count_items_venta {
    type: count_distinct
    sql: ${invoice_detail_id} ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "Q Items"
    filters: [
        legal_no: "-NULL"
      , trans_type: "-BLL"
    ]
  }

  measure: count_sim {
    type: count_distinct
    sql: ${invoice_detail_id} ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "SIM"
    filters: [
      charge_code: "C^_OT^_MB^_EQUIPMENT^_SIM"
      , legal_no: "-NULL"
      , trans_type: "-BLL"
    ]
  }
  measure: count_tv {
    type: count_distinct
    sql: ${invoice_detail_id} ;;
    view_label: "Comprobante Detalle"
    group_label: "Venta"
    label: "TV"
    filters: [
      charge_code: "C^_OT^_TV^_EQUIPMENT^_ELECTRODOM"
      , legal_no: "-NULL"
      , trans_type: "-BLL"
    ]
  }
}
