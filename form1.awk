#!/usr/bin/awk -f

BEGIN{
        printf("%-15s %-10s %10s %7s %12s\n",
        "CONTINENT","COUNTRY","POPULATION","AREA","POP. DEN.")
        FS=":"
    }
    {
        printf("%-15s %-10s %10s %7s %12s\n",
                    $1,$2,$3,$4,$5)
    }
