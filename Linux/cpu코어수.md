# CPU 코어 개수 확인
## CPU 코어 전체 개수
grep -c processor /proc/cpuinfo
## 물리 CPU 개수
grep "physical id" /proc/cpuinfo | sort -u | wc -l
## CPU당 물리 코어 수
grep "cpu cores" /proc/cpuinfo | tail -1
## 예시
물리 CPU 수: 2  
물리 CPU당 물리 코어 수: 8  
전체 물리 코어 수 : 16  
전체 가상 코어 수 : 32  