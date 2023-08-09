# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"N211z00","system":"readv2"},{"code":"N212z00","system":"readv2"},{"code":"N213z00","system":"readv2"},{"code":"N214z00","system":"readv2"},{"code":"N215z00","system":"readv2"},{"code":"N216000","system":"readv2"},{"code":"N216011","system":"readv2"},{"code":"N216900","system":"readv2"},{"code":"N216z00","system":"readv2"},{"code":"N217z00","system":"readv2"},{"code":"N21z.00","system":"readv2"},{"code":"N21z000","system":"readv2"},{"code":"N21z100","system":"readv2"},{"code":"N21z200","system":"readv2"},{"code":"N21z211","system":"readv2"},{"code":"N21zz00","system":"readv2"},{"code":"N220000","system":"readv2"},{"code":"N220T00","system":"readv2"},{"code":"N222z00","system":"readv2"},{"code":"N223.00","system":"readv2"},{"code":"N225z00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('enthesopathies-and-synovial-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["enthesopathies-&-synovial-disorders-semimembranosus---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["enthesopathies-&-synovial-disorders-semimembranosus---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["enthesopathies-&-synovial-disorders-semimembranosus---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
