module Orrangette
  class Test < Grape::API
    # versionは:headerや、:paramなどもあり
#    version 'v1', using: :path, vendor: 'orrangette'
    format :json

    desc "ping test"
    get :ping do
      puts 'in ping'
    end
  end
end
