BEGIN;
-- Transaction 1 updates the price of Product A
UPDATE products
SET price = 12.99,
    version = version + 1
WHERE id = 1
  AND version = 1;
-- This update should succeed
COMMIT;


BEGIN;
-- Transaction 2 also tries to update the price of Product A
UPDATE products
SET price = 14.99,
    version = version + 1
WHERE id = 1
  AND version = 1;
-- This update should fail due to version conflict
COMMIT;
