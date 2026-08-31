#!/bin/bash

while true
do

    echo "=============================="
    echo " Docker Image Manager"
    echo "=============================="

    echo "1. List Images"
    echo "2. Pull Image"
    echo "3. Check Image"
    echo "4. Inspect Image"
    echo "5. Remove Image"
    echo "6. Tag Image"
    echo "7. Show Image History"
    echo "8. Show Dangling Images"
    echo "9. Cleanup Dangling Images"
    echo "10. Docker Disk Usage"
    echo "11. Exit"

    read -p "Enter your choice: " CHOICE

    case $CHOICE in

        1)
            docker image ls
            ;;

        2)
            read -p "Enter image name: " IMAGE
            docker pull "$IMAGE"
            ;;

        3)
            read -p "Enter image name: " IMAGE

            if docker image inspect "$IMAGE" &>/dev/null; then
                echo "$IMAGE exists"
            else
                echo "$IMAGE does not exist"
            fi
            ;;

        4)
            read -p "Enter image name: " IMAGE
            docker image inspect "$IMAGE"
            ;;

        5)
            read -p "Enter image name: " IMAGE
            docker rmi "$IMAGE"
            ;;

        6)
            read -p "Enter existing image: " OLD_IMAGE
            read -p "Enter new tag: " NEW_IMAGE

            docker tag "$OLD_IMAGE" "$NEW_IMAGE"
            ;;

        7)
            read -p "Enter image name: " IMAGE
            docker history "$IMAGE"
            ;;

        8)
            docker images -f dangling=true
            ;;

        9)
            docker image prune -f
            ;;

        10)
            docker system df
            ;;

        11)
            echo "Exiting..."
            exit 0
            ;;

        *)
            echo "Invalid choice"
            ;;

    esac

done