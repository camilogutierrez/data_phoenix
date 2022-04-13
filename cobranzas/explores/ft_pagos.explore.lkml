include: "/cobranzas/views/ft_pagos.view.lkml"

explore: ft_pagos {
  label: "Pagos"
  group_label: "Cobranzas"

  persist_for: "12 hours"

  always_filter: {
    filters: [
                ft_pagos.payment_date: "today"
    ]
  }
}
