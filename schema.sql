-- Create product_category table
CREATE TABLE product_category (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP
);

-- Create product table
CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    SKU VARCHAR(50),
    quantity INT,
    category_id INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES product_category(id)
);

-- Create product_inventory table
CREATE TABLE product_inventory (
    id INT PRIMARY KEY,
    SKU VARCHAR(50),
    quantity INT,
    category_id INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create price table
CREATE TABLE price (
    id INT PRIMARY KEY,
    product_id INT,
    value DECIMAL,
    deleted_at TIMESTAMP,
    discount_id INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES product(id)
);

-- Create discount table
CREATE TABLE discount (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    discount_percent DECIMAL,
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);
