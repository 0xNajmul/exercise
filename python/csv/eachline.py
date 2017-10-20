import csv
# https://www.youtube.com/watch?v=q5uM4VKywbA
with open("python/csv/file.csv","r") as csv_file:
    csv_reader=csv.reader(csv_file)
    
    for line in csv_reader:
        print(line)  #or
        print(line[2]) # for second index[2]