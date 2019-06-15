Comandos para rodar o Knock:
rails generate knock:token_controller user
rails generate knock:install

Em configurações deve-se acrescentar os seguintes comandos:
config.token_secret_signature_key = -> { Rails.application.credentials.read }

No user_token_controller deve-se acrescentar o seguinte skip:
skip_before_action :verify_authenticity_token
