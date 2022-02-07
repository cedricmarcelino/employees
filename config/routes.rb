Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/employees", to: "employees#index", as: "show_all_employees"
  get "/employees/new", to: "employees#new", as: "new_employee"
  get "/employees/:id", to: "employees#show", as: "show_employee"
  post "/employees", to: "employees#create"
  get "/employees/:id/edit", to: "employees#edit", as: "edit_employee"
  put "/employees/:id", to: "employees#update", as: "update_employee"
  delete "/employees/:id", to: "employees#destroy", as: "delete_employee"
end
