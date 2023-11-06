DO $$
DECLARE
    num NUMERIC := 10;

BEGIN
    -- num := &num

    if (num < 20) THEN
        RAISE NOTICE 'The number % is less than 20', num;
    else
        RAISE NOTICE 'The number % is greater than 20', num;
    END IF;

END $$;