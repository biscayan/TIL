# Visual Studio Code (vscode) debugging
- debugging은 vscode에서 f5를 눌러서 실행 가능하다.
- ctrl + f5는 debugging 없이 코드를 실행하게 된다.
## breakpoint
- breakpoint는 라인의 왼쪽공백을 눌러 설정하거나 라인 클릭 후 f9를 누르면 된다.
- 라인 왼쪽에 빨간 점이 생겼으면 정상적으로 breakpoint가 지정된 것이다.
- breakpoint를 설정하면 debugging 시에 해당 라인에서 동작을 멈추게 된다.
## continue 
- debugging 상태에서 f5를 눌러 실행
- continue는 다음 breakpoint로 이동하게 한다.
## step over
- debugging 상태에서 f10을 눌러 실행
- step over는 breakpoint에서 다음 라인으로 이동하게 한다.
- 다음 라인이 함수일 경우에 함수 내부로는 이동하지 않고 바로 실행한다.
## step into
- debugging 상태에서 f11을 눌러 실행
- step into는 breakpoint에서 다음 라인으로 이동하게 된다.
- 다음 라인이 함수일 경우에 함수 내부로 들어가서 함수의 동작을 수행한다.
## step out
- debugging 상태에서 shift + f11을 눌러 실행
- step out은 현재 함수의 나머지 부분을 실행시키고 함수의 리턴으로 이동한다.
- step into를 통해 함수 안으로 들어간 상태에서 바로 return으로 넘어가고 싶을 때 사용하면 유용하다.
## variables
- 코드에서 정의된 local, global 변수들을 보여준다.
- variables에서 변수의 값을 바로 바꿀 수도 있다.
## watch
- debugging 상태에서 좌측 watch에 +버튼을 눌러 확인하고 싶은 것을 살펴볼 수 있다.
## call stack
- call stack은 현재 어떤 함수가 실행되고 있고, 함수가 어디에서 호출되었는지를 알려준다.
## cursor
- jump to cursor는 이전의 코드들을 건너뛰고 해당 커서가 있는 라인으로 이동한다.
- run to cursor는 이전의 코드들을 실행하고 해당 커서가 있는 라인으로 이동한다. 