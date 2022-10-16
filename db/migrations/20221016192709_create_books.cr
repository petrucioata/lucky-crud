class CreateBooks::V20221016192709 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Book) do
      primary_key id : Int64
      add_timestamps
      add title : String
      add year : Int16
      add_belongs_to author : Author, on_delete: :cascade
    end
  end

  def rollback
    drop table_for(Book)
  end
end
