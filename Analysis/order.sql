-- ============================================

-- SCENARIO:  order data

-- ============================================

SELECT *
FROM prod_order_history_archive_z91
WHERE order_created_date >= DATEADD(YEAR,-1,GETDATE());



-- ============================================

-- SCENARIO: Pending orders

-- ============================================

SELECT *
FROM prod_order_history_archive_z91
WHERE order_status = 'PENDING';
