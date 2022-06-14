import scraper

while True:
    try:
        start = int(input("Enter the start index (0-59): "))
        end = int(input("Enter the end index (1-60): "))

        # input validation
        if (end <= start):
            print("Last index should greater than the start index!")
            continue
        elif (start < 0 or start > 59 or end < 1 or end > 60):
            print("Please enter a valid index!")
            continue
        else:
            break
    except: # not integers
        print("Please enter integers only!")
        exit()

scraper.startScrape(start, end) # start scraping from start to last index