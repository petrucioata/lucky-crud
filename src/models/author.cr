class Author < BaseModel
  table do
    column first_name : String
    column last_name : String
    has_many_books : Book
  end
end
