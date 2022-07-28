include: "/contabilidad/views/ft_general_ledger.view.lkml"

explore: ft_general_ledger {
  label: "General Ledger"
  group_label: "Contabilidad"

  always_filter: {
    filters:[ft_general_ledger.cr_accounting_date: "today"]
    }
}
