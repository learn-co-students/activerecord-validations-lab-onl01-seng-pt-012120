class Author < ActiveRecord::Base

    # create_table "authors", force: :cascade do |t|
    #     t.string   "name"
    #     t.string   "phone_number"
    #     t.datetime "created_at",   null: false
    #     t.datetime "updated_at",   null: false
    #   end


    validates :name, presence: true, uniqueness: true
    validates :phone_number, length: { minimum: 10 }
    
end
