--What is each pokemon's primary type?
   SELECT p.id, p.name AS Pokemon_Name, t.name AS Primary_Type FROM pokemons p
    join types t on p.primary_type = t.id;

--What is Rufflet's secondary type?
   SELECT p.id, p.name AS Pokemon_Name, t.name AS Secondary_Type FROM pokemons p join types t on p.secondary_type = t.id WHERE p.name = 'Rufflet';

--What are the names of the pokemon that belong to the trainer with trainerID 303? */

--How many pokemon have a secondary type Poison?
    SELECT count(*) FROM pokemons p join types t on p.secondary_type = t.id WHERE t.name = 'Poison';

--What are all the primary types and how many pokemon have that type?
   SELECT t.name AS Primary_Type, count(*) Number_of_Pokemon FROM pokemons p join types t on p.primary_type = t.id group by t.name;

--How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer*/
--How many pokemon only belong to one trainer and no other?*/