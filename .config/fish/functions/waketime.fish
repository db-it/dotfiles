function waketime --description 'Print waketime'
    sysctl -a |grep kern.waketime |cut -d ' ' -f 10-
end
