CREATE TABLE IF NOT EXISTS public.stock (
	symbol text NOT NULL,
    stockname text NULL,
    created_time timestamptz NULL DEFAULT NOW(),
    updated_time timestamptz NULL DEFAULT NOW(),
    CONSTRAINT stock_pkey PRIMARY KEY (symbol)
);

CREATE TABLE IF NOT EXISTS public.delistedcompany (
	id serial NOT NULL PRIMARY KEY,
	symbolid text NOT NULL ,
    companyname text NULL, 
	exchange text NULL,
	ipodate date NULL,
	delisteddate date NULL,
    created_time timestamptz NULL DEFAULT NOW(),
    updated_time timestamptz NULL DEFAULT NOW(),
    CONSTRAINT stock_fk foreign key (symbolId) REFERENCES stock (symbol),
    CONSTRAINT delistedcompany_uq UNIQUE (symbolId, companyname, exchange)
);

  
  
CREATE TABLE IF NOT EXISTS public.historicaldividend (
	id serial NOT NULL PRIMARY KEY,
	symbolid text NOT NULL,
	dividenddate date NULL,
	label text NULL,
	adjdividend numeric(21,15)  NULL,
	dividend numeric(12,6) NULL,
	recorddate date NULL,
	paymentdate date NULL,
	declarationdate date NULL,
    created_time timestamptz NULL DEFAULT NOW(),
    updated_time timestamptz NULL DEFAULT NOW(),
    CONSTRAINT stock_fk foreign key (symbolId) REFERENCES stock (symbol),
    CONSTRAINT historicaldividend_uq UNIQUE (symbolId, dividenddate)
    
);