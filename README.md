## Muziki App 🎼
- This is my first project of 2025. 
- Shoutout to @shadman346 https://github.com/shadman346/music-player and ![Codewith Curious](https://codewithcurious.com/projects/music-player-with-html-css-js/#:~:text=The%20Music%20Player%20web%20application,and%20navigate%20through%20the%20playlist)
- This is an improvement of his application with added database functionality. I'll keep adding more feature to it.
- Import the database into your phpmyadmin.
- Update the DB credential in the php file or by following the instructions below to use .env file
- You can update the images and music file paths and sources to your liking e.g S3. I have included a few songs for testing.

![alt text](https://github.com/stevenodu/muziki/blob/main/images/muziki.png?raw=true)

# Using .env file to hide db credentials in php. 📑

**Step 1:** ***Install phpdotenv***
- Navigate to your project directory:

`cd /var/www/html/myproject`

- Install phpdotenv using Composer:
`composer require vlucas/phpdotenv`

- This will create a `vendor` directory and update (or create) a `composer.json` file in your project.


**Step 2:** ***Create the .env File***
- Place the `.env` file directly inside your project root directory (`/var/www/html/myproject`).

Example `.env` file:

```
DB_HOST=localhost
DB_USER=root
DB_PASS=root12
DB_NAME=music
```


**Step 3:** ***Use phpdotenv in Your Project***
- In your PHP script where you connect to the database (e.g., config.php), load and use the environment variables:

```
require __DIR__ . '/vendor/autoload.php';
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

$servername = $_ENV['DB_HOST'];
$username = $_ENV['DB_USER'];
$password = $_ENV['DB_PASS'];
$dbname = $_ENV['DB_NAME'];

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
```


**Step 4:** ***Ignore .env in Version Control***
- Create or update .gitignore in the project root:

   `.env`
