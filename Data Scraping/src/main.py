import scraper

while True:
    try:
        start = int(input("Enter the start index (0-57): "))
        end = int(input("Enter the end index (1-58): "))

        # input validation
        if (end <= start):
            print("Last index should greater than the start index!")
            continue
        elif (start < 0 or start > 57 or end < 1 or end > 58):
            print("Please enter a valid index!")
            continue
        else:
            break
    except: # not integers
        print("Please enter integers only!")
        exit()

scraper.startScrape(start, end + 1) # start scraping from start to last index