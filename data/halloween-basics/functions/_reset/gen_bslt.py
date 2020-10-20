
TEMPLATE = """execute at @e[type=minecraft:armor_stand,tag=bslt_{ORE_TYPE}_vein] run setblock ~ ~ ~ {BLOCK_TYPE}\n"""

ALL_ORES = ['gold', 'iron', 'coal', 'diamond', 'lapis', 'debris', 'emerald', 'redstone', 'quartz']

def gen_file():
    """ 
    Generates the reset file for the bslt ores.
    """
    outfile = open('bslt_ores.mcfunction', 'w')
    for ore_type in ALL_ORES:
        line = TEMPLATE.replace('{ORE_TYPE}', ore_type)

        if ore_type != 'debris':
            line = line.replace('{BLOCK_TYPE}', ore_type + '_block')
        else:
            line = line.replace('{BLOCK_TYPE}', 'ancient_debris')
        outfile.write(line)

    outfile.close()


if __name__ == '__main__':
    gen_file()