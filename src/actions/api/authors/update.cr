class Api::Authors::Update < ApiAction
  put "/api/authors/:author_id" do
    author = AuthorQuery.new.find(author_id)

    if author
      updated_author = SaveAuthor.update!(author, params)

      if updated_author
        json(AuthorSerializer.new(updated_author), HTTP::Status::OK)
      else
        head :bad_request
      end
    else
      head :not_found
    end
  end
end
