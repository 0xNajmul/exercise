import csv

with open("file.csv","r") as scoreFile:
    scoreFileReader= csv.reader(scoreFile)
    scorelist=[]
    for row in scoreFileReader:
        if len (row) != 0:
            scorelist=scorelist+[row]

scoreFile.close()

print(scorelist)