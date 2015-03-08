class API < Grape::API
  prefix 'api'
  format :json
  mount Orrangette::Test
end
