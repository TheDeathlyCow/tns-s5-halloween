""" 
This module is used to generate the dispenser checks for the direction and time dispensers.
It is mainly to have the execute if for each of the 9 slots in a dispenser.
"""

DIR_TEMPLATE_FRONT = """execute as @e[type=minecraft:armor_stand,tag=dir_dispenser] at @s if block ~ ~ ~ minecraft:dropper[facing=east]{Items:[{Slot:"""
DIRECTION_TEMPLATE_BACK = """b,id:"minecraft:compass",Count:1b,tag:{display:{Name:'{"text":"Direction","color":"aqua","bold":true,"italic":false}'},direction_compass:1b,LodestoneDimension:"minecraft:the_end",LodestoneTracked:1b,LodestonePos:{X:-9455,Y:60,Z:10082}}}]} run function halloween-bosses:crimson_forest/accept_token"""

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
        print(line)
        outfile.write(line)
    
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


if __name__ == '__main__':
    generate_direction()
    generate_time()

