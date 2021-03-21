require_relative "boxer"


p1 = Player.new("bilbo")
p2 = Player.new("computer")

system("clear")
puts "WELCOME TO"
sleep(3)
system("clear")
puts "PUNCH OUT"
sleep(3)
system("clear")

puts "What is your name?"
name_select = gets.chomp.to_s
p1.name=(name_select)
sleep(2)
puts "Welcome " + p1.name
puts "   __O__"
puts "     |"
puts "    | |"
sleep(2)
system("clear")


while p1.health > 0 && p2.health > 0
    puts
    puts "Player 1 Health"
    puts p1.health
    puts 
    puts p2.health
    puts "Player 2 Health"
    puts "_______________"
    sleep(2)
    system("clear")

    puts p1.name + " Pick Your Punch"
    sleep(1)
    puts "Pick a number"
    puts "1: High"
    puts "2: Mid"
    puts "3: Low"
    p1_attack = p1.throw_punch
    p2_defense = p2.auto_defend
    
    sleep(1)
    system("clear")
    puts "You selected: " + p1_attack.to_s
    puts "Oppened defended: " + p2_defense.to_s

    if p1_attack != p2_defense
        damage = p1.attack_amt
        p2.lose_health(damage)
        puts "Oppenent take: " + damage.to_s
    else puts "Attack Missed: 0 Damage"
    end
    sleep(2)
    system("clear")

    puts "Your health: " 
    puts p1.health
    puts 
    puts "Opponent health: "
    puts p2.health
    puts 
    puts "---------------"
    puts
    system("clear")

    puts p1.name + " Pick Your Defense"
    sleep(1)
    puts "Pick a number"
    puts "1: High"
    puts "2: Mid"
    puts "3: Low"
    p2_attack = p2.auto_punch
    p1_defense = p1.defend_punch

    sleep(1)
    system("clear")
    puts "You selected: " + p1_attack.to_s
    puts "Oppened defended: " + p2_defense.to_s
    
    if p2_attack != p1_defense
        damage = p2.attack_amt
        p1.lose_health(damage)
        puts "You take: " + damage.to_s
    else puts "Attack Missed: 0 Damage"
    end
    sleep(2)
    system("clear")

    puts "Your health: " 
    puts p1.health
    puts 
    puts "Opponent health: "
    puts p2.health
    puts 
    puts "---------------"
    puts
    system("clear")


    p p1.name + " Is the loser" if p1.health <= 0
    p p2.name + " Is the loser" if p2.health <= 0
end

