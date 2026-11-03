CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL UNIQUE,
    created_at TEXT DEFAULT (datetime('now'))
);

CREATE TABLE ShoppingLists (
    list_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TEXT DEFAULT (datetime('now')),
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE Categories (
    category_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE Items (
    item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    list_id INTEGER NOT NULL,
    category_id INTEGER,
    name TEXT NOT NULL,
    quantity TEXT DEFAULT '1 шт.',
    is_bought BOOLEAN DEFAULT 0, -- 0 = не куплено, 1 = куплено
    created_at TEXT DEFAULT (datetime('now')),
    FOREIGN KEY (list_id) REFERENCES ShoppingLists(list_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE SET NULL
);

CREATE INDEX idx_items_list_id ON Items(list_id);
CREATE INDEX idx_items_category_id ON Items(category_id);
CREATE INDEX idx_items_is_bought ON Items(is_bought);
CREATE INDEX idx_lists_user_id ON ShoppingLists(user_id);
