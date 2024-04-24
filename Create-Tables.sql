USE fatsecret;
DROP TABLE IF EXISTS weight_entry; 
DROP TABLE IF EXISTS calories_burned; 
DROP TABLE IF EXISTS food_macros; 
DROP TABLE IF EXISTS profile_table; 
DROP TABLE IF EXISTS food_entry;



CREATE TABLE profile_table (
	profile_id INT NOT NULL auto_increment, 
    goal_weight INT NOT NULL, 
    height INT NOT NULL,
    PRIMARY KEY (profile_id)
 ); 
 
 

 CREATE TABLE weight_entry (
	entry_id INT NOT NULL auto_increment, 
    profile_id INT NOT NULL,
    date_of_log date NOT NULL, 
    weight INT NOT NULL, 
    BMR INT NOT NULL, 
    PRIMARY KEY (entry_id), 
    FOREIGN KEY (profile_id) REFERENCES profile_table(profile_id) 
 ); 


CREATE TABLE calories_burned (
	entry_id INT NOT NULL auto_increment, 
    person_id INT NOT NULL, 
    date_of_log DATE NOT NULL, 
    calories_burned INT NOT NULL,
    PRIMARY KEY (entry_id), 
    FOREIGN KEY (profile_id) REFERENCES profile_table(person_id)
    );
 
CREATE TABLE macros (
	food_id INT NOT NULL,
    food_name VARCHAR(100),
    protien FLOAT, 
    carbs FLOAT, 
    fat FLOAT, 
    calories FLOAT, 
    PRIMARY KEY (food_id)
    );
 CREATE TABLE food (
	entry_id INT NOT NULL, 
    food_id INT NOT NULL, 
    person_id INT NOT NULL, 
    date_of_log DATE NOT NULL,
    meal_type VARCHAR(10) NOT NULL,
    quantity FLOAT NOT NULL, 
    PRIMARY KEY (entry_id), 
    FOREIGN KEY (profile_id) REFERENCES profile_table(person_id),
    FOREIGN KEY (food_id) REFERENCES macros(food_id)
    );