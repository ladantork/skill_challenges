class ToDo
  def initialize
      @tasks = []
  end

  def add(task)
      @tasks << task
  end

  def complete(task)
      if @tasks.include? task
        return @tasks.delete(task)
      else
        fail "No such a task."
      end
  end
    
  def list
      return @tasks
  end

end