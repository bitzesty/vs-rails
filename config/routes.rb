VsRails::Engine.routes.draw do
  post "/callback/:id", to: "scan#callback"
end
