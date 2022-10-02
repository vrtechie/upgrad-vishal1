sudo apt  update -y

value=$(apt list -a apache2)
if [[  $value == *"[installed]"* ]];then
echo "apache2 is installed"
        servstat=$(service apache2 status)

if [[ $servstat == *"active (running)"* ]]; then
  echo "process is running"
else
 echo "process is not running"
 echo "we are going to start service"
 sudo service apache2 start
 echo "service is started"
fi

else
echo "apache is not installed"
fi
