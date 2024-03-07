terraform init - inicia
terraform plan - planeja o script criado e vê as mudanças que podem ser aplicadas
terraform apply - aplica as configurações inseridas
terraform validate - valida se as configurações tão ok
terraform fmt - formatar o código deixando no padrão recomendado
terraform plan -out="tfplan.out" - cria novo arquivo para que depois possa ser aplicado
terraform apply "tfplan.out" - aplica as alterações do arquivo em específico
terraform destroy - destrói os recursos