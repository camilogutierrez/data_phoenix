include: "/caso/views/*"
include : "/aleph/views/lk_caso_*.view.lkml"

explore: caso_historico {
  from: fth_caso_view
  group_label: "Phoenix"

  join: fth_caso__caso_hito {
    view_label: "Caso Hito"
    sql: LEFT JOIN UNNEST(${caso_historico.caso_hito}) as fth_caso__caso_hito ;;
    relationship: one_to_many
  }

  join: fth_caso__usuario {
    view_label: "Usuario"
    sql: LEFT JOIN UNNEST(${caso_historico.usuario}) as fth_caso__usuario ;;
    relationship: one_to_many
  }

  join: fth_caso__comentarios {
    view_label: "Caso Comentarios"
    sql: LEFT JOIN UNNEST(${caso_historico.comentarios}) as fth_caso__comentarios ;;
    relationship: one_to_many
  }

  join: lk_caso_prioridad {
    view_label: "Caso Prioridad"
    sql_on: ${caso_historico.caso_prioridad_sk} = ${lk_caso_prioridad.caso_prioridad_sk};;
    relationship: many_to_one
  }

  join: lk_caso_tipo {
    view_label: "Caso Tipo"
    sql_on: ${caso_historico.caso_tipo_sk} = ${lk_caso_tipo.caso_tipo_sk};;
    relationship: many_to_one
  }

  join: lk_caso_sub_tipo {
    view_label: "Caso SubTipo"
    sql_on: ${caso_historico.caso_sub_tipo_sk} = ${lk_caso_sub_tipo.caso_sub_tipo_sk};;
    relationship: many_to_one
  }

  join: lk_caso_canal {
    view_label: "Caso Canal"
    sql_on: ${caso_historico.caso_canal_cierre_sk}_sk} = ${lk_caso_canal.caso_canal_sk};;
    relationship: many_to_one
  }

  join: lk_caso_estado {
    view_label: "Caso Estado"
    sql_on: ${caso_historico.caso_estado_sk} = ${lk_caso_estado.caso_estado_sk};;
    relationship: many_to_one
  }

  join: lk_caso_motivo {
    view_label: "Caso Motivo"
    sql_on: ${caso_historico.caso_motivo_sk} = ${lk_caso_motivo.caso_motivo_sk};;
    relationship: many_to_one
  }

  #TODO: CasoResultadoRetencion - No existe el campo SK en PUB

  join: lk_caso_tipo_item {
    view_label: "Caso Tipo Item"
    sql_on: ${caso_historico.caso_tipo_item_sk} = ${lk_caso_tipo_item.caso_tipo_item_sk};;
    relationship: many_to_one
  }

  #TODO: Falta tabla en BQ - CasoTipoRecurrencia
  #TODO: Falta tabla en BQ - CasoMotivoContacto

  join: lk_caso_horas_negocio {
    view_label: "Caso Horas Negocio"
    sql_on: ${caso_historico.caso_horas_negocio_sk} = ${lk_caso_horas_negocio.caso_horas_negocio_sk};;
    relationship: many_to_one
  }

  join: lk_caso_sub_motivo_baja {
    view_label: "Caso SubMotivo Baja"
    sql_on: ${caso_historico.caso_sub_motivo_baja_sk} = ${lk_caso_sub_motivo_baja.caso_sub_motivo_baja_sk};;
    relationship: many_to_one
  }

  #TODO: Falta tabla en BQ - CasoMotivoRechazoPortacion

}
