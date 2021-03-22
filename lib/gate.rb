class Gate
  # initializeメソッドを定義して引数として駅の名前を受け取れるようにする
  def initialize(name)
    @name = name 
  end
  
  def enter(ticket)
    ticket.stamp(@name)
    
  end 
  
  def exit(ticket)
    
  end
end
