class Api::Authors::Create < ApiAction
  post "/api/authors" do
    author = SaveAuthor.create!(params)

    if author
      json(AuthorSerializer.new(author), HTTP::Status::CREATED)
    else
      head :bad_request
    end
  end
end
