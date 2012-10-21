class CreateInitialSchema < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      # t.datetime :election_on, :null => false
      t.timestamps
    end

    create_table :contests do |t|
      # t.integer :ballot_id
      t.timestamps
    end

    create_table :candidates do |t|
      # t.string :name
      # t.integer :contest_id
      t.timestamps
    end


    create_table :voters do |t|
      # t.string :ssn
      t.timestamps
    end

    create_table :votes do |t|
      # t.integer :voter_id
      # t.integer :contest_id
      # t.integer :candidate_id
      t.timestamps
    end
  end
end
