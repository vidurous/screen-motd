HOSTNAME=`uname -n`
KERNEL=`uname -r`
CPU=`uname -p`
ARCH=`uname -m`
UPTIME=`uptime -p`
LOAD=`cat /proc/loadavg |cut -d' ' -f1-3`
USERS=`ps auxw|grep sshd|grep @pts|grep -v grep|awk '{print $1}'`

BLUEs="\033[01;32m"
BLUEf="\033[0m"
echo -e "          +============================================================================+"
echo -e "                 Hostname: $HOSTNAME                                "
echo -e "                 Kernel:   $KERNEL                         "
echo -e "                 Arch:     $ARCH                            "
echo -e "                 Uptime:   $UPTIME                          "
echo -e "                 Load:     $LOAD                              "
echo -e "          +============================================================================+"
echo -e "

                                    ===================
                                    **** ATTENTION ****
                                    ===================

              Individual screen sessions are being monitored and will restart 
              if either screen or any of it's active sessions are closed out. 
              Either re-attach to the screen session or ssh back into a new 
              session."
echo -e "

"
echo -e "==================="
echo -e "SSH CONNECTED USERS:"
echo -e "==================="
echo -e "$USERS"
