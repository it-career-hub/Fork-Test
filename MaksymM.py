#!/usr/bin/python3

try:
    from termcolor import colored

    print(colored("Hello, World!", "cyan", attrs=["bold", "underline"]))
except ImportError:
    print("Hello, World! (Install 'termcolor' for a more beautiful output)")
