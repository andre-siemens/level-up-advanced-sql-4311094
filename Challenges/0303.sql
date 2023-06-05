SELECT sls.soldDate,sls.salesAmount,inv.colour,inv.year

From sales sls 
inner join inventory inv 
on sls.inventoryId = inv.inventoryId
where inv.modelId IN(
SELECT modelId from model where EngineType = 'Electric')
