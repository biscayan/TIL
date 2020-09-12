# Tmux (Terminal multiplexer)
- **Tmux 설치**  
$ sudo apt-get install tmux

- **세션 생성 (숫자가 이름으로 지정)**  
$ tmux

- **세션 생성 (원하는 이름 지정)**  
$ tmux new -s 세션이름  
$ tmux new-session -s 세션이름

- **세션 이름 수정**  
ctrl + b, $

- **세션 detach**  
ctrl + b, d

- **세션 attach**  
$ tmux attach -t 세션이름

- **세션 attach(마지막 세션 열기)**  
$ tmux a

- **세션 리스트 보기**  
$ tmux ls

- **세션 내부에서 세션 종료**  
$ exit

- **세션 외부에서 세션 종료**  
$ tmux kill-session -t 세션이름

- **스크롤 사용**
ctrl + b + [

- **스크롤 상태 빠져나가기**
q