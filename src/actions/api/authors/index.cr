class Api::Authors::Index < ApiAction
  include Api::Auth::SkipRequireAuthToken

  get "/api/authors" do
    authors = AuthorQuery.new
    json(AuthorSerializer.for_collection(authors), HTTP::Status::OK)
  end
end
