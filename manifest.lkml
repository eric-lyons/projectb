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
  id: "matrix-viz-example"
  url: "https://rawcdn.githack.com/looker/visualization-api-examples/3842430c5addb7fdf016a67fd063484c0f0a7d2a/examples/matrix/matrix.js"
  label: "Matrix Viz"
  dependencies: ["https://rawcdn.githack.com/looker/visualization-api-examples/3842430c5addb7fdf016a67fd063484c0f0a7d2a/examples/common/utils.js", "https://rawcdn.githack.com/looker/visualization-api-examples/3842430c5addb7fdf016a67fd063484c0f0a7d2a/examples/common/d3.v4.js"]
}

#hi

# The project to import
local_dependency: {
  project: "imported_lool"
}
