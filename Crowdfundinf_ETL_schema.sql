-- Drop tables if they exist 
DROP TABLE IF EXISTS campaign, category, subcategory, contacts;

-- Create the category table
CREATE TABLE category (
    category_id varchar(300) NOT NULL,
    category varchar(300) NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (category_id)
);

-- Create the subcategory table
CREATE TABLE subcategory (
    subcategory_id varchar(150) NOT NULL,
    subcategory varchar(150) NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (subcategory_id)
);

-- Create the contacts table
CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar(300) NOT NULL,
    last_name varchar(300) NOT NULL,
    email varchar(300) NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (contact_id)
);

-- Create the campaign table with foreign key references to other tables
CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar(300) NOT NULL,
    description varchar(300) NOT NULL,
    goal numeric NOT NULL,
    pledged numeric NOT NULL,
    outcome varchar(300) NOT NULL,
    backers_count int NOT NULL,
    country varchar(300) NOT NULL,
    currency varchar(300) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(300) NOT NULL,
    subcategory_id varchar(300) NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (cf_id),
    CONSTRAINT fk_contact FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category (category_id),
    CONSTRAINT fk_subcategory FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

select * from contacts
select * from category
select * from subcategory
select * from campaign

