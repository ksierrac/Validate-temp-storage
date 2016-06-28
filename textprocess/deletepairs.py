__author__ = 'Sierra'
import re

map = open('dongwang.txt', 'r')
oteID = 2150
count = 0
for line in map:
    count += 1
    ind1 = re.findall(r'.*'+str(oteID)+'.*', line)
    if ind1 != []:
        index1 = line[-2:]
        print(index1)
        print(ind1)
        print(count)
        break

mapout = open ('dongwang_test1.txt', 'w')
count2 = 0
for line in map:
    count2 += 1
    if count2 != count:
        mapout.write(line)
mapout.close()

map.close()


