class CreateInvitationTypes < ActiveRecord::Migration
  def change
    create_table :invitation_types do |t|
      t.string :name, null:false

      t.timestamps null: false
    end
  end
end
