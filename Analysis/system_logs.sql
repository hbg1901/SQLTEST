-- ============================================

-- SCENARIO: System errors production

-- ============================================

SELECT *
FROM prod_application_log_matrix_a77
WHERE log_level = 'ERROR'
ORDER BY log_time DESC;



-- ============================================

-- SCENARIO: Login failures

-- ============================================

SELECT *
FROM prod_application_log_matrix_a77
WHERE log_message LIKE '%login failed%';
