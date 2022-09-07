CREATE TABLE IF NOT EXISTS public.stock (
	symbolKey text NOT NULL PRIMARY KEY,
	symbol text NULL
);

CREATE TABLE IF NOT EXISTS public.delistedCompany (
	symbolKey text NOT NULL ,
	exchange text NULL,
	ipoDate date NULL,
	delistedDate date NULL
);


CREATE TABLE IF NOT EXISTS public.historicalDevidend (
	symbolKey text NOT NULL,
	dividendDate date NULL,
	label text NULL,
	adjDividend numeric(21,15)  NULL,
	dividend numeric(12,6) NULL,
	recordDate date NULL,
	paymentDate date NULL,
	declarationDate date NULL
);
