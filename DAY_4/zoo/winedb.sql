USE winedb;

-- 1. 
-- Find the grape(s) that grow(s) in the largest number of appellations.
-- Report grape name, color and the number of appellations it grows in.
SELECT WINEDB.GRAPES.GRAPE,WINEDB.GRAPES.COLOR,COUNT(WINEDB.APPELLATIONS.APPELATION) AS LARGEST_NO
FROM WINEDB.GRAPES,WINEDB.APPELLATIONS
WHERE GRAPES.ID = APPELLATIONS.NO;



-- 2. 
-- Find the most popular white grape (i.e., the grape that is used to make
-- the largest number of white wines in the database). Report the name
-- of the grape.
SELECT COUNT(WINEDB.WINE.GRAPE),WINEDB.GRAPES.COLOR,WINEDB.WINE.GRAPE
FROM WINEDB.GRAPES,WINEDB.WINE
WHERE WINEDB.WINE.GRAPE = WINEDB.GRAPES.GRAPE AND
WINEDB.GRAPES.COLOR like'%WHITE%'
GROUP BY WINEDB.WINE.GRAPE 
ORDER BY WINEDB.WINE.GRAPE DESC LIMIT 1;




-- 3. 
-- Report the grape with the largest number of high-ranked wines (score
-- of 93 and above).

SELECT WINEDB.WINE.GRAPE
FROM WINEDB.WINE
WHERE WINE.SCORE >= 93;




-- 4. 
-- Report the appellation responsible for the largest number of highranked
-- wines (score of 93 and above). Report just the name of the
-- appellation .

SELECT WINEDB.APPELLATIONS.APPELATION, winedb.wine.Grape,max(WINE.SCORE)
FROM WINEDB.APPELLATIONS,winedb.wine
WHERE winedb.wine.Appelation=winedb.appellations.Appelation AND WINE.SCORE >= 93 group by winedb.wine.Grape;





-- 5. 
-- Find the high-ranked wine (score of 93 or above) responsible for highest
-- Price. Report the vintage year, winery, wine name, score and
-- the Price (Chronological Order).

SELECT WINEDB.WINE.PRICE, WINEDB.WINE.WINERY,WINEDB.WINE.NAME,WINEDB.WINE.SCORE,WINEDB.WINE.YEAR
FROM WINEDB.WINE
WHERE WINE.SCORE >= 93
ORDER BY WINE.PRICE;




-- 6. 
-- Find if there are any 2008 Chardonnays that scored better than any
-- 2007 Syrah. report winery, wine name, appellation, score and price.
SELECT WINEDB.WINE.WINERY,WINEDB.WINE.NAME,WINEDB.APPELLATIONS.APPELATION,WINEDB.WINE.PRICE,WINEDB.WINE.SCORE
FROM WINEDB.WINE,WINEDB.APPELLATIONS
WHERE WINE.GRAPE='CHARDONNAYS' AND
WINE.YEAR=2008;


