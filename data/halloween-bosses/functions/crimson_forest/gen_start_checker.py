""" 
This module is used to generate the dispenser checks for the direction and time dispensers.
It is mainly to have the execute if for each of the 9 slots in a dispenser.
"""

DIR_TYPE = 'dir'
TIME_TYPE = 'time'

COMPASS_ITEM = """id:"minecraft:compass",Count:1b,tag:{display:{Name:'{"text":"Direction","color":"aqua","bold":true,"italic":false}'},direction_compass:1b,LodestoneDimension:"minecraft:the_nether",LodestoneTracked:1b}"""
CLOCK_ITEM = """id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"text":"Time","color":"gold","bold":true,"italic":false}'},time_clock:1b}"""

TEMPLATE = """execute as @e[type=minecraft:armor_stand,tag={TYPE}_dispenser] at @s if block ~ ~ ~ {BLOCK}[facing={FACING}]{Items:[{Slot:{SLOT}b,{ITEM}}]} run function halloween-bosses:crimson_forest/accept_tokens/{TYPE}/slot_{SLOT}"""

TOP_COMMENT = '# this file was generated with gen_start_checker.py\n'


def gen_file(inType, item, filename, num_slots=9, block='minecraft:dropper', facing='east'):
    """
    Generates an mcfunction file for detecting an item in a container. 
    The default container type is a dropper.
    """
    outfile = open(filename, 'w')
    outfile.write(TOP_COMMENT)

    for slot in range(0, num_slots):
        line = TEMPLATE.replace('{TYPE}', inType)
        line = line.replace('{BLOCK}', block)
        line = line.replace('{FACING}', facing)
        line = line.replace('{ITEM}', item)
        line = line.replace('{SLOT}', str(slot))
        line += '\n'

        outfile.write(line)
    
    outfile.close()

def gen_sub_files(inType, num_files=9, block='minecraft:dropper', facing='east'):
    
    for file_num in range(0, num_files):
        outfile = open(f'accept_tokens/{inType}/slot_{file_num}.mcfunction', 'w')
        outfile.write(TOP_COMMENT)
        outfile.write(f"""replaceitem block ~ ~ ~ container.{file_num} minecraft:air\n""")
        outfile.write(f"""function halloween-bosses:crimson_forest/accept_token""")
        outfile.close()


if __name__ == '__main__':
    gen_file(DIR_TYPE, COMPASS_ITEM, 'direction_checker.mcfunction')
    gen_file(TIME_TYPE, CLOCK_ITEM, 'time_checker.mcfunction')

    gen_sub_files(DIR_TYPE)
    gen_sub_files(TIME_TYPE)

