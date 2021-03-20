require_relative "boxer"


p1 = Player.new("bilbo")
p2 = Player.new("computer")

while p1.health > 0 && p2.health > 0
    p1_attack = p1.throw_punch
    p2_defense = p2.auto_defend
    
    if p1_attack != p2_defense
        p2.lose_health(p1.attack_amt)
    end

    p2_attack = p2.auto_punch
    p1_defense = p1.defend_punch
    
    if p1_attack != p2_defense
        p1.lose_health(p2.attack_amt)
    end

    puts
    puts "Player 1 Health"
    puts p1.health
    puts 
    puts p2.health
    puts "Player 2 Health"
    puts "_______________"

    p p1.name + " Is the loser" if p1.health <= 0
    p p2.name + " Is the loser" if p2.health <= 0
end

