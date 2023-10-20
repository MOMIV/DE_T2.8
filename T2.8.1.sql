create table if not exists sales 
(
sale_id Int32,
category String,
order_date Date,
revenue Int32
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(order_date)
ORDER BY (sale_id, category, order_date, revenue)
PRIMARY KEY (sale_id)

INSERT INTO sales VALUES 
(0, 'food', '2019-01-01', 204),
(1, 'wear', '2019-01-01', 1554),
(2, 'chem', '2019-01-01', 855),
(3, 'food', '2019-01-01', 1048),
(4, 'wear', '2019-01-01', 254),
(5, 'chem', '2019-01-01', 5855),
(6, 'food', '2019-03-01', 2504),
(7, 'wear', '2019-03-01', 554),
(8, 'chem', '2019-03-01', 5055),
(9, 'food', '2019-03-01', 504),
(10, 'wear', '2019-03-01', 454),
(11, 'chem', '2019-03-01', 6855),
(12, 'food', '2019-05-01', 4204),
(13, 'wear', '2019-05-01', 954),
(14, 'chem', '2019-05-01', 3855);
