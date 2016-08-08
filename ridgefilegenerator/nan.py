__author__ = 'Sierra'

def nan(file):
    outfile = open("outfile.ped", 'w')
    with open(file) as infile:
        count = 0
        for line in infile:
            line = line.split(' ')
            if count < 6:
                count += 1
            else:
                line[5] = 'NaN'
                count = 0
            outfile.write(' '.join(line))
    return outfile

nan('example.ped')