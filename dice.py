import argparse
import random


def dicenumber():
    """return a 5-digit number suitable for diceware

    the 5-digit integer contains only the digits 1-6
    """
    return int(''.join([str(random.randrange(1, 7)) for x in range(5)]))


def dicelist(rounds=4):
    """returns a string with several numerical rounds of rolls

    i.e. '12511 43221 51323 32223'
    """
    return ' '.join([str(dicenumber()) for x in range(rounds)])


def diceware(rounds=4):
    with open('dicelist.asc') as f:
        out = {}
        for line in f:
            splits = line.split('\t')
            if len(splits) == 2:
                out[int(splits[0])] = splits[1].strip()
    return ' '.join([out[dicenumber()] for r in range(rounds)])


def manydice(passwords=4, rounds=4):
    return '\n'.join([diceware(rounds=rounds) for x in range(passwords)])


if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description='Utility for generating diceware passwords',
        epilog='But i mean, you should probably be skeptical of this anyway')
    parser.add_argument('-n', '--passwords', type=int, default=1,
                        help='the number of passwords to generate')
    parser.add_argument('-w', '--words', type=int, default=4,
                        help='the number of words in each password')
    args = parser.parse_args()
    print manydice(passwords=args.passwords, rounds=args.words)
