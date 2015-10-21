require 'support/database_helper'

initialize_database do

  create_table :people do |t|
    t.string :first_name
    t.string :age
    t.string :favorite_color
    t.string :last_name
    t.string :soccer_team
  end
	add_reference :people, :parent, index: true

  create_table :toys do |t|
    t.references 	:person, index: true
    t.boolean 		:friendly
    t.string 			:material
    t.string 			:color
    t.string 			:brand
  end
	add_foreign_key :toys, :people

  create_table :shoes do |t|
    t.references 	:person, index: true
    t.boolean 		:sneakers
    t.integer 		:size
    t.string 			:brand
  end
	add_foreign_key :shoes, :people

  create_table :pictures do |t|
    t.references 	:imageable, polymorphic: true, index: true
    t.string 			:url
    t.string			:place
  end


end