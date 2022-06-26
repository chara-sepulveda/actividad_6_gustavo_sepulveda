SELECT NAME, population , states_conservation_id , 
case states_conservation_id
WHEN 1 THEN 'extinto'
when 2 then  ' bajo riesgo'
WHEN 3 then 'peligro de extinsion'
END  AS states_conservation_id FROM species_animals





