echo "Generate your password. Min 5-Max 32"

date | md5sum head -c $1
