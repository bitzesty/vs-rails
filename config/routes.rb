VsRails::Engine.routes.draw do
  post "/callback", to: "scans#callback"
end
