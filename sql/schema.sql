CREATE TABLE companies (
company_id SERIAL PRIMARY KEY,
company_name TEXT,
industry TEXT,
country TEXT,

);

CREATE TABLE activities (
    activity_id SERIAL PRIMARY KEY,
    company_id INT,
    activity_type TEXT,
    activity_value FLOAT,
    unit TEXT,
    activit_date DATE
);

CREATE TABLE emission_factors (
factor_id SERIAL PRIMARY KEY,
activity_type TEXT,
emission_factor FLOAT,
unit INT,
source TEXT
);

CREATE TABLE emissions (
emission_id SERIAL PRIMARY KEY,
activity_id INT REFERENCES activities(activity_id),
factor_id INT REFERENCES emission_factors(factor_id),
calculated_emission FLOAT,
calculation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);