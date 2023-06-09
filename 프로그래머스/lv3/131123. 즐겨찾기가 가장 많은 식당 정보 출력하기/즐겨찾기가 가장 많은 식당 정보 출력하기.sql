SELECT FOOD_TYPE,REST_ID,REST_NAME,FAVORITES from REST_INFO 
where (FOOD_TYPE,FAVORITES) in (select FOOD_TYPE, max(FAVORITES) from REST_INFO group by food_type)
ORDER BY FOOD_TYPE DESC;