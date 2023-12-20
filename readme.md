
# Terraform Infra Project

<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/yaratavares/Infra-Terraform?color=%2304D361">
  <img alt="Repository size" src="https://img.shields.io/github/repo-size/yaratavares/Infra-Terraform">
  <a href="https://github.com/yaratavares/Infra-Terraform/commits/main">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/yaratavares/Infra-Terraform">
  </a>
</p>

## Projeto

Este projeto foi criado com o objetivo de praticar os comandos básicos e intermediários do Terraform. Aqui estão os principais comandos utilizados e um resumo do que este projeto contém:

---

### Comandos Comuns

- `terraform init`: Inicia o Terraform no diretório do projeto.
- `terraform plan`: Planeja as alterações definidas no script e mostra as mudanças que serão aplicadas.
- `terraform apply`: Aplica as configurações definidas no script.
- `terraform validate`: Valida se as configurações estão corretas e prontas para serem aplicadas.
- `terraform fmt -recursive`: Formata o código Terraform de acordo com o padrão recomendado.
- `terraform plan -out="tfplan.out"`: Cria um arquivo de plano para posterior aplicação.
- `terraform apply "tfplan.out"`: Aplica as alterações definidas no arquivo de plano específico.
- `terraform destroy`: Destrói os recursos provisionados.

### Comandos de Variáveis

- `TF_VAR_aws_profile=tf01 terraform plan`: Define uma variável de ambiente durante a execução.
- `terraform plan -var="aws_profile=tf01" -var="instance_type=t2.micro"`: Define variáveis durante a execução, que podem até mesmo sobrescrever as variáveis do arquivo.
- `terraform plan -var-file="prod.tfvars" -auto-approve`: Utiliza um arquivo de variáveis durante o planejamento, com aprovação automática.

### Outros Comandos Úteis

- `terraform show`: Mostra o estado atual dos recursos de uma forma mais legível.
- `terraform console`: Abre um console interativo para explorar os objetos Terraform.

### Configuração de Backend

- `terraform init -backend=true -backend-config="backend.hcl"`: Inicializa o Terraform com a configuração do backend definida no arquivo `backend.hcl`.

### Importação de Recursos

- `terraform import aws_s3_bucket.remote-state tfstate-381492073784`: Importa um recurso existente para gerenciamento pelo Terraform.

---

## Conteúdo do Projeto

Dentro deste projeto, você encontrará:

- Utilização de **data sources**
- Provisionamento de um **bucket S3**
- Criação de instâncias **EC2**
- Gerenciamento de **usuários IAM**
- Utilização de funções como **for each**, **for** e **splat operator**
- Utilização de **data source**
- Utilização de **funções internas** e muito mais.

---

## 🧜‍♀️ Autora

<a href="https://www.linkedin.com/in/yaracristinatavares/" >
 <img style="border-radius: 50%" src="https://avatars.githubusercontent.com/u/91642311?v=4" width="100px;" alt="foto"/>
 <p>Yara Tavares 🚀</p>
</a>