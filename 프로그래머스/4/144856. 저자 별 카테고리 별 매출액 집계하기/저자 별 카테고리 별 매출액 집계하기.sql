select A.AUTHOR_ID, AUTHOR_NAME, CATEGORY, sum(PRICE*TOTAL) as TOTAL_SALES
from AUTHOR A join BOOK B on A.AUTHOR_ID = B.AUTHOR_ID join 
(select BOOK_ID, sum(SALES) as TOTAL
 from BOOK_SALES
 where month(SALES_DATE) = 1 and year(SALES_DATE) = 2022
 group by BOOK_ID) S on B.BOOK_ID = S.BOOK_ID
group by CATEGORY, AUTHOR_ID
order by A.AUTHOR_ID, CATEGORY desc