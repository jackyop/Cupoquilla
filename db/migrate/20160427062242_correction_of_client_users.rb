class CorrectionOfClientUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
      t.change :client, :integer, default:0
    end
  end
end
