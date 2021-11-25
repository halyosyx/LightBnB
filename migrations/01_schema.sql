CREATE TABLE users(
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);

CREATE TABLE properties(
  id SERIAL PRIMARY KEY NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  cover_photo_url VARCHAR(255) NOT NULL,
  thumbnail_photo_url VARCHAR(255) NOT NULL,
  cost_per_night INTEGER  NOT NULL DEFAULT 0,
  parking_spaces INTEGER  NOT NULL DEFAULT 0,
  number_of_bathrooms INTEGER  NOT NULL DEFAULT 0,
  number_of_bedrooms INTEGER  NOT NULL DEFAULT 0,
  active BOOLEAN NOT NULL DEFAULT TRUE,
  province VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  street VARCHAR(255) NOT NULL,
  post_code VARCHAR(255) NOT NULL
);

CREATE TABLE reservations(
  id SERIAL PRIMARY KEY NOT NULL,
  start_date DATE,
  end_date DATE,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE property_reviews(
  id SERIAL PRIMARY KEY NOT NULL,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
  reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
  rating SMALLINT NOT NULL DEFAULT 0,
  message TEXT
);