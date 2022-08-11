view: ft_recargas_full {
  label: "Recargas"
  sql_table_name: @{gcp_ambiente}.FT_Recargas_Full` ;;
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

  dimension_group: pa_fecha_activacion_plan_src {
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

  dimension_group: pa_fecha_desconexion_plan_src {
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

  dimension_group: pa_producto_adquirido_fecha_compra_src {
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

  dimension_group: pa_producto_adquirido_fecha_creacion_src {
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

  dimension_group: producto_adquirido_fecha_activacion_plan_src_actual {
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
    sql: ${TABLE}.ProductoAdquirido.FechaActivacionPlanSRC_Actual ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Activacion Plan Actual"
    label: "Activacion Plan Actual"
  }

  dimension_group: recarga_entry_src {
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
    group_label: "Fecha Entry"
    label: "Entry"
  }

  dimension_group: recarga_fecha {
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
    sql: ${TABLE}.RecargaFecha ;;
    datatype: date
    group_label: "Fecha Recarga"
    label: "Recarga"
  }

  dimension: _fecha_creacion {
    type: date_time
    sql: ${TABLE}._auditoria._fechaCreacion ;;
    datatype: timestamp
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date_time
    sql: ${TABLE}._auditoria._fechaUltimaActualizacion ;;
    datatype: timestamp
    view_label: "Auditoria"
    label: "Fecha Actualizacion"
  }

  ## Strings

  dimension: _usuario_ultima_actualizacion {
    type: string
    sql: ${TABLE}._auditoria_usuarioUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Usuario Modificacion"
  }

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

  dimension: rango_numeracion_provincia_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaNombre ;;
    suggest_dimension: lk_rango_numeracion_provincia.rango_numeracion_provincia_nombre
    view_label: "Geografia"
    label: "Rango Numeracion Provincia"
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

  dimension: producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoNombre ;;
    suggest_dimension: lk_producto_adquirido_estado.producto_adquirido_estado_nombre
    view_label: "Producto Adquirido"
    label: "Estado Nombre"
  }

  dimension: producto_adquirido_motivo_alta {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoMotivoAlta ;;
    view_label: "Producto Adquirido"
    label: "Motivo Alta"
  }

  dimension: producto_adquirido_motivo_baja {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoMotivoBaja ;;
    view_label: "Producto Adquirido"
    label: "Motivo Baja"
  }

  dimension: producto_adquirido_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoNombre ;;
    view_label: "Producto Adquirido"
    label: "Nombre"
  }

  dimension: producto_adquirido_referente_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoReferenteSRCId ;;
    view_label: "Producto Adquirido"
    label: "Referente ID"
  }

  dimension: producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSRCId ;;
    view_label: "Producto Adquirido"
    label: "ID"
  }

  dimension: producto_adquirido_sub_motivo_alta {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubMotivoAlta ;;
    view_label: "Producto Adquirido"
    label: "Submotivo Alta"
  }

  dimension: producto_adquirido_sub_motivo_baja {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubMotivoBaja ;;
    view_label: "Producto Adquirido"
    label: "Submotivo Baja"
  }

  dimension: producto_adquirido_tipo {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoTipo ;;
    view_label: "Producto Adquirido"
    label: "Tipo"
  }

  dimension: producto_adquirido_tipo_actual {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoTipo_Actual ;;
    view_label: "Producto Adquirido"
    label: "Tipo Actual"
  }

  dimension: producto_adquirido_srcid_actual {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSRCId_Actual ;;
    view_label: "Producto Adquirido"
    label: "Actual ID"
  }

  dimension: recarga_access_methodnombre {
    type: string
    sql: ${TABLE}.RecargaACCESS_METHODNombre ;;
    label: "Access Method Nombre"
  }

  dimension: recarga_anio_mes {
    type: string
    sql: ${TABLE}.RecargaAnioMes ;;
    label: "Año Mes"
  }

  dimension: recarga_channel_id {
    type: string
    sql: ${TABLE}.RecargaCHANNEL_ID ;;
    label: "Channel ID"
  }

  dimension: recarga_channel_idnombre {
    type: string
    sql: ${TABLE}.RecargaCHANNEL_IDNombre ;;
    label: "Channel Nombre"
  }

  dimension: recarga_ext_trans_id {
    type: string
    sql: ${TABLE}.RecargaEXT_TRANS_ID ;;
    label: "Ext Trans ID"
  }

  dimension: recarga_ext_trans_type {
    type: string
    sql: ${TABLE}.RecargaEXT_TRANS_TYPE ;;
    label: "Ext Trans Type"
  }

  dimension: recarga_ext_trans_typenombre {
    type: string
    sql: ${TABLE}.RecargaEXT_TRANS_TYPENombre ;;
    label: "Ext Trans Type Nombre"
  }

  dimension: recarga_mainofferingnombre {
    type: string
    sql: ${TABLE}.RecargaMAINOFFERINGNombre ;;
    label: "Main Offering Nombre"
  }

  dimension: recarga_numero_linea {
    type: string
    sql: ${TABLE}.RecargaNUMERO_LINEA ;;
    label: "Numero Linea"
  }

  dimension: recarga_payment_type {
    type: string
    sql: ${TABLE}.RecargaPAYMENT_TYPE ;;
    label: "Payment Type"
  }

  dimension: recarga_payment_typenombre {
    type: string
    sql: ${TABLE}.RecargaPAYMENT_TYPENombre ;;
    label: "Payment Type Nombre"
  }

  dimension: recarga_paytype {
    type: string
    sql: ${TABLE}.RecargaPAYTYPE ;;
    label: "Pay Type"
  }

  dimension: recarga_paytypenombre {
    type: string
    sql: ${TABLE}.RecargaPAYTYPENombre ;;
    label: "Pay Type Nombre"
  }

  dimension: recarga_recharge_type {
    type: string
    sql: ${TABLE}.RecargaRECHARGE_TYPE ;;
    label: "Recharge Type"
  }

  dimension: recarga_recharge_typenombre {
    type: string
    sql: ${TABLE}.RecargaRECHARGE_TYPENombre ;;
    label: "Recharge Type Nombre"
  }

  dimension: recarga_status {
    type: string
    sql: ${TABLE}.RecargaSTATUS ;;
    label: "Status"
  }

  dimension: recarga_statusnombre {
    type: string
    sql: ${TABLE}.RecargaSTATUSNombre ;;
    label: "Status Nombre"
  }

  ## Numbers

  dimension: recarga_access_method {
    type: number
    sql: ${TABLE}.RecargaACCESS_METHOD ;;
    label: "Access Method"
  }

  dimension: recarga_acct_id {
    type: number
    sql: ${TABLE}.RecargaACCT_ID ;;
    value_format_name: id
    label: "Acct ID"
  }

  dimension: recarga_brandid {
    type: number
    sql: ${TABLE}.RecargaBRANDID ;;
    value_format_name: id
    label: "Brand ID"
  }

  dimension: recarga_mainofferingid {
    type: number
    sql: ${TABLE}.RecargaMAINOFFERINGID ;;
    value_format_name: id
    label: "Main Offering ID"
  }

  dimension: recarga_oper_id {
    type: number
    sql: ${TABLE}.RecargaOPER_ID ;;
    value_format_name: id
    label: "Oper ID"
  }

  dimension: recarga_recharge_log_id {
    type: number
    sql: ${TABLE}.RecargaRECHARGE_LOG_ID ;;
    value_format_name: id
    label: "Recharge Log ID"
  }

  dimension: recarga_recharge_trans_id {
    type: number
    sql: ${TABLE}.RecargaRECHARGE_TRANS_ID ;;
    value_format_name: id
    label: "Recharge Trans ID"
  }

  dimension: recarga_sub_id {
    type: number
    sql: ${TABLE}.RecargaSUB_ID ;;
    value_format_name: id
    label: "Sub ID"
  }

  ## Hidden

  dimension: m_recarga_loan_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.RecargaLOAN_AMOUNT ;;
  }

  dimension: m_recarga_recharge_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.Metricas.RecargaRECHARGE_AMT ;;
  }

  dimension: producto_adquirido_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSRCId ;;
  }

  dimension: producto_adquirido_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSK ;;
  }

  dimension: rango_numeracion_departamento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoSRCId ;;
  }

  dimension: rango_numeracion_provincia_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaSRCId ;;
  }

  dimension: rango_numeracion_localidad_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadSRCId ;;
  }


## Measures

  measure: total_recarga_loan_amount {
    type: sum
    sql: ${m_recarga_loan_amount} ;;
    value_format_name: decimal_2
    label: "Monto Loan"
  }

  measure: total_recarga_recharge_amt {
    type: sum
    sql: ${m_recarga_recharge_amt} ;;
    value_format_name: decimal_2
    label: "Monto Recargas"
  }

  measure: count {
    type: count
    label: "Recargas Count"
  }
}
