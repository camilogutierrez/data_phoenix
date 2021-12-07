include: "/aleph/views/aleph.view.lkml"
include: "/aleph/others/aleph_datagroups.lkml"

explore: aleph {
  from: aleph_view
  label: "ALEPH"
  group_label: "Phoenix"
  description: "Lista las entidades asociadas al proceso de normalización denominado ALEPH
  con sus correspondientes elementos y valores preestablecidos."

persist_with: aleph_default_dg
}
