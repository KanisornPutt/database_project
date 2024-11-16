from faker import Faker 

fake = Faker()

l = []

with open('run.txt', 'r', encoding='utf-8') as file : 
    for line in file:
        if len(line) > 3 :
            l.append(line.strip()[1:-2])
        else : 
            l.append(" ")
        
with open('stripped.txt','w', encoding='utf-8') as file : 
    for i in l : 
        file.write(i + '\n')


        