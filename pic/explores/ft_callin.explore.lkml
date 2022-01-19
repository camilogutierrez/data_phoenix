include: "/pic/views/ft_callin.view.lkml"
include: "/pic/views/lk_*.view.lkml"

explore: ft_callin {
  label: "Call In"
  group_label: "Phoenix"

  persist_for: "12 hours"

  always_filter: {
    filters:  [
                ft_callin.fecha_procesosrcid_date: "today",
                ft_callin.dim_vag_tipo: "SEGMENTO_SITIO",
                ft_callin.vagsrcid: "%_QC1S1",
                ft_callin.gvqsrcid: "%_QC1"
              ]
  }

  join: lk_contexto_ivr0800 {
    type: inner
    view_label: "Contexto 0800"
    sql_on: ${ft_callin.contexto_ivr_0800_srcid} = ${lk_contexto_ivr0800.contexto_ivr_0800_srcid};;
    relationship: many_to_one
  }

  join: lk_contexto_ivr0800_opcion {
    type: inner
    view_label: "Contexto 0800 Opción"
    sql_on: ${ft_callin.contexto_ivr_0800_opcionsrcid} = ${lk_contexto_ivr0800_opcion.contexto_ivr_0800_opcionsrcid};;
    relationship: many_to_one
  }

  join: lk_contexto_ivr0800_segmento {
    type: inner
    view_label: "Contexto 0800 Segmento"
    sql_on: ${ft_callin.contexto_ivr_0800_segmentosrcid} = ${lk_contexto_ivr0800_segmento.contexto_ivr_0800_segmentosrcid};;
    relationship: many_to_one
  }

  join: lk_gvq {
    type: inner
    view_label: "GVQ"
    sql_on: ${ft_callin.gvqsrcid} = ${lk_gvq.gvqsrcid};;
    relationship: many_to_one
  }

  join: lk_interaction_type {
    type: inner
    view_label: "Tipo de Interacción"
    sql_on: ${ft_callin.interaction_typesrcid} = ${lk_interaction_type.interaction_typesrcid};;
    relationship: many_to_one
  }

  join: lk_media_name {
    type: inner
    view_label: "Media Name"
    sql_on: ${ft_callin.media_namesrcid} = ${lk_media_name.media_namesrcid};;
    relationship: many_to_one
  }

  join: lk_resource_role_ag {
    type: inner
    view_label: "Resource Role AG"
    sql_on: ${ft_callin.resourcerole_agsrcid} = ${lk_resource_role_ag.resourcerole_agsrcid};;
    relationship: many_to_one
  }

  join: lk_resource_role_vq {
    type: inner
    view_label: "Resource Role VQ"
    sql_on: ${ft_callin.resourcerole_vqsrcid} = ${lk_resource_role_vq.resourcerole_vqsrcid};;
    relationship: many_to_one
  }

  join: lk_resource_sub_type {
    type: inner
    view_label: "Resource Subtype"
    sql_on: ${ft_callin.resource_subtypesrcid} = ${lk_resource_sub_type.resource_subtypesrcid};;
    relationship: many_to_one
  }

  join: lk_result_reason_ag {
    type: inner
    view_label: "Result Reason AG"
    sql_on: ${ft_callin.resultreason_agsrcid} = ${lk_result_reason_ag.resultreason_agsrcid};;
    relationship: many_to_one
  }

  join: lk_result_reason_vq {
    type: inner
    view_label: "Result Reason VQ"
    sql_on: ${ft_callin.resultreason_vqsrcid} = ${lk_result_reason_vq.resultreason_vqsrcid};;
    relationship: many_to_one
  }

  join: lk_tab_agrupador_reporting {
    type: inner
    view_label: "Tab Agrupador Reporting"
    sql_on: ${ft_callin.tab_agrupador_reportingsrcid} = ${lk_tab_agrupador_reporting.tab_agrupador_reportingsrcid};;
    relationship: many_to_one
  }

  join: lk_tab_consulta_por {
    type: inner
    view_label: "Tab Consulta Por"
    sql_on: ${ft_callin.tab_consulta_porsrcid} = ${lk_tab_consulta_por.tab_consulta_porsrcid};;
    relationship: many_to_one
  }

  join: lk_tab_contacto {
    type: inner
    view_label: "Tab Contacto"
    sql_on: ${ft_callin.tab_contactosrcid} = ${lk_tab_contacto.tab_contactosrcid};;
    relationship: many_to_one
  }

  join: lk_tab_motivo {
    type: inner
    view_label: "Tab Motivo"
    sql_on: ${ft_callin.tab_motivosrcid} = ${lk_tab_motivo.tab_motivosrcid};;
    relationship: many_to_one
  }

  join: lk_tab_movil {
    type: inner
    view_label: "Tab Movil"
    sql_on: ${ft_callin.tab_movilsrcid} = ${lk_tab_movil.tab_movilsrcid};;
    relationship: many_to_one
  }

  join: lk_tab_negocio {
    type: inner
    view_label: "Tab Negocio"
    sql_on: ${ft_callin.tab_negociosrcid} = ${lk_tab_negocio.tab_negociosrcid};;
    relationship: many_to_one
  }

  join: lk_tabpackage {
    type: inner
    view_label: "Tab Package"
    sql_on: ${ft_callin.tabpackagesrcid} = ${lk_tabpackage.tabpackagesrcid};;
    relationship: many_to_one
  }

  join: lk_tab_pcrc {
    type: inner
    view_label: "Tab PCRC"
    sql_on: ${ft_callin.tab_pcrcsrcid} = ${lk_tab_pcrc.tab_pcrcsrcid};;
    relationship: many_to_one
  }

  join: lk_tab_que_tiene {
    type: inner
    view_label: "Tab Que Tiene"
    sql_on: ${ft_callin.tab_que_tienesrcid} = ${lk_tab_que_tiene.tab_que_tienesrcid};;
    relationship: many_to_one
  }

  join: lk_tab_ref_arbol {
    type: inner
    view_label: "Tab Ref Arbol"
    sql_on: ${ft_callin.tab_ref_arbolsrcid} = ${lk_tab_ref_arbol.tab_ref_arbolsrcid};;
    relationship: many_to_one
  }

  join: lk_tab_resultado {
    type: inner
    view_label: "Tab Resultado"
    sql_on: ${ft_callin.tab_resultadosrcid} = ${lk_tab_resultado.tab_resultadosrcid};;
    relationship: many_to_one
  }

  join: lk_tab_tipo_de_llamado {
    type: inner
    view_label: "Tab Tipo de Llamado"
    sql_on: ${ft_callin.tab_tipo_de_llamadosrcid} = ${lk_tab_tipo_de_llamado.tab_tipo_de_llamadosrcid};;
    relationship: many_to_one
  }

  join: lk_tabulacion1 {
    type: inner
    view_label: "Tabulación 1"
    sql_on: ${ft_callin.tabulacion1_srcid} = ${lk_tabulacion1.tabulacion1_srcid};;
    relationship: many_to_one
  }

  join: lk_tabulacion2 {
    type: inner
    view_label: "Tabulación 2"
    sql_on: ${ft_callin.tabulacion2_srcid} = ${lk_tabulacion2.tabulacion2_srcid};;
    relationship: many_to_one
  }

  join: lk_tabulacion3 {
    type: inner
    view_label: "Tabulación 3"
    sql_on: ${ft_callin.tabulacion3_srcid} = ${lk_tabulacion3.tabulacion3_srcid};;
    relationship: many_to_one
  }

  join: lk_tabulacion4 {
    type: inner
    view_label: "Tabulación 4"
    sql_on: ${ft_callin.tabulacion4_srcid} = ${lk_tabulacion4.tabulacion4_srcid};;
    relationship: many_to_one
  }

  join: lk_technical_result_ag {
    type: inner
    view_label: "Technical Result AG"
    sql_on: ${ft_callin.technicalresult_agsrcid} = ${lk_technical_result_ag.technicalresult_agsrcid};;
    relationship: many_to_one
  }

  join: lk_technical_result_vq {
    type: inner
    view_label: "Technical Result VQ"
    sql_on: ${ft_callin.technicalresult_vqsrcid} = ${lk_technical_result_vq.technicalresult_vqsrcid};;
    relationship: many_to_one
  }

  join: lk_vag {
    type: inner
    view_label: "VAG"
    sql_on: ${ft_callin.vagsrcid} = ${lk_vag.vagsrcid};;
    relationship: many_to_one
  }

  join: lk_vagagrupador4 {
    type: inner
    view_label: "VAG Agrupador 4"
    sql_on: ${ft_callin.vag_agrupador4_srcid} = ${lk_vagagrupador4.vag_agrupador4_srcid};;
    relationship: many_to_one
  }

  join: lk_vagcanalidad {
    type: inner
    view_label: "VAG Canalidad"
    sql_on: ${ft_callin.vag_canalidadsrcid} = ${lk_vagcanalidad.vag_canalidadsrcid};;
    relationship: many_to_one
  }

  join: lk_vagfan {
    type: inner
    view_label: "VAG Fan"
    sql_on: ${ft_callin.vag_fansrcid} = ${lk_vagfan.vag_fansrcid};;
    relationship: many_to_one
  }

  join: lk_vagnegocio {
    type: inner
    view_label: "VAG Negocio"
    sql_on: ${ft_callin.vag_negociosrcid} = ${lk_vagnegocio.vag_negociosrcid};;
    relationship: many_to_one
  }

  join: lk_vagpcrc1 {
    type: inner
    view_label: "VAG PCRC1"
    sql_on: ${ft_callin.vag_pcrc1_srcid} = ${lk_vagpcrc1.vag_pcrc1_srcid};;
    relationship: many_to_one
  }

  join: lk_vagpcrc2 {
    type: inner
    view_label: "VAG PCRC2"
    sql_on: ${ft_callin.vag_pcrc2_srcid} = ${lk_vagpcrc2.vag_pcrc2_srcid};;
    relationship: many_to_one
  }

  join: lk_vagpcrc3 {
    type: inner
    view_label: "VAG PCRC3"
    sql_on: ${ft_callin.vag_pcrc3_srcid} = ${lk_vagpcrc3.vag_pcrc3_srcid};;
    relationship: many_to_one
  }

  join: lk_vagprograma {
    type: inner
    view_label: "VAG Programa"
    sql_on: ${ft_callin.vag_programasrcid} = ${lk_vagprograma.vag_programasrcid};;
    relationship: many_to_one
  }

  join: lk_vagpropiedad {
    type: inner
    view_label: "VAG Propiedad"
    sql_on: ${ft_callin.vag_propiedadsrcid} = ${lk_vagpropiedad.vag_propiedadsrcid};;
    relationship: many_to_one
  }

  join: lk_vagsegmento {
    view_label: "VAG Segmento"
    sql_on: ${ft_callin.vag_segmentosrcid} = ${lk_vagsegmento.vag_segmentosrcid};;
    relationship: many_to_one
  }

  join: lk_vagsitio {
    type: inner
    view_label: "VAG Sitio"
    sql_on: ${ft_callin.vag_sitiosrcid} = ${lk_vagsitio.vag_sitiosrcid};;
    relationship: many_to_one
  }

  join: lk_vagsub_sitio {
    type: inner
    view_label: "VAG SubSitio"
    sql_on: ${ft_callin.vag_sub_sitiosrcid} = ${lk_vagsub_sitio.vag_sub_sitiosrcid};;
    relationship: many_to_one
  }

  join: lk_vagtipo_contacto {
    type: inner
    view_label: "VAG Tipo Contacto"
    sql_on: ${ft_callin.vag_tipo_contactosrcid} = ${lk_vagtipo_contacto.vag_tipo_contactosrcid};;
    relationship: many_to_one
  }

  join: lk_vq {
    type: inner
    view_label: "VQ"
    sql_on: ${ft_callin.vqsrcid} = ${lk_vq.vqsrcid};;
    relationship: many_to_one
  }

  join: lk_vqagrupador2 {
    type: inner
    view_label: "VQ Agrupador2"
    sql_on: ${ft_callin.vq_agrupador2_srcid} = ${lk_vqagrupador2.vq_agrupador2_srcid};;
    relationship: many_to_one
  }

  join: lk_vqagrupador3 {
    type: inner
    view_label: "VQ Agrupador3"
    sql_on: ${ft_callin.vq_agrupador3_srcid} = ${lk_vqagrupador3.vq_agrupador3_srcid};;
    relationship: many_to_one
  }

  join: lk_vqcanalidad {
    type: inner
    view_label: "VQ Canalidad"
    sql_on: ${ft_callin.vq_canalidadsrcid} = ${lk_vqcanalidad.vq_canalidadsrcid};;
    relationship: many_to_one
  }

  join: lk_vqestado {
    type: inner
    view_label: "VQ Estado"
    sql_on: ${ft_callin.vq_estadosrcid} = ${lk_vqestado.vq_estadosrcid};;
    relationship: many_to_one
  }

  join: lk_vqfan {
    type: inner
    view_label: "VQ Fan"
    sql_on: ${ft_callin.vq_fansrcid} = ${lk_vqfan.vq_fansrcid};;
    relationship: many_to_one
  }

  join: lk_vqfcr {
    type: inner
    view_label: "VQ FCR"
    sql_on: ${ft_callin.vq_fcrsrcid} = ${lk_vqfcr.vq_fcrsrcid};;
    relationship: many_to_one
  }

  join: lk_vqnegocio {
    type: inner
    view_label: "VQ Negocio"
    sql_on: ${ft_callin.vq_negociosrcid} = ${lk_vqnegocio.vq_negociosrcid};;
    relationship: many_to_one
  }

  join: lk_vqorigen_digital {
    type: inner
    view_label: "VQ Origen Digital"
    sql_on: ${ft_callin.vq_origen_digitalsrcid} = ${lk_vqorigen_digital.vq_origen_digitalsrcid};;
    relationship: many_to_one
  }

  join: lk_vqpcrc1 {
    type: inner
    view_label: "VQ PCRC1"
    sql_on: ${ft_callin.vq_pcrc1_srcid} = ${lk_vqpcrc1.vq_pcrc1_srcid};;
    relationship: many_to_one
  }

  join: lk_vqpcrc2 {
    type: inner
    view_label: "VQ PCRC2"
    sql_on: ${ft_callin.vq_pcrc2_srcid} = ${lk_vqpcrc2.vq_pcrc2_srcid};;
    relationship: many_to_one
  }

  join: lk_vqpcrc3 {
    type: inner
    view_label: "VQ PCRC3"
    sql_on: ${ft_callin.vq_pcrc3_srcid} = ${lk_vqpcrc3.vq_pcrc3_srcid};;
    relationship: many_to_one
  }

  join: lk_vqprograma {
    type: inner
    view_label: "VQ Programa"
    sql_on: ${ft_callin.vq_programasrcid} = ${lk_vqprograma.vq_programasrcid};;
    relationship: many_to_one
  }

  join: lk_vqsegmento {
    type: inner
    view_label: "VQ Segmento"
    sql_on: ${ft_callin.vq_segmentosrcid} = ${lk_vqsegmento.vq_segmentosrcid};;
    relationship: many_to_one
  }

  join: lk_vqtipo_contacto {
    type: inner
    view_label: "VQ Tipo Contacto"
    sql_on: ${ft_callin.vq_tipo_contactosrcid} = ${lk_vqtipo_contacto.vq_tipo_contactosrcid};;
    relationship: many_to_one
  }
}
