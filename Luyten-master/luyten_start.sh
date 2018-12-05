#!/usr/bin/env bash
#set -x
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
pkgdir="${luyten_dir}/luyten-master/target/"
function help(){
    echo "start java-jar"
}
cur_dir=$(cd $(dirname "$0") && pwd)
echo "脚本执行路径:"${cur_dir}
DATE=`date +%Y%m%d_%H%M%S`
echo "当前时间:"${DATE}

if [ $# -eq "0" ]; then
    echo "没有参数"
fi
function help(){
    echo "Function: start 启动luyten"
}
function start(){
    cd ${pkgdir};
    java -jar luyten-0.5.3.jar
}

case "$1" in
  help)
    help
  ;;
  start)
    start
  ;;
  *)
    help
    exit 1
  ;;
esac
