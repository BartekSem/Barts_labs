USE CarSellingCompany;

INSERT INTO Cars (CarID, Brand, Model, Year)
VALUES  (434343, 'BMW', 'Blue', 1989),
        (434344, 'BMW', 'Red', 1989),
        (434345, 'Mazda', 'White', 1989);

INSERT INTO Orders (OrderID,TotalAmount)
VALUES  (1, 434343, 1, 1, 2200),
        (2, 434344, 2, 2, 2200),
        (3, 434345, 3, 3, 2200);
        
INSERT INTO Customers (CustomerID, FirstName,LastName, Email)
VALUES  (1, 'Mark', 'Becker', 'mark@gmail.com'),
        (2, 'Boris', 'Bolinski', 'boris@gmail.com'),
        (3, 'Birgit', 'Zilch', 'birgit@gmail.com');



