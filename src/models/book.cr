class Book < BaseModel
  table do
    column title : String
    column year : Int16
    belongs_to author : Author
  end
end
