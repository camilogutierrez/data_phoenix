- dashboard: test_casos_dash
  title: Test Casos DASH
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Cant Casos
    name: Cant Casos
    model: Caso
    explore: caso_historico
    type: looker_column
    fields: [caso_historico.fecha_entidad_date, caso_historico.caso_canal_cierre_nombre,
      caso_historico.count]
    filters:
      caso_historico.fecha_entidad_date: 90 days
    sorts: [caso_historico.fecha_entidad_date desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row:
    col:
    width:
    height:
