CREATE TABLE names (
	LoanRange TEXT,
	BusinessName TEXT,
	Address TEXT,
	City TEXT,
	State TEXT,
	Zip TEXT,
	NAICSCode TEXT,
	BusinessType TEXT,
	RaceEthnicity TEXT,
	Gender TEXT,
	Veteran TEXT,
	NonProfit TEXT,
	JobsRetained REAL,
	DateApproved TEXT,
	Lender TEXT,
	CD TEXT
);

.mode csv
.import names.csv names
.import states.csv states
.import bp.csv bp
