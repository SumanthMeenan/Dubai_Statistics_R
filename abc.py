
cleaned_data = []

with open('ABC-Data.txt', 'r') as f:
    corpus = f.readlines()
    print(corpus)

    for row in corpus:
        print(row.strip('\t'))
        cleaned_data.append(row.strip('\t'))


