class AuthorSerializer < BaseSerializer
  def initialize(@author : Author)
  end

  def render
    {
      id: @author.id,
      first_name: @author.first_name,
      last_name: @author.last_name
    }
  end
end
