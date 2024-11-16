import os

data_names = []

for filename in os.listdir('data'):
    if filename.endswith('.csv'):
        data_names.append(filename[:-4])

with open('psql.cmd' , 'w') as file :
    for n in data_names :
        file.write(f"\copy {n} FROM '/home/data/{n}.csv' DELIMITER ',' CSV; \n\n" )