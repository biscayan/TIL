# Anaconda
- **Anaconda 설치**  
e.g. 2020년 7월 버전 아나콘다 설치  
$ wget http://repo.continuum.io/archive/Anaconda3-2020.07-Linux-x86_64.sh  
$ bash Anaconda3-2020.07-Linux-x86_64.sh

- **가상환경 생성**  
$ conda create --name 가상환경이름 설치할패키지  
$ conda create -n 가상환경이름 설치할패키지  
e.g. myspace라는 이름의 가상환경을 생성하고 파이썬3.6버전 설치  
$ conda create --myspace python=3.6  
$ conda create -n myspace python=3.6

- **설치된 가상환경 목록 확인**  
$ conda -info envs  

- **가상환경 활성화**  
$ conda activate 가상환경이름

- **가상환경 비활성화**  
$ conda deactivate 가상환경이름

- **가상환경에 설치된 패키지들 확인**  
$ conda list

- **가상환경 삭제**  
$ conda remove --name 가상환경이름 --all  
$ conda remove -n 가상환경이름 -all


