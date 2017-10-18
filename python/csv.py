import csv

with open('file.csv', 'r') as _filehandler:
    csv_file_reader = csv.DictReader(_filehandler)
    for row in csv_file_reader:
        # Do something here
        print(row['quote'])
        print(row['speaker'])