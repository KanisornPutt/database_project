n = []

with open('phone/input.txt', 'r') as file : 
    for line in file : 
        if len(line) > 2 :
            l = line.strip()
            n.append(l[1:-1])
        else : 
            n.append("")
        
        
with open('phone/output.txt', 'w') as file : 
    for l in n : 
        file.write(l + '\n')
        
