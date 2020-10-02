""" 
This module is used to generate the dispenser checks for the direction and time dispensers.
It is mainly to have the execute if for each of the 9 slots in a dispenser.
"""

EMPTY_SLOT = """{Slot:Xb,Count:0b}"""
TO_REPLACE = 'REST_OF_SLOTS'

DIR_TEMPLATE_FRONT = """execute as @e[type=minecraft:armor_stand,tag=dir_dispenser] at @s if block ~ ~ ~ minecraft:dropper[facing=east]{Items:[{Slot:"""
DIRECTION_TEMPLATE_BACK = """b,id:"minecraft:compass",Count:1b,tag:{display:{Name:'{"text":"Direction","color":"aqua","bold":true,"italic":false}'},direction_compass:1b,LodestoneDimension:"minecraft:the_nether",LodestoneTracked:1b}}]} run function halloween-bosses:crimson_forest/accept_token"""

TIME_TEMPLATE_FRONT = """execute as @e[type=minecraft:armor_stand,tag=time_dispenser] at @s if block ~ ~ ~ minecraft:dropper[facing=east]{Items:[{Slot:"""
TIME_TEMPLATE_BACK = """b,id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"text":"Time","color":"gold","bold":true,"italic":false}'},time_clock:1b}}]} run function halloween-bosses:crimson_forest/accept_token"""

TOP_COMMENT = '# this file was generated with gen_start_checker.py\n'

def generate_direction():
    global TEMPLATE_FRONT
    global DIRECTION_TEMPLATE_BACK
    

    outfile = open('direction_checker.mcfunction', 'w')
    outfile.write(TOP_COMMENT)

    for i in range(0, 9):
        line = DIR_TEMPLATE_FRONT + str(i) + DIRECTION_TEMPLATE_BACK + '\n'
        empty_slots = ""
        # basically this is just so the command will only execute if ONLY the compass is in the dropper.
        for j in range(0, 9):
            if j != i:
                temp = EMPTY_SLOT
                empty_slots = empty_slots + temp.replace('X', str(j))
                if i != 8 and j != 8:
                    empty_slots += ','
                if i == 8 and j != 7:
                    empty_slots += ','

        line = line.replace(TO_REPLACE, empty_slots)
        print(line)
        outfile.write(line)
    
    # outfile.write('function halloween-bosses:crimson_forest/accept_token')
    outfile.close()

def generate_time():
    global TEMPLATE_FRONT
    global TIME_TEMPLATE_BACK

    outfile = open('time_checker.mcfunction', 'w')
    outfile.write(TOP_COMMENT)

    for i in range(0, 9):
        line = TIME_TEMPLATE_FRONT + str(i) + TIME_TEMPLATE_BACK + '\n'
        print(line)
        outfile.write(line)

    outfile.close()

ACCEPT_BASE = """
# this function was generated with gen_start_checker.py

EXECUTE_STATEMENTS

playsound minecraft:block.anvil.destroy master @a[distance=..10] ~ ~ ~

particle minecraft:explosion ~ ~ ~ 1 1 1 4 5

execute if score dirTokenSlot tknSlt matches 0.. run scoreboard players add numTokens tknsNdd 1
execute if score timTokenSlot tknSlt matches 0.. run scoreboard players add numTokens tknsNdd 1

scoreboard players set dirTokenSlot tknSlt -1
scoreboard players set timTokenSlot tknSlt -1

execute if score numTokens tknsNdd matches 2.. run function halloween-bosses:crimson_forest/start_fight
"""

ACCEPT_EX = """execute if score dirTokenSlot tknSlt matches {0} run replaceitem block ~ ~ ~ container.{0} minecraft:air\n"""

def gen_accept():
    outfile = open('accept_token.mcfunction', 'w')
    file = ACCEPT_BASE
    executes = ""
    for slot in range(0, 9):
        executes += ACCEPT_EX.format(slot)
    file = file.replace('EXECUTE_STATEMENTS', executes)

    outfile.write(file)
    outfile.close()


if __name__ == '__main__':
    generate_direction()
    generate_time()
    # gen_accept()


