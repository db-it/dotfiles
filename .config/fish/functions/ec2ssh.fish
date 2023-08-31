function ec2ssh --description 'connect to ec2 instance via ssh'

    if test (count $argv) -lt 1
        echo "Error: Missing hostname of EC2 instance"
        return
    end
    echo "ssh -i /var/opt/bamboo/shared/configuration/elasticbamboo.pk ubuntu@$argv[1]"
    ssh -i /var/opt/bamboo/shared/configuration/elasticbamboo.pk ubuntu@$argv[1]

end