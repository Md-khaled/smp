
## smp
 
1. Clone the repo git clone https://github.com/Md-khaled/smp.git
2. cd to project folder.
3. Run composer install
4. Save as the .env.example to .env and set your database information
5. Run php artisan key:generate to generate the app key
6. Run npm install
7. Run php artisan migrate
register user 
http://localhost/smp/public/api/auth/register

login user 
  http://localhost/smp/public/api/auth/login
