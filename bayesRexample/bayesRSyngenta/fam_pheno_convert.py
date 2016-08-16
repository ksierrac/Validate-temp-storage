#!/usr/bin/python

import sys, getopt

def main(argv):
        inputfile = ''
        try:
                opts, args = getopt.getopt(argv,"hi:o:", ["ifile="])
        except getopt.GetoptError:
                print "error"
                sys.exit(2)
        for opt, arg in opts:
                if opt in ("-i", "-ifile"):
                        inputfile = arg
                        outputfile = inputfile+"pheno.txt"
        print "Input file is:", inputfile
        print "Output file is:", outputfile
        convert(inputfile, outputfile)

def convert(i, o):
        print "converting"
        with open(i, 'r') as infile:
                with open(o, 'w') as outfile:
                        for line in infile:
                                split = line.split()
                                outfile.write(split[0]+"\t"+split[1]+"\t"+split[5]+"\n")


if __name__ == "__main__":
        main(sys.argv[1:])