-- Identify the forum post written in April 2048 that mentions EmptyStack and dad
SELECT *
FROM forum_posts
WHERE
  date BETWEEN '2048-04-01' AND '2048-05-01'
  AND content ILIKE '%emptystack%'
  AND content ILIKE '%dad%';

-- The author of that post is 'smart-money-44'
SELECT *
FROM forum_accounts
WHERE username = 'smart-money-44';

-- 'smart-money-44''s real name is 'Brad Steele'.
-- Search for forum accounts with the same last name.
SELECT *
FROM forum_accounts
WHERE last_name = 'Steele';

-- Find EmptyStack employees with the same last name.
SELECT *
FROM emptystack_accounts
WHERE last_name = 'Steele';

-- The person that satifies these requirements is Andrew Steele.
-- His username is 'triple-cart-38' and his password is 'password456'.

-- Providing those credentials to `node mainframe` will create `emptystack.sql`,
-- which adds the tables "emptystack_messages" and "emptystack_projects" to the database.

-- Identidy the message that mentions a project with self-driving taxis.
SELECT *
FROM emptystack_messages
WHERE
  body ILIKE '%taxi%'
  OR body ILIKE '%project%';

-- That message is from user, 'your-boss-99'
SELECT *
FROM emptystack_accounts
WHERE username = 'your-boss-99';

-- Their password is 'notagaincarter'.

-- Identify the ID of project TAXI.
SELECT *
FROM emptystack_projects
WHERE code = 'TAXI';

-- The project ID is 'DczE0v2b'.

-- Providing those credentials to `node mainframe -stop` will save the day!