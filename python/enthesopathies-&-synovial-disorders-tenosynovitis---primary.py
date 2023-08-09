# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"N04y300","system":"readv2"},{"code":"N211200","system":"readv2"},{"code":"N220.00","system":"readv2"},{"code":"N220100","system":"readv2"},{"code":"N220400","system":"readv2"},{"code":"N220700","system":"readv2"},{"code":"N220900","system":"readv2"},{"code":"N220Q00","system":"readv2"},{"code":"N220S00","system":"readv2"},{"code":"N220V00","system":"readv2"},{"code":"N220z12","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('enthesopathies-and-synovial-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["enthesopathies-&-synovial-disorders-tenosynovitis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["enthesopathies-&-synovial-disorders-tenosynovitis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["enthesopathies-&-synovial-disorders-tenosynovitis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
