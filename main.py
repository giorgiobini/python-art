from art import *
from argparse import ArgumentParser

def main():
    if random_font:
        tprint("{}".format(user_input), font = 'random')
    else:
        tprint("{}{}".format(user_input))
    
if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('--input_word', dest = 'input_word', type=str,
                        help="Which word do you want to print?", default="Hello World!")
    parser.add_argument('--random_font', dest = 'random_font', type=bool,
                        help="Do you want a random font?", default= True)   
    args = parser.parse_args()
    user_input = args.input_word
    random_font = args.random_font
    main()