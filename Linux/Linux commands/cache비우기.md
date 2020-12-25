# Cache
## 메모리 확인
캐시 비우는 방법을 알아보기 전에 컴퓨터의 메모리를 확인하는 방법을 알고 있어야 한다.  
$free -h 명령어로 메모리 확인이 가능하며 $free 또는 $free -m 명령어를 사용해도 된다. 단지 단위가 다를 뿐이다.  
$free -h 명령어를 사용하면 다음과 같은 정보를 얻을 수 있다.  
| |total|used|free|shared|buff/cache|available|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|Mem:|125G|21G|92G|132K|11G|102G|
|Swap:|2.0G|1.2G|770M|
## 캐시 비우기
캐시를 비우는 방법은 크게 세 가지로 나눠볼 수 있으며, 통상적으로 1번의 방법을 사용하는 것이 가장 안전하다.   
1. pagecache 캐시 비우기  
$echo 1 > /proc/sys/vm/drop_caches  
2. dentry, inode 캐시 비우기  
$echo 2 > /proc/sys/vm/drop_caches  
3. pagecache, dentry, inode 캐시 비우기  
$echo 3 > /proc/sys/vm/drop_caches  
- 만약 permission denied가 된다면 아래와 같은 명령어를 사용하자  
$sudo sh -c "echo 1 > /proc/sys/vm/drop_caches"
## 용어 설명
- pagecache : 파일의 입출력(I/O)의 속도와 퍼포먼스를 높이기 위해 시스템이 할당한 메모리 영역(임시 메모리 저장소). 예를 들어 어떤 경로의 파일을 한 번 읽어들이면 시스템이 해당 파일 내용을 임시메모리에 저장시키는데 이후에 해당 파일을 다시 읽을 때 이를 새로 읽어들이지 않고 이 메모리에서 바로 불러오면 디스크의 읽기/쓰기 속도가 빨라지므로 효율이 높아짐. 윈도우 OS의 페이지 파일 같은 역할.  
- dentry : directory entry의 줄임말로 예를 들어 /usr/share 같은 경로에서 usr과 share를 지칭.  
- inode : 파일과 디렉토리에 관한 정보를 담고 있는 자료구조. 예를 들어 파일의 퍼미션 정보, 디스크 상의 파일의 물리적 위치, 크기, 생성된 일시 정보 등을 저장.  