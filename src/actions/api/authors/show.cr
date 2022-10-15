class Api::Authors::Show < ApiAction
  include Api::Auth::SkipRequireAuthToken

  get "/api/authors/:author_id" do
    author = AuthorQuery.new.find(author_id)

    if author
      json(AuthorSerializer.new(author), HTTP::Status::OK)
    else
      head :not_found
    end
  end
end
