class ChangeAddSurnameToTickets < ActiveRecord::Migration[5.0]
  def change
  	 add_column :tickets, :surname, :string
  end
end
