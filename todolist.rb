class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end

class TodoList
  attr_accessor :title, :todos

  def initialize(title)
    @title = title
    @todos = []
  end

  # rest of class needs implementation

  def add(item)
    if item.instance_of?(Todo)
      self.todos << item
    else
      raise TypeError, "Can only add Todo objects"
    end
  end
  alias_method :<<, :add

  def size
    todos.size
  end

  def first
    todos.first
  end

  def last
    todos.last
  end

  def item_at(index)
    todos.fetch(index)
  end

  def mark_done_at(index)
    todos.fetch(index).done!
  end

  def mark_undone_at(index)
    todos.fetch(index).undone!
  end

  # Deleting from the list

  def shift
    todos.shift
  end

  def pop
    todos.pop
  end

  def remove_at(index)
    todos.delete_at(index) unless todos.fetch(index) == IndexError
  end

  # Outputting the list

  def to_s
    puts "---- #{title} ----\n"
    todos.each { |item| puts item }
  end

  def to_a
    todos
  end

  # Each

  def each
    counter = 0

    while counter < todos.size
      yield todos[counter]
      counter += 1
    end

    todos
  end

end