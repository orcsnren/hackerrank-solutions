SELECT SUM(C.POPULATION) FROM CITY C,COUNTRY CO WHERE C.COUNTRYCODE = CO.CODE AND CO.CONTINENT='Asia';