INSERT INTO Users (username, email) VALUES 
('sanya', 'sanya@example.com'),
('maria', 'maria@example.com');

INSERT INTO ShoppingLists (name, user_id) VALUES 
('Продукты на неделю', 1),
('Для вечеринки', 1),
('Строительные материалы', 2);

INSERT INTO Categories (name) VALUES 
('Овощи и фрукты'),
('Молочные продукты'),
('Мясо и рыба'),
('Бакалея'),
('Бытовая химия');

INSERT INTO Items (list_id, category_id, name, quantity, is_bought) VALUES 
(1, 1, 'Яблоки', '1 кг', 0),
(1, 2, 'Молоко', '2 л', 1),
(1, 3, 'Куриная грудка', '500 г', 0),
(2, 4, 'Чипсы', '3 пачки', 0),
(2, 1, 'Апельсины', '2 кг', 0),
(3, 5, 'Средство для мытья полов', '1 шт.', 0);
