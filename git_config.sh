
echo 'Input user.email'
read email
echo 'Input user.name'
read username

git config --global user.email $email
git config --global user.name $username

echo 'Saved:'
git config --global --get user.email
git config --global --get user.name
