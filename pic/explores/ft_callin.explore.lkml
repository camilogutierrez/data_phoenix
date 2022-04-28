include: "/pic/views/ft_callin.view.lkml"
include: "/pic/views/lk_*.view.lkml"
include: "/global/views/dm_nomina_d.view.lkml"
include: "/global/views/dm_nomina_m.view.lkml"

explore: ft_callin {
  label: "Call In"
  group_label: "PIC"

  persist_for: "12 hours"

  always_filter: {
    filters:  [
                ft_callin.fecha_ini_llamada_argsrcid: "today",
                ft_callin.dim_vag_tipo: "SEGMENTO_SITIO",
                ft_callin.vagsrcid: "%_QC1S1",
                ft_callin.gvqsrcid: "%_QC1"
              ]
  }

  join: lk_contexto_ivr0800 {
    type: inner
    sql_on: ${ft_callin.contexto_ivr_0800_srcid} = ${lk_contexto_ivr0800.contexto_ivr_0800_srcid};;
    relationship: many_to_one
  }

  join: lk_contexto_ivr0800_opcion {
    type: inner
    sql_on: ${ft_callin.contexto_ivr_0800_opcionsrcid} = ${lk_contexto_ivr0800_opcion.contexto_ivr_0800_opcionsrcid};;
    relationship: many_to_one
  }

  join: lk_contexto_ivr0800_segmento {
    type: inner
    sql_on: ${ft_callin.contexto_ivr_0800_segmentosrcid} = ${lk_contexto_ivr0800_segmento.contexto_ivr_0800_segmentosrcid};;
    relationship: many_to_one
  }

  join: lk_gvq {
    type: inner
    sql_on: ${ft_callin.gvqsrcid} = ${lk_gvq.gvqsrcid};;
    relationship: many_to_one
  }

  join: lk_interaction_type {
    type: inner
    sql_on: ${ft_callin.interaction_typesrcid} = ${lk_interaction_type.interaction_typesrcid};;
    relationship: many_to_one
  }

  join: lk_media_name {
    type: inner
    sql_on: ${ft_callin.media_namesrcid} = ${lk_media_name.media_namesrcid};;
    relationship: many_to_one
  }

  join: lk_tab_agrupador_reporting {
    type: inner
    sql_on: ${ft_callin.tab_agrupador_reportingsrcid} = ${lk_tab_agrupador_reporting.tab_agrupador_reportingsrcid};;
    relationship: many_to_one
  }

  join: lk_tab_consulta_por {
    type: inner
    sql_on: ${ft_callin.tab_consulta_porsrcid} = ${lk_tab_consulta_por.tab_consulta_porsrcid};;
    relationship: many_to_one
  }

  join: lk_tab_contacto {
    type: inner
    sql_on: ${ft_callin.tab_contactosrcid} = ${lk_tab_contacto.tab_contactosrcid};;
    relationship: many_to_one
  }

  join: lk_tab_motivo {
    type: inner
    sql_on: ${ft_callin.tab_motivosrcid} = ${lk_tab_motivo.tab_motivosrcid};;
    relationship: many_to_one
  }

  join: lk_tab_movil {
    type: inner
    sql_on: ${ft_callin.tab_movilsrcid} = ${lk_tab_movil.tab_movilsrcid};;
    relationship: many_to_one
  }

  join: lk_tabpackage {
    type: inner
    sql_on: ${ft_callin.tabpackagesrcid} = ${lk_tabpackage.tabpackagesrcid};;
    relationship: many_to_one
  }

  join: lk_tab_que_tiene {
    type: inner
    sql_on: ${ft_callin.tab_que_tienesrcid} = ${lk_tab_que_tiene.tab_que_tienesrcid};;
    relationship: many_to_one
  }

  join: lk_tab_resultado {
    type: inner
    sql_on: ${ft_callin.tab_resultadosrcid} = ${lk_tab_resultado.tab_resultadosrcid};;
    relationship: many_to_one
  }

  join: lk_tab_tipo_de_llamado {
    type: inner
    sql_on: ${ft_callin.tab_tipo_de_llamadosrcid} = ${lk_tab_tipo_de_llamado.tab_tipo_de_llamadosrcid};;
    relationship: many_to_one
  }

  join: lk_tabulacion1 {
    type: inner
    sql_on: ${ft_callin.tabulacion1_srcid} = ${lk_tabulacion1.tabulacion1_srcid};;
    relationship: many_to_one
  }

  join: lk_tabulacion2 {
    type: inner
    sql_on: ${ft_callin.tabulacion2_srcid} = ${lk_tabulacion2.tabulacion2_srcid};;
    relationship: many_to_one
  }

  join: lk_tabulacion3 {
    type: inner
    sql_on: ${ft_callin.tabulacion3_srcid} = ${lk_tabulacion3.tabulacion3_srcid};;
    relationship: many_to_one
  }

  join: lk_tabulacion4 {
    type: inner
    sql_on: ${ft_callin.tabulacion4_srcid} = ${lk_tabulacion4.tabulacion4_srcid};;
    relationship: many_to_one
  }

  join: lk_vag {
    type: inner
    sql_on: ${ft_callin.vagsrcid} = ${lk_vag.vagsrcid};;
    relationship: many_to_one
  }

  join: lk_vagagrupador4 {
    type: inner
    sql_on: ${ft_callin.vag_agrupador4_srcid} = ${lk_vagagrupador4.vag_agrupador4_srcid};;
    relationship: many_to_one
  }

  join: lk_vagcanalidad {
    type: inner
    sql_on: ${ft_callin.vag_canalidadsrcid} = ${lk_vagcanalidad.vag_canalidadsrcid};;
    relationship: many_to_one
  }

  join: lk_vagfan {
    type: inner
    sql_on: ${ft_callin.vag_fansrcid} = ${lk_vagfan.vag_fansrcid};;
    relationship: many_to_one
  }

  join: lk_vagnegocio {
    type: inner
    sql_on: ${ft_callin.vag_negociosrcid} = ${lk_vagnegocio.vag_negociosrcid};;
    relationship: many_to_one
  }

  join: lk_vagpcrc1 {
    type: inner
    sql_on: ${ft_callin.vag_pcrc1_srcid} = ${lk_vagpcrc1.vag_pcrc1_srcid};;
    relationship: many_to_one
  }

  join: lk_vagpcrc2 {
    type: inner
    sql_on: ${ft_callin.vag_pcrc2_srcid} = ${lk_vagpcrc2.vag_pcrc2_srcid};;
    relationship: many_to_one
  }

  join: lk_vagpcrc3 {
    type: inner
    sql_on: ${ft_callin.vag_pcrc3_srcid} = ${lk_vagpcrc3.vag_pcrc3_srcid};;
    relationship: many_to_one
  }

  join: lk_vagprograma {
    type: inner
    sql_on: ${ft_callin.vag_programasrcid} = ${lk_vagprograma.vag_programasrcid};;
    relationship: many_to_one
  }

  join: lk_vagpropiedad {
    type: inner
    sql_on: ${ft_callin.vag_propiedadsrcid} = ${lk_vagpropiedad.vag_propiedadsrcid};;
    relationship: many_to_one
  }

  join: lk_vagsegmento {
    sql_on: ${ft_callin.vag_segmentosrcid} = ${lk_vagsegmento.vag_segmentosrcid};;
    relationship: many_to_one
  }

  join: lk_vagsitio {
    type: inner
    sql_on: ${ft_callin.vag_sitiosrcid} = ${lk_vagsitio.vag_sitiosrcid};;
    relationship: many_to_one
  }

  join: lk_vagsub_sitio {
    type: inner
    sql_on: ${ft_callin.vag_sub_sitiosrcid} = ${lk_vagsub_sitio.vag_sub_sitiosrcid};;
    relationship: many_to_one
  }

  join: lk_vagtipo_contacto {
    type: inner
    sql_on: ${ft_callin.vag_tipo_contactosrcid} = ${lk_vagtipo_contacto.vag_tipo_contactosrcid};;
    relationship: many_to_one
  }

  join: lk_vq {
    type: inner
    sql_on: ${ft_callin.vqsrcid} = ${lk_vq.vqsrcid};;
    relationship: many_to_one
  }

  join: lk_vqagrupador2 {
    type: inner
    sql_on: ${ft_callin.vq_agrupador2_srcid} = ${lk_vqagrupador2.vq_agrupador2_srcid};;
    relationship: many_to_one
  }

  join: lk_vqagrupador3 {
    type: inner
    sql_on: ${ft_callin.vq_agrupador3_srcid} = ${lk_vqagrupador3.vq_agrupador3_srcid};;
    relationship: many_to_one
  }

  join: lk_vqcanalidad {
    type: inner
    sql_on: ${ft_callin.vq_canalidadsrcid} = ${lk_vqcanalidad.vq_canalidadsrcid};;
    relationship: many_to_one
  }

  join: lk_vqestado {
    type: inner
    sql_on: ${ft_callin.vq_estadosrcid} = ${lk_vqestado.vq_estadosrcid};;
    relationship: many_to_one
  }

  join: lk_vqfan {
    type: inner
    sql_on: ${ft_callin.vq_fansrcid} = ${lk_vqfan.vq_fansrcid};;
    relationship: many_to_one
  }

  join: lk_vqfcr {
    type: inner
    sql_on: ${ft_callin.vq_fcrsrcid} = ${lk_vqfcr.vq_fcrsrcid};;
    relationship: many_to_one
  }

  join: lk_vqnegocio {
    type: inner
    sql_on: ${ft_callin.vq_negociosrcid} = ${lk_vqnegocio.vq_negociosrcid};;
    relationship: many_to_one
  }

  join: lk_vqorigen_digital {
    type: inner
    sql_on: ${ft_callin.vq_origen_digitalsrcid} = ${lk_vqorigen_digital.vq_origen_digitalsrcid};;
    relationship: many_to_one
  }

  join: lk_vqpcrc1 {
    type: inner
    sql_on: ${ft_callin.vq_pcrc1_srcid} = ${lk_vqpcrc1.vq_pcrc1_srcid};;
    relationship: many_to_one
  }

  join: lk_vqpcrc2 {
    type: inner
    sql_on: ${ft_callin.vq_pcrc2_srcid} = ${lk_vqpcrc2.vq_pcrc2_srcid};;
    relationship: many_to_one
  }

  join: lk_vqpcrc3 {
    type: inner
    sql_on: ${ft_callin.vq_pcrc3_srcid} = ${lk_vqpcrc3.vq_pcrc3_srcid};;
    relationship: many_to_one
  }

  join: lk_vqprograma {
    type: inner
    sql_on: ${ft_callin.vq_programasrcid} = ${lk_vqprograma.vq_programasrcid};;
    relationship: many_to_one
  }

  join: lk_vqsegmento {
    type: inner
    sql_on: ${ft_callin.vq_segmentosrcid} = ${lk_vqsegmento.vq_segmentosrcid};;
    relationship: many_to_one
  }

  join: lk_vqtipo_contacto {
    type: inner
    sql_on: ${ft_callin.vq_tipo_contactosrcid} = ${lk_vqtipo_contacto.vq_tipo_contactosrcid};;
    relationship: many_to_one
  }

  join: dm_nomina_d {
    view_label: "Nomina"
    type: left_outer
    sql_on: UPPER(${ft_callin.agente_rp}) = ${dm_nomina_d.nomina_d_usuario_teco} ;;
    relationship: many_to_one
    sql_where: ${dm_nomina_d.nomina_d_usuario_teco} != '' ;;
  }

  join: dm_nomina_m {
    view_label: "Nomina Cierre"
    type: left_outer
    sql_on: UPPER(${ft_callin.agente_rp}) = ${dm_nomina_m.nomina_m_usuario_teco} ;;
    relationship: many_to_one
    sql_where: ${dm_nomina_m.nomina_m_usuario_teco} != '' ;;
  }
}
