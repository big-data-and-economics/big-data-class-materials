These data are from the paper Bertrand, Marianne and Sendhil Mullainathan. (2004) "Are Emily and Greg more employable than Lakisha and Jamal" *American Economic Review*, Vol. 94, No. 4, pp. 991--1013. (http://dx.doi.org/10.1257/0002828042002561). The replication package is hosted at https://www.openicpsr.org/openicpsr/project/116023/version/V1/view.

It has been purposefully mangled for the purposes of this class. 

The following variables are included in the data (unless otherwise noted -99 denotes a missing variable):

--------------------------------------------------------------------------------------------------
id                                                                                              ID
--------------------------------------------------------------------------------------------------

                  Type: String (str8), but longest is str3

         Unique values: 289                       Missing "": 0/4,870

              Examples: "413"
                        "b"
                        "b"
                        "b"

--------------------------------------------------------------------------------------------------
ofjobs                                                             number of jobs listed on resume
--------------------------------------------------------------------------------------------------

                  Type: Numeric (byte)

                 Range: [-99,7]                       Units: 1
         Unique values: 8                         Missing .: 0/4,870

            Tabulation: Freq.  Value
                           28  -99
                          109  1
                          702  2
                        1,423  3
                        1,596  4
                          531  5
                          462  6
                           19  7

--------------------------------------------------------------------------------------------------
firstname                                                                   applicant's first name
--------------------------------------------------------------------------------------------------

                  Type: String (str15), but longest is str8

         Unique values: 36                        Missing "": 0/4,870

              Examples: "Carrie"
                        "Jill"
                        "Latonya"
                        "Neil"

--------------------------------------------------------------------------------------------------
sex                                                                                    (unlabeled)
--------------------------------------------------------------------------------------------------

                  Type: String (str9), but longest is str6

         Unique values: 7                         Missing "": 0/4,870

            Tabulation: Freq.  Value
                          834  "FEMALE"
                          164  "MALE"
                            1  "MLE"
                          658  "WOMAN"
                            1  "WOMN"
                        2,253  "f"
                          959  "m"

--------------------------------------------------------------------------------------------------
race                                                                                   (unlabeled)
--------------------------------------------------------------------------------------------------

                  Type: String (str10), but longest is str9

         Unique values: 4                         Missing "": 0/4,870

            Tabulation: Freq.  Value
                          350  "BLACK"
                          250  "Caucasian"
                        2,085  "b"
                        2,185  "w"

--------------------------------------------------------------------------------------------------
call                                                                   1=applicant was called back
--------------------------------------------------------------------------------------------------

                  Type: Numeric (byte)

                 Range: [0,1]                         Units: 1
         Unique values: 2                         Missing .: 0/4,870

            Tabulation: Freq.  Value
                        4,478  0
                          392  1

--------------------------------------------------------------------------------------------------
lmedhhinc                                                  log median HH income in applicant's zip
--------------------------------------------------------------------------------------------------

                  Type: Numeric (float)

                 Range: [-99,11.11929]                Units: 1.000e-07
         Unique values: 63                        Missing .: 0/4,870

                  Mean: 8.21974
             Std. dev.: 14.3812

           Percentiles:     10%       25%       50%       75%       90%
                        9.66288   9.92974   10.1441   10.3429   10.5656
