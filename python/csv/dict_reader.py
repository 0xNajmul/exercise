import csv

with open('python/csv/file.csv','r') as file_reader:
    csv_file = csv.DictReader(file_reader)
    for line in csv_file:
        print(line) #or
        print(line["first_name"]) # print by index[first_name]
