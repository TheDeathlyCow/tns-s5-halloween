
TEMPLATE = """summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["bslt_{ORE_TYPE}_vein"]}"""

ALL_ORES = ['gold', 'iron', 'coal', 'diamond', 'lapis', 'debris', 'emerald', 'redstone', 'quartz']

def gen_file(ore_type):
    """ 
    Generates a marker file for the specifiec ore type.
    """
    outfile = open(str(ore_type) + '.mcfunction', 'w')
    outfile.write(TEMPLATE.replace('{ORE_TYPE}', ore_type))
    outfile.close()

def gen_all_files():
    """ 
    Generates all of the ore types. 
    """
    for ore_type in ALL_ORES:
        gen_file(ore_type)

if __name__ == '__main__':
    gen_all_files()