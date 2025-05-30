-- Bài toán: Sản phẩm có thể tái chế và ít chất béo
SELECT product_id
FROM Products
WHERE low_fats = 'Y' and recyclable = 'Y'