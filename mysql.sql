-- ============================================
-- SCENARIO: Billing mismatch detection
-- KEYWORDS: billing mismatch, invoice 
-- UNIQUE TABLE: prod_billing_reconciliation_core_t88
-- ============================================

SELECT *
FROM prod_billing_reconciliation_core_t88
WHERE billed_amount <> expected_amount;



-- ============================================
-- SCENARIO: Missing invoices
-- KEYWORDS: missing invoice, invoice not generated
-- UNIQUE TABLE: prod_billing_reconciliation_core_t88
-- ============================================

SELECT *
FROM prod_billing_reconciliation_core_t88
WHERE invoice_id IS NULL;
