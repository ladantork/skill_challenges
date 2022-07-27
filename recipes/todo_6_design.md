# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.



## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class ToDo
  def initialize(name) # name is a string
    # ...
  end

  def add(task) # task is a string representig a task
    # No return value
  end

  def list # a list of task added  a string
    # expect the completed ones
  end

  def complete(task) # representing a task to mark complete
  # returns nothing
  # fails if the task doesn't exist
    
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todo = todo.new
todo.list  # []
# 2
todo = todo.new
todo.add("Go gym")
todo.list # ["Go gym"]

# 3
todo = todo.new
todo.add("Go gym")
todo.add("Wash your hair")
todo.list # ["Go gym, Wash your hair"]

# 4
todo = todo.new
todo.add("Go gym")
todo.add("Wash your hair")
todo.complete("Go gym")
todo.list # ["Wash your hair"]

# 5
todo = todo.new
todo.add("Go gym")
todo.complete("Wash dishes")
todo.list # fails "No such a task."

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

