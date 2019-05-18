# Utilização do banco 'redis' para utilização de tradings topcs
# Configurando o redis aqui, desta forma, a gente cria um módulo que poderá ser
# acessado em todo o app
require 'redis'

module DataStore
  def self.redis
    @redis ||= Redis.new(url: 'redis://redis:6379/0')
  end
end
