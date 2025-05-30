-- Nối bảng Prices và UnitsSold theo product_id và kiểm tra ngày mua nằm trong khoảng thời gian giá có hiệu lực.
-- Tính tổng tiền thu được (price * units) chia cho tổng số đơn vị đã bán để lấy trung bình.
-- Sử dụng IFNULL(..., 0) để đảm bảo nếu không có đơn hàng thì giá trả về là 0.00.


select p.product_id, 
       round(
            ifnull(
                    sum(p.price*u.units)/sum(u.units),
                 0),
            2) as average_price
from prices p
left join unitssold u on p.product_id = u.product_id
    and u.purchase_date between start_date and end_date
group by p.product_id

-- https://leetcode.com/problems/average-selling-price/?envType=study-plan-v2&envId=top-sql-50