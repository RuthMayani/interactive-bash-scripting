#!/bin/bash

while true; do
clear
echo "======================================"
echo "  Welcome to AutoWorld Showroom! "
echo "======================================"
echo
echo "Please choose one of the following cars:"
echo
echo "1)  Toyota"
echo "2)  BMW"
echo "3)  Tesla"
echo "4)  Ferrari"
echo "5)  Ford"
echo "0)  Exit"
echo

read -p "Enter your choice [number or name]: " choice
echo

# Normalize input to lowercase
choice=$(echo "$choice" | tr '[:upper:]' '[:lower:]')

case $choice in

1|"toyota")
    echo "You chose  Toyota!"
    echo "Which model would you like?"
    echo "a) Corolla"
    echo "b) Camry"
    echo "c) RAV4"
    echo
    read -p "Enter your choice [a-c]: " car_choice
    echo
    case $car_choice in
        a)
            echo "Features of Toyota Corolla:"
            echo "- 1.8L Engine"
            echo "- Fuel Efficient"
            echo "- Advanced Safety System"
            ;;
        b)
            echo "Features of Toyota Camry:"
            echo "- 2.5L Engine"
            echo "- Comfortable Interior"
            echo "- Smart Infotainment System"
            ;;
        c)
            echo "Features of Toyota RAV4:"
            echo "- SUV Body Style"
            echo "- All-Wheel Drive Option"
            echo "- Spacious Cargo Area"
            ;;
        *)
            echo "❌ Invalid model choice. Returning to menu..."
            sleep 2
            continue
            ;;
    esac
    echo
    echo "Great choice. Enjoy your Toyota!"
    ;;

2|"bmw")
    echo "You chose  BMW!"
    echo "Which model would you like?"
    echo "a) 3 Series"
    echo "b) X5"
    echo "c) M4"
    echo
    read -p "Enter your choice [a-c]: " car_choice
    echo
    case $car_choice in
        a)
            echo "Features of BMW 3 Series:"
            echo "- Turbocharged Engine"
            echo "- Sporty Handling"
            echo "- Luxury Interior"
            ;;
        b)
            echo "Features of BMW X5:"
            echo "- Premium SUV"
            echo "- Advanced Driver Assistance"
            echo "- Spacious Cabin"
            ;;
        c)
            echo "Features of BMW M4:"
            echo "- High Performance Engine"
            echo "- Sport Suspension"
            echo "- Aggressive Styling"
            ;;
        *)
            echo "❌ Invalid model choice. Returning to menu..."
            sleep 2
            continue
            ;;
    esac
    echo
    echo "Great choice. Enjoy your BMW!"
    ;;

3|"tesla")
    echo "You chose  Tesla!"
    echo "Which model would you like?"
    echo "a) Model 3"
    echo "b) Model S"
    echo "c) Model X"
    echo
    read -p "Enter your choice [a-c]: " car_choice
    echo
    case $car_choice in
        a)
            echo "Features of Tesla Model 3:"
            echo "- Fully Electric"
            echo "- Autopilot Capability"
            echo "- Minimalist Interior"
            ;;
        b)
            echo "Features of Tesla Model S:"
            echo "- Long Range Battery"
            echo "- High-Speed Performance"
            echo "- Premium Technology"
            ;;
        c)
            echo "Features of Tesla Model X:"
            echo "- Falcon Wing Doors"
            echo "- Spacious SUV"
            echo "- Advanced Safety Features"
            ;;
        *)
            echo "❌ Invalid model choice. Returning to menu..."
            sleep 2
            continue
            ;;
    esac
    echo
    echo "Great choice. Enjoy your Tesla!"
    ;;

4|"ferrari")
    echo "You chose  Ferrari!"
    echo "Which model would you like?"
    echo "a) F8"
    echo "b) Roma"
    echo "c) SF90"
    echo
    read -p "Enter your choice [a-c]: " car_choice
    echo
    case $car_choice in
        a)
            echo "Features of Ferrari F8:"
            echo "- V8 Twin-Turbo Engine"
            echo "- Extreme Speed"
            echo "- Aerodynamic Design"
            ;;
        b)
            echo "Features of Ferrari Roma:"
            echo "- Elegant Styling"
            echo "- Powerful V8 Engine"
            echo "- Luxury Interior"
            ;;
        c)
            echo "Features of Ferrari SF90:"
            echo "- Hybrid Supercar"
            echo "- 986 Horsepower"
            echo "- Cutting Edge Technology"
            ;;
        *)
            echo "❌ Invalid model choice. Returning to menu..."
            sleep 2
            continue
            ;;
    esac
    echo
    echo "Great choice. Enjoy your Ferrari!"
    ;;

5|"ford")
    echo "You chose  Ford!"
    echo "Which model would you like?"
    echo "a) Mustang"
    echo "b) F-150"
    echo "c) Explorer"
    echo
    read -p "Enter your choice [a-c]: " car_choice
    echo
    case $car_choice in
        a)
            echo "Features of Ford Mustang:"
            echo "- Iconic Muscle Car"
            echo "- Powerful Engine Options"
            echo "- Sporty Design"
            ;;
        b)
            echo "Features of Ford F-150:"
            echo "- Durable Pickup Truck"
            echo "- High Towing Capacity"
            echo "- Off-Road Capability"
            ;;
        c)
            echo "Features of Ford Explorer:"
            echo "- Family SUV"
            echo "- Spacious Interior"
            echo "- Advanced Safety Tech"
            ;;
        *)
            echo "❌ Invalid model choice. Returning to menu..."
            sleep 2
            continue
            ;;
    esac
    echo
    echo "Great choice. Enjoy your Ford!"
    ;;

0|"exit"|"quit")
    echo " Thanks for visiting AutoWorld Showroom! Goodbye!"
    echo
    break
    ;;

*)
    echo "❌ Invalid selection. Please choose from the listed options."
    sleep 2
    ;;
esac

echo
read -p "Press Enter to return to the main menu..."
done
