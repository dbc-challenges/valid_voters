class CreateInitialSchema < ActiveRecord::Migration
  def change
    create_table :ballots do |t|

      t.timestamps
    end

    create_table :contests do |t|

      t.timestamps
    end

    create_table :candidates do |t|

      t.timestamps
    end


    create_table :voters do |t|

      t.timestamps
    end

    create_table :votes do |t|

      t.timestamps
    end
  end
end
