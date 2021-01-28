# Chapter 2. 파이썬스러운 코드
## 인덱스와 슬라이스
파이썬의 slice를 사용할 때 파라미터로 시작값, 마지막값, 간격을 지정할 수 있다. 
```python
>>> my_numbers = [1,1,2,3,5,8,13,21]

# my_numbers의 1번 인덱스부터 6번 인덱스까지 2개 간격으로 출력
>>> print(my_numbers[1:7:2])
[1,3,8]
```
또한 slice는 파이썬 내장 객체로 구현이 되어 있어 직접 사용할 수도 있다.
```python
>>> my_numbers = [1,1,2,3,5,8,13,21]
>>> interval = slice(1,7,2)
>>> print(my_numbers[interval])
[1,3,8]
```

## 컨텍스트 관리자
컨텍스트 관리자는 사실상 모든 코드에 적용될 수 있으며 매우 유용하다.  
컨텍스트 관리자는 사전조건과 사후조건을 가지고 있어서 주요 동작의 전후에 실행하려고 할 때 유용하다.  
일반적으로 리소스 관리와 관련하여 컨텍스트 관리자를 자주 볼 수 있다.  
```python
with open(filename) as fd:
    process_file(fd)
```
with문은 컨텍스트 관리자로 집입하게 한다. 컨텍스트 관리자는 ```__enter__ ```와 ```__exit__``` 두 개의 매직 메소드로 구성된다.  
with문은 ```__enter__ ``` 메소드를 호출하고 이 메소드가 무엇을 반환하든 as 이후에 지정된 변수에 할당한다.  
그리고 with문 블록에 대한 마지막 문장이 끝나면  ```__exit__``` 메소드가 호출되며 컨텍스트가 종료된다.  
### 컨텍스트 관리자 구현
```__enter__ ```와 ```__exit__``` 매직 메소드만 구현하면 해당 객체는 컨텍스트 관리자 프로토콜을 지원할 수 있다.  
또한 표준 라이브러리 특히 contextlib 모듈을 사용하면 보다 쉽게 수현을 할 수 있다. contextlib 모듈은 컨텍스트 관리자를 구현하거나 더 간결한 코드를 작성하는 데 도움이 되는 많은 도우미 함수와 객체를 제공한다.  

먼저 contextmanager 데코레이터에 대해서 살펴보자면, 함수에 contextlib.contextmanager 데코레이터를 적용하면 해당 함수의 코드를 컨텍스트 관리자로 변환할 수 있다.
```python
import contextlib

@contextlib.contextmanager
def db_handler():
    stop_database()
    yield
    start_database()

with db_handler():
    db_backup()
```
이 함수는 yiled문을 사용했으므로 제너레이터가 된다. 그리고 @contextlib.contextmanager 데코레이터를 적용하면 yiled문 앞의 모든 것은 ```__enter__ ``` 메소드의 일부처럼 취급된다. 그리고 yiled문 다음에 오는 모든 것들은 ```__exit__```의 로직으로 볼 수 있다.  

또 다른 도우미 클래스는 contextlib.ContextDecorator이다. 이 클래스는 컨텍스트 관리자 안에서 실행될 함수에 데코레이터를 적용하기 위한 로직을 제공하는 믹스인 클래스이다.  
```python
class dbhandler_decorator(contextlib.ContextDecorator):
    def __enter__(self):
        stop_database()

    def __exit__(self, ext_type, ex_value, ex_traceback):
        start_database()

@dbhandler_decorator()
def offline_backup():
    run("pg_dump database")
``` 
앞의 예제와는 다르게 with문이 없으며 그저 함수를 호출하기만 하면 offline_backup 함수가 컨텍스트 관리자 안에서 자동으로 실행된다.  

contextlib.suppress는 컨텍스트 관리자에서 사용하는 util 패키지로 제공한 예외 중 하나가 발생한 경우에는 실패하지 않도록 한다.  
try/except 구문에서처럼 코드를 실행하고 예외를 전달하거나 로그를 남기는 것은 비슷하지만 suppress 메소드는 호출하면 로직에서 자체적으로 처리하고 있는 예외임을 명시할 수 있다.  
```python
import contextlib

with contextlib.suppress(DataConversionException):
    parse_data(input_json_or_dict)
```

