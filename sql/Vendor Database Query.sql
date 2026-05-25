USE InventoryDB;
SELECT TOP 10
    SCHEMA_NAME(t.schema_id) AS SchemaName,
    t.name AS TableName,
    SUM(p.rows) AS TotalRows
FROM 
    sys.tables AS t
JOIN 
    sys.partitions AS p ON t.object_id = p.object_id
WHERE 
    p.index_id IN (0, 1)
GROUP BY 
    t.schema_id, t.name
ORDER BY 
    TotalRows DESC;