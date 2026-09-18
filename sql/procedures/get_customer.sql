CREATE OR REPLACE PROCEDURE get_customer_details(
    p_customer_id   IN NUMBER,
    p_account_type  OUT VARCHAR2,
    p_status        OUT VARCHAR2
)
AS
BEGIN

    SELECT account_type,
           status
    INTO   p_account_type,
           p_status
    FROM   accounts
    WHERE  account_id = p_customer_id;

END;
/
