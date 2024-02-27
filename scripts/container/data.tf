data "template_file" "json" {
  template = file("templates/template.json.tpl")

  vars = {
    age    = 26
    eye    = "Brown"
    name   = "Yara"
    gender = "Female"
  }
}


data "archive_file" "json" {
  type        = local.file_ext
  output_path = "${path.module}/files/${random_pet.object_name.id}.${local.file_ext}"

  source {
    content  = data.template_file.json.rendered
    filename = "${random_pet.object_name.id}.json"
  }

}
