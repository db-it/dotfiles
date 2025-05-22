function docker_containers_for_volume
    # Iterate over each volume name provided as an argument
    for volume_name in $argv
        echo "Containers using volume: $volume_name"
        # Find containers using the specified volume
        # -a: Show all containers (default shows just running)
        # --filter volume=<volume_name>: Filter by volume name
        # --format "{{.Names}}": Only output the container names
        docker ps -a --filter volume=$volume_name --format "{{.Names}}"
        echo "" # Add a blank line for better readability between volumes
    end
end
