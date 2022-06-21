include: "/cobranzas/views/ft_pagos.view.lkml"

explore: ft_pagos {
  label: "Pagos"
  group_label: "Cobranzas"

  always_filter: {
    filters: [ft_pagos.payment_date_date: "today"]
  }
}
