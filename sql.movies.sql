-- Display all movie records.
select*from movies;
-- Display only movie titles.
select name from movies;
-- Display only movie name and director.
select name,director from movies;
-- Display title and rating.
select name,score from movies;
-- Display title ,genre and release year.
select name,genre,year from movies;
-- Display all unique genres.
select distinct genre from movies;
-- Display movies with rating greater than 8.
select*from movies where score >8;
-- Display with rating less than 5.
select*from movies where  score >5;
-- Display movies released after 2015.
select*from movies where released > 2015;
select*from movies;
-- Display every movie with its production company.
select m.name,c.company from movies m inner join movies c on m.company=c.company;
-- Display movie name and another movie made by the same director.
select m1.name as movie1,m2.name as movie2,m1.director from movies m1 join movies m2 on m1.director=m2.director and m1.name <>m2.name;
-- find movies having the same writer.
select m1.name,m2.name,m1.writer from movies m1 join movies m2 on m1.writer=m2.writer and m1.name <> m2.name;
-- Display movies having the same actor.
select m1.name,m2.name,m1.star from movies m1 join movies m2 on m1.star=m2.star and m1.name <> m2.name;
-- Find movies released in the same year.
select m1.name,m2.name,m1.year from movies m1 join movies m2 on m1.year = m2.year and m1.name <> m2.name;
-- Display movies of the same genre.
select m1.name,m2.name,m1.genre from movies m1 join movies m2 on m1.genre = m2.genre and m1.name <> m2.name;
-- Find movies produced by the same company.
select m1.name,m2.name,m1.company from movies m1 join movies m2 on m1.company = m2.company and m1.name <> m2.name;
-- Display movies from the same country.
select m1.name,m2.name,m1.country from movies m1 join movies m2 on m1.country = m2.country and m1.name <> m2.name;
-- find movies having the same rating.
select m1.name,m2.name,m1.score from movies m1 join movies m2 on m1.score = m2.score and m1.name <> m2.name;
-- find movies having equal runtime.
select m1.name,m2.name,m1.runtime from movies m1 join movies m2 on m1.runtime = m2.runtime and m1.name <> m2.name;
-- Display directors and all their movies.
select d.director,m.name from movies d join movies m on d.director = m.director;
-- find companies producing more than one movie.
select distinct m1.company,m2.name from movies m1 join movies m2 on m1.company = m2.company;
select m1.company,m2.name from movies m1 join movies m2 on m1.company = m2.company;
-- Display movies having the same budget.
select m1.name,m2.name,m1.budget from movies m1 join movies m2 on m1.budget = m2.budget and m1.name <> m2.name;
-- find movies with the same gross collection.
select m1.name,m2.name,m1.gross from movies m1 join movies m2 on m1.gross = m2.gross and m1.name <> m2.name;
-- Display movies with the same IMDb score.
select m1.name,m2.name,m1.score from movies m1 join movies m2 on m1.score = m2.score and m1.name <> m2.name;
-- Subquery
-- Find movies having above average score.
select name,score from movies where score >(select avg(score) from movies);
-- find movies with the maximum budget.
select name,budget from movies where budget = (select max(budget) from movies);
-- find movies with the minimum budget.
select name,budget from movies where budget = (select min(budget) from movies);
-- find the highest grossing movie.
select name,gross from movies where gross = (select max(gross) from movies);
-- find movies longer than average runtime.
select name,runtime from movies where runtime > (select avg(runtime) from movies);
-- find movies having more votes than average. 
select name,votes from movies where votes >(select avg(votes) from movies);
-- find movies released after the newest action movie.
select name,year from movies where year > (select max(year) from movies where genre='Action');
-- find movies directed by the director of the highest gross movie.
select name from movies where director =(select director from movies order by gross desc limit 1);
-- find movies having the same company as 'the shining'.
select name from movies where company = (select company from movies where name='The Shining');
-- find movies with the same genre as 'titanic'.
select name from movies where genre =(select genre from movies where name='Titanic');
-- find movies with budget greater than average budget.
select name,budget from movies where budget >(select avg(budget) from movies);
-- find movies earning more than avgerage gross.
select name,gross from movies where gross >(select avg(gross) from movies);
-- find director who directed movies with score greater than average.
select distinct director,score from movies where score > (select avg(score) from movies); 
-- find movies having the second highest gross.
select name,gross from movies where gross = (select max(gross) from movies where gross <(select max(gross) from movies));
-- find movies having the highest score in each genre.
select name,genre,score from movies m where score=(select max(score) from movies where genre =m.genre);



