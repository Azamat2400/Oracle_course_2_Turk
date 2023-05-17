SELECT
    *
FROM
         c##azamat.customer
    INNER JOIN c##azamat.customer_order ON c##azamat.customer.customer_id = c##azamat.customer_order.customer_id
    INNER JOIN c##azamat.product ON c##azamat.product.product_id = c##azamat.customer_order.product_id
    INNER JOIN c##azamat.department ON c##azamat.department.department_id = c##azamat.product.department_id
    INNER JOIN c##azamat.employee ON c##azamat.employee.department_id = c##azamat.department.department_id