## 프로퍼티, 속성과 객체 메소드의 다른 타입들
### 파이썬에서의 밑줄
```python
class Connector:
    def __init__(self,source):
        self.couurce = source
        self._timeout = 60
```
_timeout은 connector 자체에서만 사용되고 바깥에서는 호출되지 않는다.  
만약에 timeout 속성을 이중 밑줄로 정의했다고 가정해보자.  
이제 __timeout에 접근할 때 AttributeError 에러가 발생하는데, "이것은 private이다." 또는 "이것은 접근할 수 없다" 는 식으로 말하지 않고 단지 그것은 존재하지 않는다고 말한다.  
이것은 실제로 뭔가 다른 일이 벌여졌으며 부작용에 의한 결과로 생긴것이라는 것을 암시한다.  
파이썬에서 밑줄 두 개를 사용하면 다른 이름을 만든다. 이것을 **이름 맹글링**이라고 한다. 이중 밑줄은 파이썬스러운 코드가 아니다. 속성을 private으로 정의하려는 경우에는 밑줄을 하나만 사용하여 파이썬스러운 관습을 지키도록 해야 한다.  
### 프로퍼티
객체에 값을 저장해야 할 경우 일반적인 속성을 사용할 수 있다. 때로는 객체의 상태나 다른 속성의 값을 기반으로 어떤 계산을 하려고 할 때도 있다. 이런 경우에 대부분 프로퍼티를 사용하는 것이 좋다. 프로퍼티는 객체의 어떤 속성에 대한 접근을 제어하려는 경우에 사용한다.  
```python
import re

EMAIL_FORMAT = re.compile(r"[^@]+@[^@]+\.[^@]+")


def is_valid_email(potentially_valid_email: str):
    return re.match(EMAIL_FORMAT, potentially_valid_email) is not None


class User:
    def __init__(self, username):
        self.username = username
        self._email = None

    @property
    def email(self):
        return self._email

    @email.setter
    def email(self, new_email):
        if not is_valid_email(new_email):
            raise ValueError(
                f"Can't set {new_email} as it's not a valid email"
            )
        self._email = new_email
```
여게서 @property 메소드는 private 속성인 email 값을 반환한다.  
@email.setter 메소드에서는 설정하려고 하는 값이 실제 이메일 주소가 아닌 경우 명확하게 유효성 검사를 한다. 이메일 포맷에 문제가 없으면 새 값으로 속성을 업데이트한다.  
이렇게 하면. get_, set_ 접두어를 사용하여 메소드를 만드는 것보다 훨씬 더 간단하다.  
프로퍼티는 명령-쿼리 분리 원칙을 따르기 위한 좋은 방법이다. 명령-쿼리 분리 원칙은 객체의 메소드가 무언가의 상태를 변경하는 커맨드이거나 무언가의 값을 반환하는 쿼리이거나 둘 중에 하나만 수행을 해야지 둘 다 동시에 수행하면 안 된다는 원칙이다.  
객체의 메소드가 무언가를 하면서 동시에 질문에 대답하기 위해 상태를 반환한다면 이는 동시에 두 가지 작업을 하고 있는 것이고 명령-쿼리 분리 원칙을 위배하는 것이다.  
프로퍼티를 사용하면 이를 해결할 수 있다. @property 데코레이터는 무언가에 응답하기 위한 쿼리이고, @<property_name>.setter는 무언가를 하기 위한 커맨드이다.  

## 이터러블 객체
파이썬에는 리스트, 튜플처럼 기본적으로 반복 가능한 객체가 있다. 그러나 이러한 내장 반복형 객체 말고, 로직을 사용해 자체 이터러블을 만들 수도 있다.  
이터러블은 ```__iter__``` 매직 메소드를 구현핸 객체, 이터레이터는 ```__next__`` 매직 메소드를 구현핸 객체이다.  
### 이터러블 객체 만들기
객체를 반복하려고 하면 파이썬은 해당 객체의 iter() 함수를 호출한다. 이 함수가 처음으로 하는 것은 해당 객체에 ```__iter__``` 메소드가 있는지를 확인하는 것이다. 만약 있다면 ```__iter__``` 메소드를 실행한다.
```python
class DateRangeIterable:
    """An iterable that contains its own iterator object."""

    def __init__(self, start_date, end_date):
        self.start_date = start_date
        self.end_date = end_date
        self._present_day = start_date

    def __iter__(self):
        return self

    def __next__(self):
        if self._present_day >= self.end_date:
            raise StopIteration
        today = self._present_day
        self._present_day += timedelta(days=1)
        return today
```
for 루프를 이용하여 다음과 같이 반복을 할 수 있다.
```python
>>> for day in DateRangeIterable(date(2019,1,1), date(2019,1,5)):
        print(day)

2019-01-01
2019-01-02
2019-01-03
2019-01-04
```
### 시퀀스 만들기
객체에 ```__iter__``` 메소드를 정의하지 않았지만 반복하기를 원하는 경우도 있다. iter()함수는 객체에 ```__iter__```가 정의되어 있지 않으면 ```__getitem__```을 찾고 없으면 TypeError를 발생시킨다.  
시퀀스는 ```__len__```과 ```__getitem__```을 구현하고 첫 번째 인덱스 0부터 시작하여 포함된 요소를 한 번에 하나씩 차례로 가져올 수 있어야 한다. 즉 ```__getitem__```을 올바르게 구현하고 인덱싱이 가능하도록 주의를 기울여야 한다. 그렇지 않으면 반복이 작동하지 않게 된다.  
이터러블을 사용하면 메모리를 적게 사용하지만 n번째 요소를 얻기 위한 시간복잡도는 O(n)이며, 시퀀스는 더 많은 메모리가 사용되지만 특정 요소를 가져오기 위한 인덱싱의 시간복잡도는 O(1)에 해당한다.  
시퀀스는 다음과 같이 코드로 작성을 할 수 있다.
```python
class DateRangeSequence:
    """An range created by wrapping a sequence."""

    def __init__(self, start_date, end_date):
        self.start_date = start_date
        self.end_date = end_date
        self._range = self._create_range()

    def _create_range(self):
        days = []
        current_day = self.start_date
        while current_day < self.end_date:
            days.append(current_day)
            current_day += timedelta(days=1)
        return days

    def __getitem__(self, day_no):
        return self._range[day_no]

    def __len__(self):
        return len(self._range)
```
## 호출형 객체
함수처럼 동작하는 객체를 정의하면 매우 편리하다. 매직 메소드 ```__call__```을 사용하면 객체를 일반 함수처럼 호출할 수 있다.  
```python
class CallCount:

    def __init__(self):
        self._counts = defaultdict(int)

    def __call__(self, argument):
        self._counts[argument] += 1
        return self._counts[argument]
```
```python
>>> cc = CallCount()
>>> cc(1)
1
>>> cc(2)
1
>>> cc(1)
2
>>> cc(1)
3
>>> cc("something")
1
```