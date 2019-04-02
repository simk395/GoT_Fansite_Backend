class CreateCharVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :char_votes do |t|

      t.timestamps
    end
  end
end
