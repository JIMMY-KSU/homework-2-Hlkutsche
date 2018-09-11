#!bin/bash
echo -n -e "Input temperature in Fahrenheit: "
read F
echo "scale=1; ($F-32)*(5/9)" |bc #This is causing false calculations, you may consider removing the round brackets around 5/9
#You can test your converter by adding -40 deg F which should be equivalent to -40 deg C  
C=$(echo "scale=2;($F-32)*5/9" | bc)
K0=273.15
K=$(echo "scale=2;$C+$K0" | bc)
echo "$F degree Fahrenheit is equivalent to $C degree Celsius and $K degree Kelvin"
