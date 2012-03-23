class AddCompanyToLogins < ActiveRecord::Migration
  def change
    add_column :logins, :company, :string

  end
end
