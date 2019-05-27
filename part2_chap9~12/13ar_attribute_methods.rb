require 'active_record'
ActiveRecord::Base.establish_connection :adapter => "sqlite3", :database => "dbfile"

ActiveRecord::Base.connection.create_table :tasks do |t|
  t.string :description
  t.boolean :completed
end

class Task < ActiveRecord::Base; end

task = Task.new
task.description = 'ガレージの掃除'
task.completed = true
task.save

task.description    #=> "ガレージの掃除"
task.completeed?    #=> true

my_query = "tasks.*, (description like '%garage%') as heavy_job"
task = Task.fine(:first, :select => my_query)
task.heavy_job?   #=> true