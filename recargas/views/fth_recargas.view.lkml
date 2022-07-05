view: fth_recargas {
  sql_table_name: `teco-prod-edw-5e1b.ue4_prod_edw_pub_gcp.FTH_Recargas`
    ;;

  dimension_group: _auditoria___fecha_creacion {
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
    sql: ${TABLE}._auditoria._fechaCreacion ;;
  }

  dimension_group: _auditoria___fecha_ultima_actualizacion {
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
    sql: ${TABLE}._auditoria._fechaUltimaActualizacion ;;
  }

  dimension: _auditoria___sesion_id {
    type: string
    sql: ${TABLE}._auditoria._sesionId ;;
    group_label: "Auditoria"
    group_item_label: "Sesion ID"
  }

  dimension: _auditoria___usuario_creacion {
    type: string
    sql: ${TABLE}._auditoria._usuarioCreacion ;;
    group_label: "Auditoria"
    group_item_label: "Usuario Creacion"
  }

  dimension: _auditoria___usuario_ultima_actualizacion {
    type: string
    sql: ${TABLE}._auditoria._usuarioUltimaActualizacion ;;
    group_label: "Auditoria"
    group_item_label: "Usuario Ultima Actualizacion"
  }

  dimension: geografia__rango_numeracion_departamento_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoNombre ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Departamento Nombre"
  }

  dimension: geografia__rango_numeracion_departamento_srcid {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionDepartamentoSRCId ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Departamento Srcid"
  }

  dimension: geografia__rango_numeracion_localidad_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadNombre ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Localidad Nombre"
  }

  dimension: geografia__rango_numeracion_localidad_srcid {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionLocalidadSRCId ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Localidad Srcid"
  }

  dimension: geografia__rango_numeracion_prefijo_interurbano {
    type: number
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijoInterurbano ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Prefijo Interurbano"
  }

  dimension: geografia__rango_numeracion_prefijos {
    type: number
    sql: ${TABLE}.Geografia.RangoNumeracionPrefijos ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Prefijos"
  }

  dimension: geografia__rango_numeracion_provincia_nombre {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaNombre ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Provincia Nombre"
  }

  dimension: geografia__rango_numeracion_provincia_srcid {
    type: string
    sql: ${TABLE}.Geografia.RangoNumeracionProvinciaSRCId ;;
    group_label: "Geografia"
    group_item_label: "Rango Numeracion Provincia Srcid"
  }

  dimension: metricas__recarga_cantidad {
    type: number
    sql: ${TABLE}.Metricas.RecargaCantidad ;;
    group_label: "Metricas"
    group_item_label: "Recarga Cantidad"
  }

  dimension: metricas__recarga_loan_amount {
    type: number
    sql: ${TABLE}.Metricas.RecargaLOAN_AMOUNT ;;
    group_label: "Metricas"
    group_item_label: "Recarga Loan Amount"
  }

  dimension: metricas__recarga_recharge_amt {
    type: number
    sql: ${TABLE}.Metricas.RecargaRECHARGE_AMT ;;
    group_label: "Metricas"
    group_item_label: "Recarga Recharge Amt"
  }

  dimension_group: producto_adquirido__fecha_activacion_plan_src {
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
    sql: ${TABLE}.ProductoAdquirido.FechaActivacionPlanSRC ;;
  }

  dimension_group: producto_adquirido__fecha_desconexion_plan_src {
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
    sql: ${TABLE}.ProductoAdquirido.FechaDesconexionPlanSRC ;;
  }

  dimension: producto_adquirido__producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoNombre ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Nombre"
  }

  dimension: producto_adquirido__producto_adquirido_estado_sk {
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSK ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Sk"
  }

  dimension: producto_adquirido__producto_adquirido_estado_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Estado Srcid"
  }

  dimension_group: producto_adquirido__producto_adquirido_fecha_compra_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaCompraSRC ;;
  }

  dimension_group: producto_adquirido__producto_adquirido_fecha_creacion_src {
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
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoFechaCreacionSRC ;;
  }

  dimension: producto_adquirido__producto_adquirido_motivo_alta {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoMotivoAlta ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Motivo Alta"
  }

  dimension: producto_adquirido__producto_adquirido_motivo_baja {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoMotivoBaja ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Motivo Baja"
  }

  dimension: producto_adquirido__producto_adquirido_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoNombre ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Nombre"
  }

  dimension: producto_adquirido__producto_adquirido_referente_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoReferenteSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Referente Srcid"
  }

  dimension: producto_adquirido__producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSRCId ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Srcid"
  }

  dimension: producto_adquirido__producto_adquirido_sub_motivo_alta {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubMotivoAlta ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Sub Motivo Alta"
  }

  dimension: producto_adquirido__producto_adquirido_sub_motivo_baja {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubMotivoBaja ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Sub Motivo Baja"
  }

  dimension: producto_adquirido__producto_adquirido_tipo {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoTipo ;;
    group_label: "Producto Adquirido"
    group_item_label: "Producto Adquirido Tipo"
  }

  dimension: recarga_access_method {
    type: number
    sql: ${TABLE}.RecargaACCESS_METHOD ;;
  }

  dimension: recarga_access_methodnombre {
    type: string
    sql: ${TABLE}.RecargaACCESS_METHODNombre ;;
  }

  dimension: recarga_acct_id {
    type: number
    sql: ${TABLE}.RecargaACCT_ID ;;
  }

  dimension: recarga_anio_mes {
    type: string
    sql: ${TABLE}.RecargaAnioMes ;;
  }

  dimension: recarga_brandid {
    type: number
    value_format_name: id
    sql: ${TABLE}.RecargaBRANDID ;;
  }

  dimension: recarga_channel_id {
    type: string
    sql: ${TABLE}.RecargaCHANNEL_ID ;;
  }

  dimension: recarga_channel_idnombre {
    type: string
    sql: ${TABLE}.RecargaCHANNEL_IDNombre ;;
  }

  dimension_group: recarga_entry {
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
    sql: ${TABLE}.RecargaENTRY_DATE ;;
  }

  dimension: recarga_ext_trans_id {
    type: string
    sql: ${TABLE}.RecargaEXT_TRANS_ID ;;
  }

  dimension: recarga_ext_trans_type {
    type: string
    sql: ${TABLE}.RecargaEXT_TRANS_TYPE ;;
  }

  dimension: recarga_ext_trans_typenombre {
    type: string
    sql: ${TABLE}.RecargaEXT_TRANS_TYPENombre ;;
  }

  dimension_group: recarga_fecha {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.RecargaFecha ;;
  }

  dimension: recarga_mainofferingid {
    type: number
    value_format_name: id
    sql: ${TABLE}.RecargaMAINOFFERINGID ;;
  }

  dimension: recarga_mainofferingnombre {
    type: string
    sql: ${TABLE}.RecargaMAINOFFERINGNombre ;;
  }

  dimension: recarga_numero_linea {
    type: string
    sql: ${TABLE}.RecargaNUMERO_LINEA ;;
  }

  dimension: recarga_oper_id {
    type: number
    sql: ${TABLE}.RecargaOPER_ID ;;
  }

  dimension: recarga_payment_type {
    type: string
    sql: ${TABLE}.RecargaPAYMENT_TYPE ;;
  }

  dimension: recarga_payment_typenombre {
    type: string
    sql: ${TABLE}.RecargaPAYMENT_TYPENombre ;;
  }

  dimension: recarga_paytype {
    type: string
    sql: ${TABLE}.RecargaPAYTYPE ;;
  }

  dimension: recarga_paytypenombre {
    type: string
    sql: ${TABLE}.RecargaPAYTYPENombre ;;
  }

  dimension: recarga_recharge_log_id {
    type: number
    sql: ${TABLE}.RecargaRECHARGE_LOG_ID ;;
  }

  dimension: recarga_recharge_trans_id {
    type: number
    sql: ${TABLE}.RecargaRECHARGE_TRANS_ID ;;
  }

  dimension: recarga_recharge_type {
    type: string
    sql: ${TABLE}.RecargaRECHARGE_TYPE ;;
  }

  dimension: recarga_recharge_typenombre {
    type: string
    sql: ${TABLE}.RecargaRECHARGE_TYPENombre ;;
  }

  dimension: recarga_status {
    type: string
    sql: ${TABLE}.RecargaSTATUS ;;
  }

  dimension: recarga_statusnombre {
    type: string
    sql: ${TABLE}.RecargaSTATUSNombre ;;
  }

  dimension: recarga_sub_id {
    type: number
    sql: ${TABLE}.RecargaSUB_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
