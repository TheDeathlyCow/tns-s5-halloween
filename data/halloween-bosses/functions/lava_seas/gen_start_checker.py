""" 
This module is used to generate the key checks for specific items in a container.
It is mainly to have the execute if for each of the 9 slots in a dispenser.
"""

KEY_TYPE = 'key'
KEY_ITEM = """id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'{"text":"Key to Captain\\'s Quarters","italic":false}'},cptKey:1b}"""

TEMPLATE = """execute as @e[type=minecraft:armor_stand,tag={TYPE}_dispenser] at @s if block ~ ~ ~ {BLOCK}[facing={FACING}]{Items:[{Slot:{SLOT}b,{ITEM}}]} run function halloween-bosses:lava_seas/accept_tokens/{TYPE}/slot_{SLOT}"""

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
    """
    This function generates a series of .mcfunction files in the directory accept_tokens/inType.
    Each file is named slot_{number} where number is a number between 0 and num_files - 1 inclusive.
    
    A slot file with name slot_n.mcfunction will generate with the following form:

    replaceitem block ~ ~ ~ container.n minecraft:air
    function halloween-bosses:crimson_forest/accept_token
    """
    for file_num in range(0, num_files):
        outfile = open(f'accept_tokens/{inType}/slot_{file_num}.mcfunction', 'w')
        outfile.write(TOP_COMMENT)
        outfile.write(f'replaceitem block ~ ~ ~ container.{file_num} minecraft:air\n')
        outfile.write(f'function halloween-bosses:lava_seas/accept_token')
        outfile.close()


if __name__ == '__main__':

    gen_file(KEY_TYPE, KEY_ITEM, 'key_checker.mcfunction')

    gen_sub_files(KEY_TYPE)