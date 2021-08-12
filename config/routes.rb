Rails.application.routes.draw do
  # get 'clients/by_name'
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
          get 'by_date/:date', to: 'uf#by_date'
          get 'by_name/:name', to: 'clients#by_name'
        end
      end
end


