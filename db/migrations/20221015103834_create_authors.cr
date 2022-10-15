class CreateAuthors::V20221015103834 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Author) do
      primary_key id : Int64
      add_timestamps
      add first_name : String
      add last_name : String
    end
  end

  def rollback
    drop table_for(Author)
  end
end
