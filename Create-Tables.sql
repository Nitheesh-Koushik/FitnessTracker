SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS weight_entry; 
DROP TABLE IF EXISTS calories_burned; 
DROP TABLE IF EXISTS food_macros; 
DROP TABLE IF EXISTS food_entry;
DROP TABLE IF EXISTS profile_table; 
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE profile_table (
    profile_id INT NOT NULL auto_increment, 
    goal_weight FLOAT NOT NULL, 
    height INT NOT NULL,
    PRIMARY KEY (profile_id)
 ); 
 CREATE TABLE weight_entry (
    profile_id INT NOT NULL,
    date_of_log date NOT NULL, 
    weight FLOAT NOT NULL, 
    BMR INT NOT NULL, 
    PRIMARY KEY (profile_id, date_of_log), 
    FOREIGN KEY (profile_id) REFERENCES profile_table(profile_id) 
 ); 
CREATE TABLE calories_burned (
    profile_id INT NOT NULL, 
    date_of_log DATE NOT NULL, 
    calories_burned INT NOT NULL,
    PRIMARY KEY (profile_id, date_of_log), 
    FOREIGN KEY (profile_id) REFERENCES profile_table(profile_id)
    );
CREATE TABLE food_macros (
    food_id INT NOT NULL,
    serving_id INT NOT NULL,
    food_name VARCHAR(100),
    protien FLOAT, 
    carbs FLOAT, 
    fat FLOAT, 
    calories FLOAT, 
    PRIMARY KEY (food_id, serving_id)
    );
 CREATE TABLE food_entry (
    entry_id BIGINT NOT NULL, 
    food_id INT NOT NULL, 
    serving_id INT NOT NULL,
    profile_id INT NOT NULL, 
    date_of_log DATE NOT NULL,
    meal_type VARCHAR(10) NOT NULL,
    quantity FLOAT NOT NULL, 
    PRIMARY KEY (entry_id), 
    FOREIGN KEY (profile_id) REFERENCES profile_table(profile_id),
    FOREIGN KEY (food_id) REFERENCES food_macros(food_id)
    );
