view: ft_callin {
  sql_table_name: @{gcp_dataset_pub}.FT_CALLIN`;;
  suggestions: no
  label: "Call In"

  ## Primary Key

  dimension: pk {
    primary_key: yes
    type: number
    sql: ${interaction_id} ;;
  }

  ## Dates

  dimension_group: fecha_fin_llamadasrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.FECHA_FIN_LLAMADASRCId ;;
    datatype: timestamp
    label: "Fin"
    group_label: "Fecha Fin Llamada"
  }

  dimension_group: fecha_ingreso_agsrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.FECHA_INGRESO_AGSRCId ;;
    datatype: timestamp
    label: "Ingreso"
    group_label: "Fecha Ingreso AGSRCId"
  }

  dimension_group: fecha_ingreso_vqsrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.FECHA_INGRESO_VQSRCId ;;
    datatype: timestamp
    label: "Ingreso"
    group_label: "Fecha Ingreso VQSRCId"
  }

  dimension_group: fecha_ini_llamadasrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.FECHA_INI_LLAMADASRCId ;;
    datatype: timestamp
    label: "Inicio"
    group_label: "Fecha Inicio Llamada"
  }

  dimension_group: fecha_procesosrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.FECHA_PROCESOSRCId ;;
    datatype: date
    label: "Proceso"
    group_label: "Fecha Proceso"
  }

  dimension_group: fecha_salida_agsrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.FECHA_SALIDA_AGSRCId ;;
    datatype: timestamp
    label: "Salida"
    group_label: "Fecha Salida AGSRCId"
  }

  dimension_group: fecha_salida_vqsrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.FECHA_SALIDA_VQSRCId ;;
    datatype: timestamp
    label: "Salida"
    group_label: "Fecha Salida VQSRCId"
  }

  ## Strings

  dimension: tab_consulta_porsrcid {
    type: string
    sql: ${TABLE}.TAB_CONSULTA_PORSRCId ;;
    suggest_dimension: lk_tab_consulta_por.tab_consulta_porsrcid
  }

  dimension: tab_contactosrcid {
    type: string
    sql: ${TABLE}.TAB_CONTACTOSRCId ;;
    suggest_dimension: lk_tab_contacto.tab_contactosrcid
  }

  dimension: tab_motivosrcid {
    type: string
    sql: ${TABLE}.TAB_MOTIVOSRCId ;;
    suggest_dimension: lk_tab_motivo.tab_motivosrcid
  }

  dimension: tab_movilsrcid {
    type: string
    sql: ${TABLE}.TAB_MOVILSRCId ;;
    suggest_dimension: lk_tab_movil.tab_movilsrcid
  }

  dimension: tab_negociosrcid {
    type: string
    sql: ${TABLE}.TAB_NEGOCIOSRCId ;;
    suggest_dimension: lk_tab_negocio.tab_negociosrcid
  }

  dimension: tab_pcrcsrcid {
    type: string
    sql: ${TABLE}.TAB_PCRCSRCId ;;
    suggest_dimension: lk_tab_pcrc.tab_pcrcsrcid
  }

  dimension: tab_que_tienesrcid {
    type: string
    sql: ${TABLE}.TAB_QUE_TIENESRCId ;;
    suggest_dimension: lk_tab_que_tiene.tab_que_tienesrcid
  }

  dimension: tab_ref_arbolsrcid {
    type: string
    sql: ${TABLE}.TAB_REF_ARBOLSRCId ;;
    suggest_dimension: lk_tab_ref_arbol.tab_ref_arbolsrcid
  }

  dimension: tab_resultadosrcid {
    type: string
    sql: ${TABLE}.TAB_RESULTADOSRCId ;;
    suggest_dimension: lk_tab_resultado.tab_resultadosrcid
  }

  dimension: tab_tipo_de_llamadosrcid {
    type: string
    sql: ${TABLE}.TAB_TIPO_DE_LLAMADOSRCId ;;
    suggest_dimension: lk_tab_tipo_de_llamado.tab_tipo_de_llamadosrcid
  }

  dimension: tabpackagesrcid {
    type: string
    sql: ${TABLE}.TABPACKAGESRCId ;;
    suggest_dimension: lk_tabpackage.tabpackagesrcid
  }

  dimension: tabulacion1_srcid {
    type: string
    sql: ${TABLE}.TABULACION1SRCId ;;
    suggest_dimension: lk_tabulacion1.tabulacion1_srcid
  }

  dimension: tabulacion2_srcid {
    type: string
    sql: ${TABLE}.TABULACION2SRCId ;;
    suggest_dimension: lk_tabulacion2.tabulacion2_srcid
  }

  dimension: tabulacion3_srcid {
    type: string
    sql: ${TABLE}.TABULACION3SRCId ;;
    suggest_dimension: lk_tabulacion3.tabulacion3_srcid
  }

  dimension: tabulacion4_srcid {
    type: string
    sql: ${TABLE}.TABULACION4SRCId ;;
    suggest_dimension: lk_tabulacion4.tabulacion4_srcid
  }

  dimension: technicalresult_agsrcid {
    type: string
    sql: ${TABLE}.TECHNICALRESULT_AGSRCId ;;
    suggest_dimension: lk_technical_result_ag.technicalresult_agsrcid
  }

  dimension: technicalresult_vqsrcid {
    type: string
    sql: ${TABLE}.TECHNICALRESULT_VQSRCId ;;
    suggest_dimension: lk_technical_result_vq.technicalresult_vqsrcid
  }

  dimension: contexto_ivr_0800_opcionsrcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800_OPCIONSRCId ;;
    suggest_dimension: lk_contexto_ivr0800_opcion.contexto_ivr_0800_opcionsrcid
  }

  dimension: contexto_ivr_0800_segmentosrcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800_SEGMENTOSRCId ;;
    suggest_dimension: lk_contexto_ivr0800_segmento.contexto_ivr_0800_segmentosrcid
  }

  dimension: contexto_ivr_0800_srcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800SRCId ;;
    suggest_dimension: lk_contexto_ivr0800_opcion.contexto_ivr_0800_opcionsrcid
  }

  dimension: vag_agrupador4_srcid {
    type: string
    sql: ${TABLE}.VAG_AGRUPADOR4SRCId ;;
    suggest_dimension: lk_vagagrupador4.vag_agrupador4_srcid
  }

  dimension: vag_canalidadsrcid {
    type: string
    sql: ${TABLE}.VAG_CANALIDADSRCId ;;
    suggest_dimension: lk_vagcanalidad.vag_canalidadsrcid
  }

  dimension: vag_fansrcid {
    type: string
    sql: ${TABLE}.VAG_FANSRCId ;;
    suggest_dimension: lk_vagfan.vag_fansrcid
  }

  dimension: vag_negociosrcid {
    type: string
    sql: ${TABLE}.VAG_NEGOCIOSRCId ;;
    suggest_dimension: lk_vagnegocio.vag_negociosrcid
  }

  dimension: vag_pcrc1_srcid {
    type: string
    sql: ${TABLE}.VAG_PCRC1SRCId ;;
    suggest_dimension: lk_vagpcrc1.vag_pcrc1_srcid
  }

  dimension: vag_pcrc2_srcid {
    type: string
    sql: ${TABLE}.VAG_PCRC2SRCId ;;
    suggest_dimension: lk_vagpcrc2.vag_pcrc2_srcid
  }

  dimension: vag_pcrc3_srcid {
    type: string
    sql: ${TABLE}.VAG_PCRC3SRCId ;;
    suggest_dimension: lk_vagpcrc3.vag_pcrc3_srcid
  }

  dimension: vag_programasrcid {
    type: string
    sql: ${TABLE}.VAG_PROGRAMASRCId ;;
    suggest_dimension: lk_vagprograma.vag_programasrcid
  }

  dimension: vag_propiedadsrcid {
    type: string
    sql: ${TABLE}.VAG_PROPIEDADSRCId ;;
    suggest_dimension: lk_vagpropiedad.vag_propiedadsrcid
  }

  dimension: vag_segmentosrcid {
    type: string
    sql: ${TABLE}.VAG_SEGMENTOSRCId ;;
    suggest_dimension: lk_vagsegmento.vag_segmentosrcid
  }

  dimension: vag_sitiosrcid {
    type: string
    sql: ${TABLE}.VAG_SITIOSRCId ;;
    suggest_dimension: lk_vagsitio.vag_sitiosrcid
  }

  dimension: vag_sub_sitiosrcid {
    type: string
    sql: ${TABLE}.VAG_SUB_SITIOSRCId ;;
    suggest_dimension: lk_vagsub_sitio.vag_sub_sitiosrcid
  }

  dimension: vag_tipo_contactosrcid {
    type: string
    sql: ${TABLE}.VAG_TIPO_CONTACTOSRCId ;;
    suggest_dimension: lk_vagtipo_contacto.vag_tipo_contactosrcid
  }

  dimension: vagsrcid {
    type: string
    sql: ${TABLE}.VAGSRCId ;;
    suggest_dimension: lk_vag.vagsrcid
    label: "VAG"
  }

  dimension: vq_agrupador2_srcid {
    type: string
    sql: ${TABLE}.VQ_AGRUPADOR2SRCId ;;
    suggest_dimension: lk_vqagrupador2.vq_agrupador2_srcid
  }

  dimension: vq_agrupador3_srcid {
    type: string
    sql: ${TABLE}.VQ_AGRUPADOR3SRCId ;;
    suggest_dimension: lk_vqagrupador3.vq_agrupador3_srcid
  }

  dimension: vq_canalidadsrcid {
    type: string
    sql: ${TABLE}.VQ_CANALIDADSRCId ;;
    suggest_dimension: lk_vqcanalidad.vq_canalidadsrcid
  }

  dimension: vq_estadosrcid {
    type: string
    sql: ${TABLE}.VQ_ESTADOSRCId ;;
    suggest_dimension: lk_vqestado.vq_estadosrcid
  }

  dimension: vq_fansrcid {
    type: string
    sql: ${TABLE}.VQ_FANSRCId ;;
    suggest_dimension: lk_vqfan.vq_fansrcid
  }

  dimension: vq_fcrsrcid {
    type: string
    sql: ${TABLE}.VQ_FCRSRCId ;;
    suggest_dimension: lk_vqfcr.vq_fcrsrcid
  }

  dimension: vq_negociosrcid {
    type: string
    sql: ${TABLE}.VQ_NEGOCIOSRCId ;;
    suggest_dimension: lk_vqnegocio.vq_negociosrcid
  }

  dimension: vq_origen_digitalsrcid {
    type: string
    sql: ${TABLE}.VQ_ORIGEN_DIGITALSRCId ;;
    suggest_dimension: lk_vqorigen_digital.vq_origen_digitalsrcid
  }

  dimension: vq_pcrc1_srcid {
    type: string
    sql: ${TABLE}.VQ_PCRC1SRCId ;;
    suggest_dimension: lk_vqpcrc1.vq_pcrc1_srcid
  }

  dimension: vq_pcrc2_srcid {
    type: string
    sql: ${TABLE}.VQ_PCRC2SRCId ;;
    suggest_dimension: lk_vqpcrc2.vq_pcrc2_srcid

  }

  dimension: vq_pcrc3_srcid {
    type: string
    sql: ${TABLE}.VQ_PCRC3SRCId ;;
    suggest_dimension: lk_vqpcrc3.vq_pcrc3_srcid

  }

  dimension: vq_programasrcid {
    type: string
    sql: ${TABLE}.VQ_PROGRAMASRCId ;;
    suggest_dimension: lk_vqprograma.vq_programasrcid
  }

  dimension: vq_segmentosrcid {
    type: string
    sql: ${TABLE}.VQ_SEGMENTOSRCId ;;
    suggest_dimension: lk_vqsegmento.vq_segmentosrcid
  }

  dimension: vq_tipo_contactosrcid {
    type: string
    sql: ${TABLE}.VQ_TIPO_CONTACTOSRCId ;;
    suggest_dimension: lk_vqtipo_contacto.vq_tipo_contactosrcid
  }

  dimension: gvqsrcid {
    type: string
    sql: ${TABLE}.GVQSRCId ;;
    suggest_dimension: lk_gvq.gvqsrcid
    label: "GVQ"
  }

  dimension: interaction_typesrcid {
    type: string
    sql: ${TABLE}.INTERACTION_TYPESRCId ;;
    suggest_dimension: lk_interaction_type.interaction_typesrcid
  }

  dimension: tab_agrupador_reportingsrcid {
    type: string
    sql: ${TABLE}.TAB_AGRUPADOR_REPORTINGSRCId ;;
    suggest_dimension: lk_tab_agrupador_reporting.tab_agrupador_reportingsrcid
  }

  dimension: media_namesrcid {
    type: string
    sql: ${TABLE}.MEDIA_NAMESRCId ;;
    suggest_dimension: lk_media_name.media_namesrcid
  }

  dimension: resource_subtypesrcid {
    type: string
    sql: ${TABLE}.RESOURCE_SUBTYPESRCId ;;
    suggest_dimension: lk_resource_sub_type.resource_subtypesrcid
  }

  dimension: resourcerole_agsrcid {
    type: string
    sql: ${TABLE}.RESOURCEROLE_AGSRCId ;;
    suggest_dimension: lk_resource_role_ag.resourcerole_agsrcid
  }

  dimension: resourcerole_vqsrcid {
    type: string
    sql: ${TABLE}.RESOURCEROLE_VQSRCId ;;
    suggest_dimension: lk_resource_role_vq.resourcerole_vqsrcid
  }

  dimension: resultreason_agsrcid {
    type: string
    sql: ${TABLE}.RESULTREASON_AGSRCId ;;
    suggest_dimension: lk_result_reason_ag.resultreason_agsrcid
  }

  dimension: resultreason_vqsrcid {
    type: string
    sql: ${TABLE}.RESULTREASON_VQSRCId ;;
    suggest_dimension: lk_result_reason_vq.resultreason_vqsrcid
  }

  dimension: vqsrcid {
    type: string
    sql: ${TABLE}.VQSRCId ;;
    suggest_dimension: lk_vq.vqsrcid
  }

  dimension: agente_rp {
    type: string
    sql: ${TABLE}.AGENTE_RP ;;
    label: "LEGAJO"
  }

  dimension: agrupador1 {
    type: string
    sql: ${TABLE}.AGRUPADOR1 ;;
    label: "CONNID"
  }

  dimension: agrupador2 {
    type: string
    sql: ${TABLE}.AGRUPADOR2 ;;
    label: "IDGIA"
  }

  dimension: ani {
    type: string
    sql: ${TABLE}.ANI ;;
  }

  dimension: anis_ani_descripcion {
    type: string
    sql: ${TABLE}.ANIS_ANI_DESCRIPCION ;;
  }

  dimension: anis_postdiscado_descripcion {
    type: string
    sql: ${TABLE}.ANIS_POSTDISCADO_DESCRIPCION ;;
  }

  dimension: apellido {
    type: string
    sql: ${TABLE}.APELLIDO ;;
  }

  dimension: dim_vag_tipo {
    type: string
    sql: ${TABLE}.DIM_VAG_TIPO ;;
  }

  dimension: dnis {
    type: string
    sql: ${TABLE}.DNIS ;;
  }

  dimension: documento {
    type: string
    sql: ${TABLE}.DOCUMENTO ;;
  }

  dimension: encuesta {
    type: string
    sql: ${TABLE}.ENCUESTA ;;
  }

  dimension: id_ivr {
    type: string
    sql: ${TABLE}.ID_IVR ;;
  }

  dimension: id_nice {
    type: string
    sql: ${TABLE}.ID_NICE ;;
  }

  dimension: email_cliente {
    type: string
    sql: ${TABLE}.EMAIL_CLIENTE ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.NOMBRE ;;
  }

  dimension: nombre_cliente {
    type: string
    sql: ${TABLE}.NOMBRE_CLIENTE ;;
  }

  dimension: place_name {
    type: string
    sql: ${TABLE}.PLACE_NAME ;;
  }

  dimension: postdiscado {
    type: string
    sql: ${TABLE}.POSTDISCADO ;;
  }

  dimension: pregunta_1 {
    type: string
    sql: ${TABLE}.PREGUNTA_1 ;;
  }

  dimension: pregunta_2 {
    type: string
    sql: ${TABLE}.PREGUNTA_2 ;;
  }

  dimension: pregunta_3 {
    type: string
    sql: ${TABLE}.PREGUNTA_3 ;;
  }

  dimension: pregunta_4 {
    type: string
    sql: ${TABLE}.PREGUNTA_4 ;;
  }

  dimension: pregunta_5 {
    type: string
    sql: ${TABLE}.PREGUNTA_5 ;;
  }

  dimension: region_localidad {
    type: string
    sql: ${TABLE}.REGION_LOCALIDAD ;;
    label: "ID_WATSON"
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.RESOURCE_TYPE ;;
  }

  dimension: respuesta_1 {
    type: string
    sql: ${TABLE}.RESPUESTA_1 ;;
  }

  dimension: respuesta_2 {
    type: string
    sql: ${TABLE}.RESPUESTA_2 ;;
  }

  dimension: respuesta_3 {
    type: string
    sql: ${TABLE}.RESPUESTA_3 ;;
  }

  dimension: respuesta_4 {
    type: string
    sql: ${TABLE}.RESPUESTA_4 ;;
  }

  dimension: respuesta_5 {
    type: string
    sql: ${TABLE}.RESPUESTA_5 ;;
  }

  dimension: routing_target_type {
    type: string
    sql: ${TABLE}.ROUTING_TARGET_TYPE ;;
  }

  dimension: routing_target_type_code {
    type: string
    sql: ${TABLE}.ROUTING_TARGET_TYPE_CODE ;;
  }

  dimension: rp_ingreso_call {
    type: string
    sql: ${TABLE}.RP_INGRESO_CALL ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.STATE_NAME ;;
  }

  dimension: switch_name {
    type: string
    sql: ${TABLE}.SWITCH_NAME ;;
  }

  dimension: target_object_selected {
    type: string
    sql: ${TABLE}.TARGET_OBJECT_SELECTED ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.TELEFONO ;;
  }

  dimension: tipo_target {
    type: string
    sql: ${TABLE}.TIPO_TARGET ;;
  }

  ## Numbers

  dimension: estado_fin_abandonadasrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_ABANDONADASRCId ;;
    suggest_dimension: lk_estado_fin_abandonada.estado_fin_abandonadasrcid
  }

  dimension: estado_fin_atendidasrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_ATENDIDASRCId ;;
    suggest_dimension: lk_estado_fin_atendida.estado_fin_atendidasrcid
  }

  dimension: estado_fin_recibidasrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_RECIBIDASRCId ;;
    suggest_dimension: lk_estado_fin_recibida.estado_fin_recibidasrcid
  }

  dimension: estado_fin_salientesrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_SALIENTESRCId ;;
    suggest_dimension: lk_estado_fin_saliente.estado_fin_salientesrcid
  }

  dimension: fcrsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.FCRSRCId ;;
    suggest_dimension: lk_fcr.fcrsrcid
  }

  dimension: llamada_cortasrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.LLAMADA_CORTASRCId ;;
    suggest_dimension: lk_llamada_corta.llamada_cortasrcid
  }

  dimension: res_ordinalsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.RES_ORDINALSRCId ;;
    suggest_dimension: lk_res_ordinal.res_ordinalsrcid
  }

  dimension: stop_actionsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.STOP_ACTIONSRCId ;;
    suggest_dimension: lk_stop_action.stop_actionsrcid
  }

  dimension: sub_estado_finsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.SUB_ESTADO_FINSRCId ;;
    suggest_dimension: lk_sub_estado_fin.sub_estado_finsrcid
  }

  dimension: interaction_id {
    type: number
    sql: ${TABLE}.INTERACTION_ID ;;
  }

  dimension: abandono_q_1_9 {
    type: number
    sql: ${TABLE}.ABANDONO_Q_1_9 ;;
    view_label: "Abandono"
    group_label: "Q"
    group_item_label: "1- 01-09"
    label: "Abandono Q 01-09"
  }

  dimension: abandono_q_10_19 {
    type: number
    sql: ${TABLE}.ABANDONO_Q_10_19 ;;
    view_label: "Abandono"
    group_label: "Q"
    group_item_label: "2- 10-19"
    label: "Abandono Q 10-19"
  }

  dimension: abandono_q_20_29 {
    type: number
    sql: ${TABLE}.ABANDONO_Q_20_29 ;;
    view_label: "Abandono"
    group_label: "Q"
    group_item_label: "3- 20-29"
    label: "Abandono Q 20-29"
  }

  dimension: abandono_q_30_39 {
    type: number
    sql: ${TABLE}.ABANDONO_Q_30_39 ;;
    view_label: "Abandono"
    group_label: "Q"
    group_item_label: "4- 30-39"
    label: "Abandono Q 30-39"
  }

  dimension: abandono_q_40_49 {
    type: number
    sql: ${TABLE}.ABANDONO_Q_40_49 ;;
    view_label: "Abandono"
    group_label: "Q"
    group_item_label: "5- 40-49"
    label: "Abandono Q 40-49"
  }

  dimension: abandono_q_50_59 {
    type: number
    sql: ${TABLE}.ABANDONO_Q_50_59 ;;
    view_label: "Abandono"
    group_label: "Q"
    group_item_label: "6- 50-59"
    label: "Abandono Q 50-59"
  }

  dimension: abandono_q_60_89 {
    type: number
    sql: ${TABLE}.ABANDONO_Q_60_89 ;;
    view_label: "Abandono"
    group_label: "Q"
    group_item_label: "7- 60-89"
    label: "Abandono Q 60-89"
  }

  dimension: abandono_q_90_119 {
    type: number
    sql: ${TABLE}.ABANDONO_Q_90_119 ;;
    view_label: "Abandono"
    group_label: "Q"
    group_item_label: "8- 90-119"
    label: "Abandono Q 90-119"
  }

  dimension: abandono_q_120_mas {
    type: number
    sql: ${TABLE}.ABANDONO_Q_120_MAS ;;
    view_label: "Abandono"
    group_label: "Q"
    group_item_label: "9- 120-Mas"
    label: "Abandono Q 120-Mas"
  }

  dimension: abandono_r_1_9 {
    type: number
    sql: ${TABLE}.ABANDONO_R_1_9 ;;
    view_label: "Abandono"
    group_label: "R"
    group_item_label: "1- 01-09"
    label: "Abandono R 01-09"
  }

  dimension: abandono_r_10_19 {
    type: number
    sql: ${TABLE}.ABANDONO_R_10_19 ;;
    view_label: "Abandono"
    group_label: "R"
    group_item_label: "2- 10-19"
    label: "Abandono R 10-19"
  }

  dimension: abandono_r_20_29 {
    type: number
    sql: ${TABLE}.ABANDONO_R_20_29 ;;
    view_label: "Abandono"
    group_label: "R"
    group_item_label: "3- 20-29"
    label: "Abandono R 20-29"
  }

  dimension: abandono_r_30_39 {
    type: number
    sql: ${TABLE}.ABANDONO_R_30_39 ;;
    view_label: "Abandono"
    group_label: "R"
    group_item_label: "4- 30-39"
    label: "Abandono R 30-39"
  }

  dimension: abandono_r_40_49 {
    type: number
    sql: ${TABLE}.ABANDONO_R_40_49 ;;
    view_label: "Abandono"
    group_label: "R"
    group_item_label: "5- 40-49"
    label: "Abandono R 40-49"
  }

  dimension: abandono_r_50_59 {
    type: number
    sql: ${TABLE}.ABANDONO_R_50_59 ;;
    view_label: "Abandono"
    group_label: "R"
    group_item_label: "6- 50-59"
    label: "Abandono R 50-59"
  }

  dimension: abandono_r_60_89 {
    type: number
    sql: ${TABLE}.ABANDONO_R_60_89 ;;
    view_label: "Abandono"
    group_label: "R"
    group_item_label: "7- 60-89"
    label: "Abandono Q 60-89"
  }

  dimension: abandono_r_90_119 {
    type: number
    sql: ${TABLE}.ABANDONO_R_90_119 ;;
    view_label: "Abandono"
    group_label: "R"
    group_item_label: "8- 90-119"
    label: "Abandono R 90-119"
  }

  dimension: abandono_r_120_mas {
    type: number
    sql: ${TABLE}.ABANDONO_R_120_MAS ;;
    view_label: "Abandono"
    group_label: "R"
    group_item_label: "9- 120-Mas"
    label: "Abandono Q 120-Mas"
  }

  dimension: active_flag {
    type: number
    sql: ${TABLE}.ACTIVE_FLAG ;;
  }

  dimension: after_call_work_count {
    type: number
    sql: ${TABLE}.AFTER_CALL_WORK_COUNT ;;
  }

  dimension: after_call_work_duration {
    type: number
    sql: ${TABLE}.AFTER_CALL_WORK_DURATION ;;
  }

  dimension: agent_to_agent_cons_count {
    type: number
    sql: ${TABLE}.AGENT_TO_AGENT_CONS_COUNT ;;
  }

  dimension: agent_to_agent_cons_duration {
    type: number
    sql: ${TABLE}.AGENT_TO_AGENT_CONS_DURATION ;;
  }

  dimension: conf_init_hold_count {
    type: number
    sql: ${TABLE}.CONF_INIT_HOLD_COUNT ;;
  }

  dimension: conf_init_hold_duration {
    type: number
    sql: ${TABLE}.CONF_INIT_HOLD_DURATION ;;
  }

  dimension: conf_init_talk_count {
    type: number
    sql: ${TABLE}.CONF_INIT_TALK_COUNT ;;
  }

  dimension: conf_init_talk_duration {
    type: number
    sql: ${TABLE}.CONF_INIT_TALK_DURATION ;;
  }

  dimension: conf_join_hold_count {
    type: number
    sql: ${TABLE}.CONF_JOIN_HOLD_COUNT ;;
  }

  dimension: conf_join_hold_duration {
    type: number
    sql: ${TABLE}.CONF_JOIN_HOLD_DURATION ;;
  }

  dimension: conf_join_ring_count {
    type: number
    sql: ${TABLE}.CONF_JOIN_RING_COUNT ;;
  }

  dimension: conf_join_ring_duration {
    type: number
    sql: ${TABLE}.CONF_JOIN_RING_DURATION ;;
  }

  dimension: conf_join_talk_count {
    type: number
    sql: ${TABLE}.CONF_JOIN_TALK_COUNT ;;
  }

  dimension: conf_join_talk_duration {
    type: number
    sql: ${TABLE}.CONF_JOIN_TALK_DURATION ;;
  }

  dimension: conference_initiated_count {
    type: number
    sql: ${TABLE}.CONFERENCE_INITIATED_COUNT ;;
  }

  dimension: cons_init_dial_count {
    type: number
    sql: ${TABLE}.CONS_INIT_DIAL_COUNT ;;
  }

  dimension: cons_init_dial_duration {
    type: number
    sql: ${TABLE}.CONS_INIT_DIAL_DURATION ;;
  }

  dimension: cons_init_hold_count {
    type: number
    sql: ${TABLE}.CONS_INIT_HOLD_COUNT ;;
  }

  dimension: cons_init_hold_duration {
    type: number
    sql: ${TABLE}.CONS_INIT_HOLD_DURATION ;;
  }

  dimension: cons_init_talk_count {
    type: number
    sql: ${TABLE}.CONS_INIT_TALK_COUNT ;;
  }

  dimension: cons_init_talk_duration {
    type: number
    sql: ${TABLE}.CONS_INIT_TALK_DURATION ;;
  }

  dimension: cons_rcv_acw_count {
    type: number
    sql: ${TABLE}.CONS_RCV_ACW_COUNT ;;
  }

  dimension: cons_rcv_acw_duration {
    type: number
    sql: ${TABLE}.CONS_RCV_ACW_DURATION ;;
  }

  dimension: cons_rcv_hold_count {
    type: number
    sql: ${TABLE}.CONS_RCV_HOLD_COUNT ;;
  }

  dimension: cons_rcv_hold_duration {
    type: number
    sql: ${TABLE}.CONS_RCV_HOLD_DURATION ;;
  }

  dimension: cons_rcv_ring_count {
    type: number
    sql: ${TABLE}.CONS_RCV_RING_COUNT ;;
  }

  dimension: cons_rcv_ring_duration {
    type: number
    sql: ${TABLE}.CONS_RCV_RING_DURATION ;;
  }

  dimension: cons_rcv_talk_count {
    type: number
    sql: ${TABLE}.CONS_RCV_TALK_COUNT ;;
  }

  dimension: cons_rcv_talk_duration {
    type: number
    sql: ${TABLE}.CONS_RCV_TALK_DURATION ;;
  }

  dimension: contestada_10_19 {
    type: number
    sql: ${TABLE}.CONTESTADA_10_19 ;;
  }

  dimension: contestada_120_mas {
    type: number
    sql: ${TABLE}.CONTESTADA_120_MAS ;;
  }

  dimension: contestada_1_9 {
    type: number
    sql: ${TABLE}.CONTESTADA_1_9 ;;
  }

  dimension: contestada_20_29 {
    type: number
    sql: ${TABLE}.CONTESTADA_20_29 ;;
  }

  dimension: contestada_30_39 {
    type: number
    sql: ${TABLE}.CONTESTADA_30_39 ;;
  }

  dimension: contestada_40_49 {
    type: number
    sql: ${TABLE}.CONTESTADA_40_49 ;;
  }

  dimension: contestada_50_59 {
    type: number
    sql: ${TABLE}.CONTESTADA_50_59 ;;
  }

  dimension: contestada_60_89 {
    type: number
    sql: ${TABLE}.CONTESTADA_60_89 ;;
  }

  dimension: contestada_90_119 {
    type: number
    sql: ${TABLE}.CONTESTADA_90_119 ;;
  }

  dimension: customer_acw_count {
    type: number
    sql: ${TABLE}.CUSTOMER_ACW_COUNT ;;
    label: "ACW_COUNT"
  }

  dimension: customer_acw_duration {
    type: number
    sql: ${TABLE}.CUSTOMER_ACW_DURATION ;;
    label: "ACW_TIME"
  }

  dimension: customer_dial_count {
    type: number
    sql: ${TABLE}.CUSTOMER_DIAL_COUNT ;;
    label: "DIAL_COUNT"
  }

  dimension: customer_dial_duration {
    type: number
    sql: ${TABLE}.CUSTOMER_DIAL_DURATION ;;
    label: "DIAL_TIME"
  }

  dimension: customer_handle_count {
    type: number
    sql: ${TABLE}.CUSTOMER_HANDLE_COUNT ;;
  }

  dimension: customer_hold_count {
    type: number
    sql: ${TABLE}.CUSTOMER_HOLD_COUNT ;;
    label: "HOLD_COUNT"
  }

  dimension: customer_hold_duration {
    type: number
    sql: ${TABLE}.CUSTOMER_HOLD_DURATION ;;
    label: "HOLD_TIME"
  }

  dimension: customer_ring_count {
    type: number
    sql: ${TABLE}.CUSTOMER_RING_COUNT ;;
    label: "RING_COUNT"
  }

  dimension: customer_ring_duration {
    type: number
    sql: ${TABLE}.CUSTOMER_RING_DURATION ;;
    label: "RING_TIME"
  }

  dimension: customer_talk_count {
    type: number
    sql: ${TABLE}.CUSTOMER_TALK_COUNT ;;
    label: "TALK_COUNT"
  }

  dimension: customer_talk_duration {
    type: number
    sql: ${TABLE}.CUSTOMER_TALK_DURATION ;;
    label: "TALK_TIME"
  }

  dimension: dial_count {
    type: number
    sql: ${TABLE}.DIAL_COUNT ;;
  }

  dimension: dial_duration {
    type: number
    sql: ${TABLE}.DIAL_DURATION ;;
  }

  dimension: duration_call {
    type: number
    sql: ${TABLE}.DURATION_CALL ;;
  }

  dimension: fecha_fin_llamada_epoch {
    type: number
    sql: ${TABLE}.FECHA_FIN_LLAMADA_EPOCH ;;
  }

  dimension: fecha_ingreso_ag_epoch {
    type: number
    sql: ${TABLE}.FECHA_INGRESO_AG_EPOCH ;;
  }

  dimension: fecha_ingreso_vq_epoch {
    type: number
    sql: ${TABLE}.FECHA_INGRESO_VQ_EPOCH ;;
  }

  dimension: fecha_ini_llamada_epoch {
    type: number
    sql: ${TABLE}.FECHA_INI_LLAMADA_EPOCH ;;
  }

  dimension: fecha_proceso_epoch {
    type: number
    sql: ${TABLE}.FECHA_PROCESO_EPOCH ;;
  }

  dimension: fecha_salida_ag_epoch {
    type: number
    sql: ${TABLE}.FECHA_SALIDA_AG_EPOCH ;;
  }

  dimension: fecha_salida_vq_epoch {
    type: number
    sql: ${TABLE}.FECHA_SALIDA_VQ_EPOCH ;;
  }

  dimension: fin_ifa_seg {
    type: number
    sql: ${TABLE}.FIN_IFA_SEG ;;
  }

  dimension: fin_irf_seg {
    type: number
    sql: ${TABLE}.FIN_IRF_SEG ;;
  }

  dimension: fin_msf_seg {
    type: number
    sql: ${TABLE}.FIN_MSF_SEG ;;
  }

  dimension: hold_count {
    type: number
    sql: ${TABLE}.HOLD_COUNT ;;
  }

  dimension: hold_duration {
    type: number
    sql: ${TABLE}.HOLD_DURATION ;;
  }

  dimension: ini_ifa_seg {
    type: number
    sql: ${TABLE}.INI_IFA_SEG ;;
  }

  dimension: ini_irf_seg {
    type: number
    sql: ${TABLE}.INI_IRF_SEG ;;
  }

  dimension: ini_msf_seg {
    type: number
    sql: ${TABLE}.INI_MSF_SEG ;;
  }

  dimension: interaction_type_key {
    type: number
    sql: ${TABLE}.INTERACTION_TYPE_KEY ;;
  }

  dimension: last_rp_resource_key {
    type: number
    sql: ${TABLE}.LAST_RP_RESOURCE_KEY ;;
  }

  dimension: last_vqueue_resource_key {
    type: number
    sql: ${TABLE}.LAST_VQUEUE_RESOURCE_KEY ;;
  }

  dimension: llamada_corta_10_19 {
    type: number
    sql: ${TABLE}.LLAMADA_CORTA_10_19 ;;
  }

  dimension: llamada_corta_1_9 {
    type: number
    sql: ${TABLE}.LLAMADA_CORTA_1_9 ;;
  }

  dimension: llamadacorta_20_29 {
    type: number
    sql: ${TABLE}.LLAMADACORTA_20_29 ;;
  }

  dimension: media_type_key {
    type: number
    sql: ${TABLE}.MEDIA_TYPE_KEY ;;
  }

  dimension: mediation_count {
    type: number
    sql: ${TABLE}.MEDIATION_COUNT ;;
  }

  dimension: mediation_segment_id {
    type: number
    sql: ${TABLE}.MEDIATION_SEGMENT_ID ;;
  }

  dimension: place_key {
    type: number
    sql: ${TABLE}.PLACE_KEY ;;
  }

  dimension: post_cons_xfer_hold_count {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_HOLD_COUNT ;;
  }

  dimension: post_cons_xfer_hold_duration {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_HOLD_DURATION ;;
  }

  dimension: post_cons_xfer_ring_count {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_RING_COUNT ;;
  }

  dimension: post_cons_xfer_ring_duration {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_RING_DURATION ;;
  }

  dimension: post_cons_xfer_talk_count {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_TALK_COUNT ;;
  }

  dimension: post_cons_xfer_talk_duration {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_TALK_DURATION ;;
  }

  dimension: res_previous_sm_state_key {
    type: number
    sql: ${TABLE}.RES_PREVIOUS_SM_STATE_KEY ;;
  }

  dimension: resource_group_combination_key {
    type: number
    sql: ${TABLE}.RESOURCE_GROUP_COMBINATION_KEY ;;
  }

  dimension: resource_key {
    type: number
    sql: ${TABLE}.RESOURCE_KEY ;;
  }

  dimension: ring_count {
    type: number
    sql: ${TABLE}.RING_COUNT ;;
  }

  dimension: ring_duration {
    type: number
    sql: ${TABLE}.RING_DURATION ;;
  }

  dimension: routing_point_duration {
    type: number
    sql: ${TABLE}.ROUTING_POINT_DURATION ;;
  }

  dimension: routing_target_key {
    type: number
    sql: ${TABLE}.ROUTING_TARGET_KEY ;;
  }

  dimension: t_duration_ag {
    type: number
    sql: ${TABLE}.T_DURATION_AG ;;
  }

  dimension: t_duration_vq {
    type: number
    sql: ${TABLE}.T_DURATION_VQ ;;
  }

  dimension: talk_count {
    type: number
    sql: ${TABLE}.TALK_COUNT ;;
  }

  dimension: talk_duration {
    type: number
    sql: ${TABLE}.TALK_DURATION ;;
  }

  dimension: technical_descriptor_key {
    type: number
    sql: ${TABLE}.TECHNICAL_DESCRIPTOR_KEY ;;
  }

  dimension: unico24 {
    type: number
    sql: ${TABLE}.UNICO24 ;;
    label: "CLIENTE_UNICO_DIA"
  }

  dimension: unico7_x24 {
    type: number
    sql: ${TABLE}.UNICO7X24 ;;
    label: "CLIENTE_UNICO_MES"
  }

  ## Hidden

  dimension: interaction_resource_id {
    hidden: yes
    type: number
    sql: ${TABLE}.INTERACTION_RESOURCE_ID ;;
  }



##############
## Measures ##
##############

  measure: count_interaction_resource_id {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Interacciones"
    label: "Cantidad Interacciones"
  }

  measure: total_estado_fin_abandonadasrcid {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${estado_fin_abandonadasrcid} ;;
    group_label: "Total"
    group_item_label: "Abandonadas"
    label: "Total Abandonadas"
    }

  measure: total_estado_fin_atendidasrcid {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${estado_fin_atendidasrcid} ;;
    group_label: "Total"
    group_item_label: "Atendidas"
    label: "Total Atendidas"
  }

  measure: total_estado_fin_recibidasrcid {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${estado_fin_recibidasrcid} ;;
    group_label: "Total"
    group_item_label: "Recibidas"
    label: "Total Recibidas"
  }

  measure: total_estado_fin_salientesrcid {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${estado_fin_salientesrcid} ;;
    group_label: "Total"
    group_item_label: "Salientes"
    label: "Total Salientes"
  }

  measure: total_duration_call {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${duration_call} ;;
    group_label: "Total"
    group_item_label: "Duracion"
    label: "Total Duración"
  }

  measure: total_t_duration_ag {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${t_duration_ag} ;;
    group_label: "Total"
    group_item_label: "Duración AG"
    label: "Total Duración AG"
  }
}
