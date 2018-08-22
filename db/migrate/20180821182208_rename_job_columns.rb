class RenameJobColumns < ActiveRecord::Migration[5.2]
  def change
    change_table :jobs do |t|
      t.rename :num_positions_available, :number_of_positions_available
      t.rename :add_info_for_applicants, :additional_info_for_applicants
    end
  end
end
