Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://localhost:8000"
    resource "*", headers: :any, metods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end
 
  allow do
    origins "https://home-school-api.herokuapp.com"
    resource "*", headers: :any, metods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end
end