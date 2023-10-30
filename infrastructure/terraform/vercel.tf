data "vercel_project_directory" "spacex" {
  path = "../../spacex-front" # path.module not working
}

resource "vercel_project" "spacex" {
  name      = "spacex"
  framework = "nextjs"
}

resource "vercel_deployment" "spacex" {
  project_id  = vercel_project.spacex.id
  files       = data.vercel_project_directory.spacex.files
  path_prefix = data.vercel_project_directory.spacex.path
  production  = var.is_production
}