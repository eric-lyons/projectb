project_name: "eric_likes_bears"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
constant: connect {
  value: "snowflakelooker"
  export: override_required



}

visualization: {
  id: "venn_diagram"
  file: "eric_vis.js"
  label: "ERIC"
}



# The project to import
local_dependency: {
  project: "imported_lool"
}
