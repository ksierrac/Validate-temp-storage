# This is a simple Python program that takes a text file input, a word parameter, and returns that word with the surrounding words.
import argparse

class TextProcess(object):
	def __init__(self):
		self.arguments = self.checkArgs()
		self.out = self.printWords(self.target,self.input,self.output)

			
	def checkArgs(self):
		parser = argparse.ArgumentParser(description = 'args')
		parser.add_argument("-t","--target",required = True)
		parser.add_argument("-i","--input",required = True)
		parser.add_argument("-o","--output",required = True)
		args = parser.parse_args()
		self.input = args.input
		self.output = args.output
		self.target = args.target

	def inputParse(self,file):
		processed = open('proc_file.txt', 'w')
		with open(file) as infile:
			for line in infile:
				line = line.replace("'",'')
		processed.close()
		return(processed)

def printWords(self,targetWord,inFile,outFile):
	fileToProcess = self.inputParse(inFile)
	with open(inFile, 'r') as i, open(outFile+'.txt', 'w') as o:
    for l in i:
        l_split = l.split()
		wordList = []
        for w in l_split:
			if w == targetWord:
				ind = l_split.index(targetWord)
				wordList.append(l_split[ind-1], l_split[ind], l_split[ind+1]
				outFile.write(wordList)
	return(outFile)

if __name__ == '__main__':
    P = printWords()
