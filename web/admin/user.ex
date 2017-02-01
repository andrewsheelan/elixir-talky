defmodule Talky.ExAdmin.User do
  use ExAdmin.Register

  register_resource Talky.User do
    index do
      selectable_column()

      column :id
      column :email
      actions false       # display the default actions column
    end
  end
end
