## Comandos para rodar o Knock:
 - rails generate knock:token_controller user
 - rails generate knock:install

## Em configurações deve-se acrescentar os seguintes comandos:
 - config.token_secret_signature_key = -> { Rails.application.credentials.read }

## No user_token_controller deve-se acrescentar o seguinte skip:
 - skip_before_action :verify_authenticity_token

## Comando para gerar um Serializer
 - rails g serializer api/v1/user

## Configurando as imagens na api
 - Para adicionar imagens na api, usamos as seguintes gems:
gem 'carrierwave', gem 'carrierwave-base64', gem 'cloudinary'.
 - O comando para gerar uma classe que irá controlar as imagens é:
exec rails generate uploader Photo
 - Após configurar sua classe, entre no site `cloudnary.com`, crie uma conta
 e baixe o arquivo cloudnary.yml disponível no dashboard, logo após, adicone
 o arquivo na pasta config do seu app, isto fará que o cloudnary se encarregue
 de subir suas fotos direto para a nuvem, disponibilizando uma url para acesso. 
