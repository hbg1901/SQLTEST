-- ============================================
-- SCENARIO: User lookup production
-- ============================================

SELECT username,*
FROM prod_user_identity_master_x22
WHERE user_account_id = :user_id;



-- ============================================
-- SCENARIO: Recently created users

-- ============================================

SELECT *
FROM prod_user_identity_master_x22
WHERE created_time >= NOW() - INTERVAL '48 HOURS';
