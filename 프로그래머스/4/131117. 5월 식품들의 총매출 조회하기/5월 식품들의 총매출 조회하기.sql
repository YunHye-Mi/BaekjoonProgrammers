select P.PRODUCT_ID, PRODUCT_NAME, sum(AMOUNT*PRICE) as TOTAL_SALES
from FOOD_PRODUCT P left outer join FOOD_ORDER O on P.PRODUCT_ID = O.PRODUCT_ID
where PRODUCE_DATE between '2022-05-01' and '2022-05-31'
group by P.PRODUCT_ID
order by TOTAL_SALES desc, PRODUCT_ID