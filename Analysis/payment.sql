-- ============================================

-- SCENARIO: Failed payments monitoring

-- ============================================

SELECT *
FROM prod_payment_error_tracker_v9
WHERE payment_status = 'FAILED'
AND error_timestamp >= NOW() - INTERVAL '24 HOURS';



-- ============================================

-- SCENARIO: Duplicate payment detection

-- ============================================

SELECT payment_reference_id, COUNT(*)
FROM prod_payment_error_tracker_v9
GROUP BY payment_reference_id
HAVING COUNT(*) > 1;
