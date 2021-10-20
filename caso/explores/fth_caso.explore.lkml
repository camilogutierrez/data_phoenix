include: "/caso/views/*"

explore: fth_caso {
  from: fth_caso_view
  group_label: "Phoenix"

  join: fth_caso__caso_hito {
    view_label: "Fth Caso: Casohito"
    sql: LEFT JOIN UNNEST(${fth_caso.caso_hito}) as fth_caso__caso_hito ;;
    relationship: one_to_many
  }

  join: fth_caso__usuario {
    view_label: "Fth Caso: Usuario"
    sql: LEFT JOIN UNNEST(${fth_caso.usuario}) as fth_caso__usuario ;;
    relationship: one_to_many
  }

  join: fth_caso__caso_comentarios__comentarios {
    view_label: "Fth Caso: Casocomentarios Comentarios"
    sql: LEFT JOIN UNNEST(${fth_caso.caso_comentarios__comentarios}) as fth_caso__caso_comentarios__comentarios ;;
    relationship: one_to_many
  }
}
