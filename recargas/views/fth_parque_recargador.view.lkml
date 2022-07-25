view: fth_parque_recargador {
  label: "Parque Recargador"
  sql_table_name: @{gcp_ambiente}.FTH_ParqueRecargador` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.RecargaRECHARGE_LOG_ID ;;
  }

  ## Dates

  dimension: fecha_entidad {
    type: date
    sql: ${TABLE}.FechaEntidad ;;
    datatype: date
    label: "Fecha Entidad"
  }

  dimension_group: fecha_activacion_plan_src {
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
    sql: ${TABLE}.ProductoAdquirido.FechaActivacionPlanSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Activacion Plan"
    label: "Activacion Plan"
  }

  dimension_group: fecha_activacion_plan_src_cierre {
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
    sql: ${TABLE}.ProductoAdquirido.FechaActivacionPlanSRC_Cierre ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Activacion Plan Cierre"
    label: "Activacion Plan Cierre"
  }

  dimension_group: fecha_desconexion_plan_src {
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
    sql: ${TABLE}.ProductoAdquirido.FechaDesconexionPlanSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Desconexion Plan"
    label: "Desconexion Plan"
  }

  dimension_group: fecha_desconexion_plan_src_cierre {
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
    sql: ${TABLE}.ProductoAdquirido.FechaDesconexionPlanSRC_Cierre ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Desconexion Plan Cierre"
    label: "Desconexion Plan Cierre"
  }

  dimension_group: producto_adquirido_fecha_baja_src {
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
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaBajaSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Baja"
    label: "Baja"
  }

  dimension_group: producto_adquirido_fecha_baja_src_cierre {
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
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaBajaSRC_Cierre ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Baja Cierre"
    label: "Baja Cierre"
  }

  dimension_group: producto_adquirido_fecha_compra_src {
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
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaCompraSRC ;;
    datatype: date
    view_label: "Producto Adquirido"
    group_label: "Fecha Compra"
    label: "Compra"
  }

  dimension_group: producto_adquirido_fecha_compra_src_cierre {
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
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaCompraSRC_Cierre ;;
    datatype: date
    view_label: "Producto Adquirido"
    group_label: "Fecha Compra Cierre"
    label: "Compra Cierre"
  }

  dimension_group: producto_adquirido_fecha_creacion_src {
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
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Creacion"
    label: "Creacion"
  }

  dimension_group: producto_adquirido_fecha_creacion_src_cierre {
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
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaCreacionSRC_Cierre ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Creacion Cierre"
    label: "Creacion Cierre"
  }

  dimension_group: recarga_entry_datesrc {
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
    sql: ${TABLE}.RecargaENTRY_DATESRC ;;
    datatype: timestamp
    group_label: "Recarga Fecha Entry"
    label: "Recarga Entry"
  }

  dimension: _fecha_creacion {
    type: date_time
    sql: ${TABLE}._auditoria._fechaCreacion ;;
    datatype: datetime
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date_time
    sql: ${TABLE}._auditoria._fechaUltimaActualizacion ;;
    datatype: datetime
    view_label: "Auditoria"
    label: "Fecha Actualizacion"
  }

  ## Strings

  dimension: rango_numeracion_departamento_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoNombre ;;
    suggest_dimension: lk_rango_numeracion_departamento.rango_numeracion_departamento_nombre
    view_label: "Geografia"
    label: "Rango Numeracion Departamento"
  }

  dimension: rango_numeracion_localidad_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadNombre ;;
    suggest_dimension: lk_rango_numeracion_localidad.rango_numeracion_localidad_nombre
    view_label: "Geografia"
    label: "Rango Numeracion Localidad"
  }

  dimension: rango_numeracion_prefijo_interurbano {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijoInterurbano ;;
    suggest_dimension: lk_rango_numeracion_prefijo_interurbano.rango_numeracion_prefijo_interurbano
    view_label: "Geografia"
    label: "Rango Numeracion Prefijo Interurbano"
  }

  dimension: rango_numeracion_prefijos {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijos ;;
    suggest_dimension: lk_rango_numeracion_prefijos.rango_numeracion_prefijos
    view_label: "Geografia"
    label: "Rango Numeracion Prefijos"
  }

  dimension: rango_numeracion_provincia_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaNombre ;;
    suggest_dimension: lk_rango_numeracion_provincia.rango_numeracion_provincia_nombre
    view_label: "Geografia"
    label: "Rango Numeracion Provincia"
  }

  dimension: producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoNombre ;;
    view_label: "Producto Adquirido"
    label: "Estado Nombre"
  }

  dimension: producto_adquirido_estado_nombre_cierre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoNombre_Cierre ;;
    view_label: "Producto Adquirido"
    label: "Estado Nombre Cierre"
  }

  dimension: producto_adquirido_motivo_alta {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoMotivoAlta ;;
    view_label: "Producto Adquirido"
    label: "Motivo Alta"
  }

  dimension: producto_adquirido_motivo_alta_cierre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoMotivoAlta_Cierre ;;
    view_label: "Producto Adquirido"
    label: "Motivo Alta Cierre"
  }

  dimension: producto_adquirido_motivo_baja {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoMotivoBaja ;;
    view_label: "Producto Adquirido"
    label: "Motivo Baja"
  }

  dimension: producto_adquirido_motivo_baja_cierre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoMotivoBaja_Cierre ;;
    view_label: "Producto Adquirido"
    label: "Motivo Baja Cierre"
  }

  dimension: producto_adquirido_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoNombre ;;
    view_label: "Producto Adquirido"
    label: "Nombre"
  }

  dimension: producto_adquirido_nombre_cierre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoNombre_Cierre ;;
    view_label: "Producto Adquirido"
    label: "Nombre Cierre"
  }

  dimension: producto_adquirido_referente_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoReferenteSRCId ;;
    view_label: "Producto Adquirido"
    label: "Referente SRCId"
  }

  dimension: producto_adquirido_referente_srcid_cierre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoReferenteSRCId_Cierre ;;
    view_label: "Producto Adquirido"
    label: "Referente SRCId Cierre"
  }

  dimension: producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSRCId ;;
    view_label: "Producto Adquirido"
    label: "SRCId"
  }

  dimension: producto_adquirido_srcid_cierre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSRCId_Cierre ;;
    view_label: "Producto Adquirido"
    label: "SRCId Cierre"
  }

  dimension: producto_adquirido_sub_motivo_alta {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubMotivoAlta ;;
    view_label: "Producto Adquirido"
    label: "Sub Motivo Alta"
  }

  dimension: producto_adquirido_sub_motivo_alta_cierre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubMotivoAlta_Cierre ;;
    view_label: "Producto Adquirido"
    label: "Sub Motivo Alta Cierre"
  }

  dimension: producto_adquirido_sub_motivo_baja {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubMotivoBaja ;;
    view_label: "Producto Adquirido"
    label: "Sub Motivo Baja"
  }

  dimension: producto_adquirido_sub_motivo_baja_cierre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubMotivoBaja_Cierre ;;
    view_label: "Producto Adquirido"
    label: "Sub Motivo Baja Cierre"
  }

  dimension: producto_adquirido_tipo {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoTipo ;;
    view_label: "Producto Adquirido"
    label: "Tipo"
  }

  dimension: producto_adquirido_tipo_cierre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoTipo_Cierre ;;
    view_label: "Producto Adquirido"
    label: "Tipo Cierre"
  }

  dimension: recarga_access_methodnombre {
    type: string
    sql: ${TABLE}.RecargaACCESS_METHODNombre ;;
    view_label: "Recarga"
    label: "Access Method Nombre"

  }

  dimension: recarga_anio_mes {
    type: string
    sql: ${TABLE}.RecargaAnioMes ;;
    view_label: "Recarga"
    label: "Año Mes"
  }

  dimension: recarga_channel_id {
    type: string
    sql: ${TABLE}.RecargaCHANNEL_ID ;;
    value_format_name: id
    view_label: "Recarga"
    label: "Canal Id"
  }

  dimension: recarga_channel_idnombre {
    type: string
    sql: ${TABLE}.RecargaCHANNEL_IDNombre ;;
    view_label: "Recarga"
    label: "Canal Id Nombre"
  }

  dimension: recarga_ext_trans_id {
    type: string
    sql: ${TABLE}.RecargaEXT_TRANS_ID ;;
    value_format_name: id
    view_label: "Recarga"
    label: "Ext Trans Id"
  }

  dimension: recarga_ext_trans_type {
    type: string
    sql: ${TABLE}.RecargaEXT_TRANS_TYPE ;;
    view_label: "Recarga"
    label: "Ext Trans Type"

  }

  dimension: recarga_ext_trans_typenombre {
    type: string
    sql: ${TABLE}.RecargaEXT_TRANS_TYPENombre ;;
    view_label: "Recarga"
    label: "Ext Trans Type Nombre"
  }

  dimension: recarga_mainofferingnombre {
    type: string
    sql: ${TABLE}.RecargaMAINOFFERINGNombre ;;
    view_label: "Recarga"
    label: "Main Offering Nombre"
  }

  dimension: recarga_numero_linea {
    type: string
    sql: ${TABLE}.RecargaNUMERO_LINEA ;;
    view_label: "Recarga"
    label: "Numero Linea"
  }

  dimension: recarga_payment_type {
    type: string
    sql: ${TABLE}.RecargaPAYMENT_TYPE ;;
    view_label: "Recarga"
    label: "Payment Type"
  }

  dimension: recarga_payment_typenombre {
    type: string
    sql: ${TABLE}.RecargaPAYMENT_TYPENombre ;;
    view_label: "Recarga"
    label: "Payment Type Nombre"
  }

  dimension: recarga_paytype {
    type: string
    sql: ${TABLE}.RecargaPAYTYPE ;;
    view_label: "Recarga"
    label: "Pay Type"
  }

  dimension: recarga_paytypenombre {
    type: string
    sql: ${TABLE}.RecargaPAYTYPENombre ;;
    view_label: "Recarga"
    label: "Pay Type Nombre"
  }

  dimension: recarga_recharge_type {
    type: string
    sql: ${TABLE}.RecargaRECHARGE_TYPE ;;
    view_label: "Recarga"
    label: "Recharge Type"
  }

  dimension: recarga_recharge_typenombre {
    type: string
    sql: ${TABLE}.RecargaRECHARGE_TYPENombre ;;
    view_label: "Recarga"
    label: "Recharge Type Nombre"
  }

  dimension: recarga_status {
    type: string
    sql: ${TABLE}.RecargaSTATUS ;;
    view_label: "Recarga"
    label: "Status"
  }

  dimension: recarga_statusnombre {
    type: string
    sql: ${TABLE}.RecargaSTATUSNombre ;;
    view_label: "Recarga"
    label: "Status Nombre"
  }

  ## Numbers
  dimension: recarga_access_method {
    type: number
    sql: ${TABLE}.RecargaACCESS_METHOD ;;
    value_format_name: decimal_0
    view_label: "Recarga"
    label: "Access Method"
  }

  dimension: recarga_acct_id {
    type: number
    sql: ${TABLE}.RecargaACCT_ID ;;
    value_format_name: id
    view_label: "Recarga"
    label: "Acct Id"
  }

  dimension: recarga_brandid {
    type: number
    sql: ${TABLE}.RecargaBRANDID ;;
    value_format_name: id
    view_label: "Recarga"
    label: "Brand Id"
  }

  dimension: recarga_mainofferingid {
    type: number
    sql: ${TABLE}.RecargaMAINOFFERINGID ;;
    value_format_name: id
    view_label: "Recarga"
    label: "Main Offering Id"
  }

  dimension: recarga_oper_id {
    type: number
    sql: ${TABLE}.RecargaOPER_ID ;;
    value_format_name: id
    view_label: "Recarga"
    label: "Oper Id"
  }

  dimension: recarga_recharge_log_id {
    type: number
    sql: ${TABLE}.RecargaRECHARGE_LOG_ID ;;
    value_format_name: id
    view_label: "Recarga"
    label: "Log Id"
  }

  dimension: recarga_recharge_trans_id {
    type: number
    sql: ${TABLE}.RecargaRECHARGE_TRANS_ID ;;
    value_format_name: id
    view_label: "Recarga"
    label: "Recharge Trans Id"
  }

  dimension: recarga_sub_id {
    type: number
    sql: ${TABLE}.RecargaSUB_ID ;;
    value_format_name: id
    view_label: "Recarga"
    label: "Sub Id"
  }

  ## Hidden

  dimension: rango_numeracion_departamento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoSRCId ;;
  }

  dimension: rango_numeracion_localidad_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadSRCId ;;
  }

  dimension: rango_numeracion_provincia_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaSRCId ;;
  }

  dimension: recarga_loan_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.RecargaLOAN_AMOUNT ;;
  }

  dimension: recarga_recharge_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.RecargaRECHARGE_AMT ;;
  }

  dimension: producto_adquirido_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSK ;;
  }

  dimension: producto_adquirido_estado_sk_cierre {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSK_Cierre ;;
  }

  dimension: producto_adquirido_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSRCId ;;
  }

  dimension: producto_adquirido_estado_srcid_cierre {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSRCId_Cierre ;;
  }



## Measures

  measure: total_recarga_loan_amount {
    type: sum
    sql: ${recarga_loan_amount} ;;
    value_format_name: decimal_2
    label: "Monto Loan"
  }

  measure: total_recarga_recharge_amt {
    type: sum
    sql: ${recarga_recharge_amt} ;;
    value_format_name: decimal_2
    label: "Monto Recargas"
  }

  measure: count {
    type: count
    label: "Cantidad Recargas"
  }
}
