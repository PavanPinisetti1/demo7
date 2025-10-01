create or replace procedure wksp_ebs2cloud_migration.calculate_bonus (
    p_employee_id  in number,
    p_bonus_pct    in number,
    p_bonus_amount out number
) as
    v_salary number;
begin
    select
        salary
    into v_salary
    from
        test_data
    where
        id = p_employee_id;

    p_bonus_amount := v_salary * ( p_bonus_pct / 100 );
    dbms_output.put_line('Bonus calculated: ' || p_bonus_amount);
end calculate_bonus;
/


-- sqlcl_snapshot {"hash":"6f8518894676de6f8575ef687e747eb0442861b8","type":"PROCEDURE","name":"CALCULATE_BONUS","schemaName":"WKSP_EBS2CLOUD_MIGRATION","sxml":""}