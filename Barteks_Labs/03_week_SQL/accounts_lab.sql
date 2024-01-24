# retrieve the account (account_id) with more than 2 and less than 5 orders (oder_id), for oders with an amount under 5000
USE bank;

SELECT account_id, COUNT(order_id) as count_of_orders
FROM `order`
WHERE amount < 5000 # where applies the filter on the in this case orders
GROUP BY account_id
HAVING count_of_orders BETWEEN 3 AND 4; # having applied the filter on the group in this case account_ids

# to create segements we use CASE. it returns a new column. case is part fo the SELECT statement so it follows right after it.

 
# Retrieve the account_id, loan_id and column called "loan_size" values:
# big loan if amount bigger than 50k
# medium loan if amount smaller 25 k  50k
# small otherwise 

SELECT account_id, loan_id, amount,
CASE 
	WHEN amount > 50000 THEN `big loan`
    WHEN amount >= 25000 and =< 50000 THEN `medium`
    ELSE small,
    END AS loan_size
FROM `loan`;

SELECT account_id, ROUND(amount,-1)
FROM loan;



