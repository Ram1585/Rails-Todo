class TaskDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      id: {source: "Task.id"},
      task_title: {source: "Task.task_title"},
      created_at: {source: "Task.created_at"}
    }
  end

  def data
    i=0
    records.map do |record|
      {
        id: i+=1,
        task_title: record.task_title,
        created_at: record.created_at
      }
    end
  end

  def get_raw_records
    Task.all
  end

end
