include: "/caso/views/*"

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
}
