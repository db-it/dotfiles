function ec2ssh --description 'Connect to Bamboo EC2 instance via SSH'
    if test (count $argv) -lt 1
        echo "Error: Missing hostname of EC2 instance"
        return
    end
    echo "ssh -i ~/.ssh/elasticbamboo.pk ubuntu@$argv[1]"
    ssh -i ~/.ssh/elasticbamboo.pk ubuntu@$argv[1]
end
