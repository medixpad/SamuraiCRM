Rails.application.routes.draw do
  mount Samurai::Core::Engine, at: "/", as: "samurai"
end
