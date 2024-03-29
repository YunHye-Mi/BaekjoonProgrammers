 select USER_ID, NICKNAME, sum(PRICE) as TOTAL_SALES
 from USED_GOODS_USER LEFT OUTER JOIN USED_GOODS_BOARD on USER_ID = WRITER_ID
 where STATUS = 'DONE'
 group by USER_ID
 having sum(PRICE) >= 700000
 order by TOTAL_SALES