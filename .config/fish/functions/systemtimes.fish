function waketime --description 'Print waketime'
    sysctl -a |grep kern.waketime |cut -d ' ' -f 10-
end

function sleeptime --description 'Print sleeptime'
    sysctl -a |grep kern.sleeptime |cut -d ' ' -f 10-
end

function waketime --description 'Print waketime'
    sysctl -a |grep kern.boottime |cut -d ' ' -f 10-
end
