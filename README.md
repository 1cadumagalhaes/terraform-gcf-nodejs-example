# Exemplo de Deploy de Google Cloud Function usando Terraform

Este projeto é um exemplo de como realizar o deploy de uma Google Cloud Function em Node.js usando o Terraform. A função possui um acionador HTTP.

## Pré-requisitos

- Node.js 18 instalado
- Conta do Google Cloud Platform com autenticação configurada
- Terraform instalado

## Configuração

1. Clone este repositório para a sua máquina local:

```bash
git clone https://github.com/1cadumagalhaes/terraform-gcf-nodejs-example
```

2. Autentique-se na sua conta do Google Cloud Platform:

```bash
gcloud auth application-default login
```

## Implantação

1. Acesse a pasta `terraform/dev`:

```bash
cd terraform/dev
```

2. Inicialize o Terraform:

```bash
terraform init
```

3. Planeje a implantação:

```bash
terraform plan
```

4. Execute a implantação:

```bash
terraform apply
```

5. Aguarde o processo de implantação ser concluído. Uma vez finalizado, o Terraform exibirá as informações sobre a função implantada, incluindo a URL do acionador HTTP.

## Destruição

Se você deseja remover a infraestrutura implantada, siga estas etapas:

1. Execute o comando para destruir a infraestrutura:

```bash
terraform destroy
```

2. Confirme a ação digitando "yes" quando solicitado.

Isso irá remover todos os recursos implantados pela função, incluindo o acionador HTTP.

## Notas adicionais

- Certifique-se de que possui as permissões adequadas na sua conta do Google Cloud Platform para criar, modificar e excluir os recursos necessários.
- Personalize a função de acordo com suas necessidades antes de realizar o deploy, modificando o código e a configuração do Terraform, se necessário.
- Consulte a documentação oficial do Google Cloud Platform e do Terraform para obter mais informações sobre como implantar funções na nuvem.
