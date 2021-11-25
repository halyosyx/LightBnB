INSERT INTO users (name, email, password)
VALUES ('Bib', 'vivian@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Codec', 'codec@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Tyler', 'tyty@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Curtis', 'Curt@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Matt', 'dank@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('William', 'richard@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, country, street, city, province, post_code)
VALUES ('1', 'Darwin Hotel', 'description', 'https://images.pexels.com/photos/2937800/pexels-photo-2937800.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', 'https://images.pexels.com/photos/584399/living-room-couch-interior-room-584399.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 180, 'Canada', '12 East Avenue', 'vancouver', 'British Columbia', 'AAAAAA'),
('2', 'Brick Brock', 'description', 'https://images.pexels.com/photos/2937800/pexels-photo-2937800.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', 'https://images.pexels.com/photos/584399/living-room-couch-interior-room-584399.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 67, 'Canada', '40 Binson Street', 'Hamilton', 'Ontario', 'AAAAAA'),
('3', 'Charter', 'description', 'https://images.pexels.com/photos/2937800/pexels-photo-2937800.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', 'https://images.pexels.com/photos/584399/living-room-couch-interior-room-584399.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 90, 'Canada', '22 Farm Street', 'Calgary', 'Alberta', 'AAAAAA');

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2021-09-01', '2021-09-02', 2, 4),
('2021-09-22', '2021-10-22', 1, 5),
('2021-09-09', '2021-09-12', 3, 6);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (4, 2, 1, 5, 'It was meh'),
(5, 1, 2, 3, 'This place was pretty good! :)'),
(6, 3, 3, 4, 'Many cows! My daughter enjoyed mooing');