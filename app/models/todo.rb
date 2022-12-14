class Todo < ActiveRecord::Base
    belongs_to :user, optional: true

    def due_today?
        due_date == Date.today
    end

    def self.overdue
        all.where("due_date < ?", Date.today)
    end

    def self.due_today
        all.where("due_date = ?", Date.today)
    end

    def self.due_later
        all.where("due_date > ?", Date.today)
    end

    def self.completed
        all.where(completed: true)
    end

    def self.important
        all.where(important: true)
    end

    def self.show_list
        puts "My Todo List\n\n"
        puts "Overdue\n"
        puts overdue.show_list
        puts "\n\n"

        puts "Due Today\n"
        puts due_today.showlist
        puts "\n\n"

        puts "Due Later\n"
        puts due_later.showlist
        puts "\n\n"
    end

    def self.mark_as_complete!(id)
        todo = find(id)
        todo.completed = true
        todo.save!
        todo
    end

    def self.mark_as_important!(id)
        todo = find(id)
        todo.important = true
        todo.save!
        todo
    end
    
end