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
### 자체 시퀀스 생성