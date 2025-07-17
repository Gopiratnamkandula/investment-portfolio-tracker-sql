
-- Create Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Create Stocks table
CREATE TABLE Stocks (
    stock_id INT PRIMARY KEY,
    symbol VARCHAR(10),
    company_name VARCHAR(100),
    sector VARCHAR(50)
);

-- Create Holdings table
CREATE TABLE Holdings (
    holding_id INT PRIMARY KEY,
    user_id INT,
    stock_id INT,
    quantity INT,
    purchase_price DECIMAL(10, 2),
    purchase_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (stock_id) REFERENCES Stocks(stock_id)
);

-- Create Prices table
CREATE TABLE Prices (
    price_id INT PRIMARY KEY,
    stock_id INT,
    date DATE,
    closing_price DECIMAL(10, 2),
    FOREIGN KEY (stock_id) REFERENCES Stocks(stock_id)
);

-- Create Transactions table
CREATE TABLE Transactions (
    txn_id INT PRIMARY KEY,
    user_id INT,
    stock_id INT,
    txn_type VARCHAR(10), -- buy or sell
    txn_quantity INT,
    txn_price DECIMAL(10, 2),
    txn_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (stock_id) REFERENCES Stocks(stock_id)
);
