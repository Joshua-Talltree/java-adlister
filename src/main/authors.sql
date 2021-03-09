use codeup_test_db;

truncate table authors;

insert into authors(authors_first_name, authors_last_name)
values ('Thomas', 'Mann'),
       ('Ernest', 'Hemingway'),
       ('G.K.', 'Chesterton'),
       ('Louisa May', 'Alcott'),
       ('Donald', 'Miller'),
       ('Mark', 'Twain')