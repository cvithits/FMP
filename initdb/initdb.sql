CREATE TABLE IF NOT EXISTS public.stock (
	symbol text NULL PRIMARY KEY,
    stockName text NULL
);
  
CREATE TABLE IF NOT EXISTS public.delistedCompany (
	id serial NOT NULL PRIMARY KEY,
	symbolId text NOT NULL ,
    companyName text NULL, 
	exchange text NULL,
	ipoDate date NULL,
	delistedDate date NULL,
  constraint fk_stock
     foreign key (symbolId) 
     REFERENCES stock (symbol)
);

CREATE TABLE IF NOT EXISTS public.historicalDevidend (
	id serial NOT NULL PRIMARY KEY,
	symbolId text NOT NULL,
	dividendDate date NULL,
	label text NULL,
	adjDividend numeric(21,15)  NULL,
	dividend numeric(12,6) NULL,
	recordDate date NULL,
	paymentDate date NULL,
	declarationDate date NULL,
  constraint fk_stock
     foreign key (symbolId) 
     REFERENCES stock (symbol)
);