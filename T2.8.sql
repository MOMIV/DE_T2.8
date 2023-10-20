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
(1, 'wear', '2019-01-21', 1554),
(2, 'chem', '2019-01-11', 855),
(3, 'food', '2019-02-09', 1048),
(4, 'wear', '2019-02-12', 254),
(5, 'chem', '2019-02-11', 5855),
(6, 'food', '2019-03-05', 2504),
(7, 'wear', '2019-03-21', 554),
(8, 'chem', '2019-03-04', 5055),
(9, 'food', '2019-04-01', 504),
(10, 'wear', '2019-04-30', 454),
(11, 'chem', '2019-04-15', 6855),
(12, 'food', '2019-05-10', 4204),
(13, 'wear', '2019-05-21', 954),
(14, 'chem', '2019-05-11', 3855);