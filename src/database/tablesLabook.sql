-- Active: 1676562984777@@127.0.0.1@3306

CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    created_at TEXT DEFAULT (DATETIME()) NOT NULL
);

CREATE TABLE posts (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    creator_id TEXT NOT NULL,
    content TEXT NOT NULL,
    likes INTEGER NOT NULL,
    dislikes INTEGER NOT NULL,
    created_at TEXT NOT NULL,
    updated_at TEXT NOT NULL 
);

CREATE TABLE likes_dislikes (
    user_id TEXT NOT NULL,
    post_id TEXT NOT NULL,
    like INTEGER
);

INSERT INTO users (id, name, email, password, role)
VALUES
	("$2y$12$LVr4V3dauErQ2CceGPIxru5O2Dz67zzHR0qsKmvWnVV/PFAwmTEKu", "Fulano", "fulano@email.com", "fulano123", "NORMAL"),
	("u002$2y$12$jgwDgIsni2C3S1PN6t9TMe1thVgj45UuEHOk0rhCZTRcmoWJvXGCm", "Beltrana", "beltrana@email.com", "beltrana00", "NORMAL"),
	("$2y$12$Y3ABM/MjNUbYm.VzLgBPyu.oc7jDTpwHsE5ciztGqLhAGSPMBejsO", "Astrodev", "astrodev@email.com", "astrodev99", "ADMIN");

SELECT * FROM users;