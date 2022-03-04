include: "/cobranzas/views/ft_pagos.view.lkml"

explore: ft_pagos {
  label: "Pagos"
  group_label: "Cobranzas"

  persist_for: "12 hours"

  always_filter: {
    filters: [
                ft_pagos.payment_date_date: "today",
                ft_pagos.invoice_type_inf: "BLL",
                ft_pagos.ind_reversal_payment: "0",
                ft_pagos.acct_payment_mode: "1"
    ]
  }
}
