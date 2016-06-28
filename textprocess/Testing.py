map_file = 'dongwang.map'
ped_file = 'dongwang.ped'
ote_file = 'DWKT.ote.txt'
train_folder = './Train'
validate_folder = './Validate'

train_ids = ['wPt.2150', 'wPt.0596', 'wPt.1171', 'wPt.1903'] # to remove
test_ids = ['wPt.6116', 'tPt.5675', 'wPt.4064', 'wPt.6064']

train_lines = []

with open(map_file, 'r') as m, open(train_folder+'/train.map', 'w') as tm:
    for l in m:
        l_split = l.split()
        if l_split[1] in train_ids:
            train_lines.append(int(l_split[3]))
        else:
            tm.write(l)

with open(ped_file, 'r') as p, open(train_folder+'/train.ped', 'w') as tp:
    for l in p:
        l_split = l.split()
        l_split_2 = [''.join(l_split[i:i+2]) for i in range(6, len(l_split), 2)]
        for x in sorted(train_lines):
            del l_split_2[x]
        l_2 = ''.join(l_split_2)
        tp.write(' '.join(l_split[:6])+' ' + ' '.join(l_2) + '\n')

with open(ote_file, 'r') as kt, open(train_folder+'/trainKT.ote.txt', 'w') as tkt:
    for l in kt:
        l_split = l.split()
        if l_split[0] not in train_ids:
            tkt.write(l)
