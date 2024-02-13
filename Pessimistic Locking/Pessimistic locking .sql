-- Assume we want to update the balance of account with id = 1

-- Start a transaction and apply a pessimistic lock on the row
BEGIN;
SELECT * FROM accounts WHERE id = 1 FOR UPDATE;

-- Now perform the update operation
UPDATE accounts SET balance = balance - 100 WHERE id = 1;

-- Optionally, perform some additional operations within the same transaction

-- Commit the transaction, releasing the lock
COMMIT;
