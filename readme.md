
- common commands
terraform init - inicia
terraform plan - planeja o script criado e vê as mudanças que podem ser aplicadas
terraform apply - aplica as configurações inseridas
terraform validate - valida se as configurações tão ok
terraform fmt -recursive - formatar o código deixando no padrão recomendado
terraform plan -out="tfplan.out" - cria novo arquivo para que depois possa ser aplicado
terraform apply "tfplan.out" - aplica as alterações do arquivo em específico
terraform destroy - destrói os recursos

- variables commands
TF_VAR_aws_profile=tf01 terraform plan - assim ele vai ler a variável em tempo de execução
terraform plan -var="aws_profile=tf01" -var="instance_type=t2.micro" - isso pode até sobrescrever as variavéis do arquivo
terraform plan -var-file="prod.tfvars" -auto-aprove


terraform show - mostra o tfstate de uma forma mais facil de ser lida
terraform console - abre o console conseeguimos achar os objetos de maneira mais facil

terraform init -backend=true -backend-config="backend.hcl"