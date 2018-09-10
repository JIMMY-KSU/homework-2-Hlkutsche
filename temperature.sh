echo -n -e "Input temperature in Fahrenheit: "
read F
echo "scale=1; ($F-32)*(5/9)" |bc

