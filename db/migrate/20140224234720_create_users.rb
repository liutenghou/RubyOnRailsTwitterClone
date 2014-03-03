class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
    	#id is automatically created
    	#would have to specify if we don't want

    	#column definition
    	#column has data of string->varchar
    	t.column "first_name", :string, :limit=>25
    	t.string "last_name", :limit=>50
    	t.string "email", :default=> "", :null=>false
    	t.string "password", :limit=>40
    	
    	#rails will automatically populate and update
    	#created_at and updated_at: shorthand t.timestamps
    	#t.datetime "created_at"
    	#t.datetime "updated_at"
    	
    	#another format:
    	#t.type "name", options
    	#where column datatype:
    	#binary, boolean, date, datetime, decimal, float
    	#integer, string, text, time
    	#options:
    	#:limit => size
    	#: default => value
    	#: null => true/false
    	#: precision => number
    	#: scale => number

    	t.timestamps
    end
  end

  def down
  	drop_table :users
  end
end
