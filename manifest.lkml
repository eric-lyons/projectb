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

## TEST FOR STEPHEN
visualization: {
  id: "matrix_heatmap"
  url: "https://github.com/looker/visualization-api-examples/blob/master/examples/matrix/matrix.js"
  label: "Matrix Heatmap"
  dependencies: ["https://github.com/looker/visualization-api-examples/blob/master/examples/common/utils.js", "https://github.com/looker/visualization-api-examples/blob/master/examples/common/d3.v4.js"]
}

#hi

# The project to import
local_dependency: {
  project: "imported_lool"
}
