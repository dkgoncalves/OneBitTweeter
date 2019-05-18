# Utilização da gem will_paginate para paginação
# o will_paginate por padrão não permite recber array, por este motivo,
# já fazemos esta configuração para que ele permita o recebimento de arrays
require 'will_paginate/array'
WillPaginate.per_page = 15
