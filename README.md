# Learning Flutter

### Overview
* Flutter is Google's UI toolkit for building application for mobile, web, desktop from a single codebase

* Fast Development
  * With the mechanism Stateful Hot Reload: Easy to recognize the change when code is changed
* Expressive and Flexible UI
  * Build a flexible UI easily 
* Native Performance

### Flutter System

![Flutter System](https://hackernoon.com/hn-images/1*uXUhqyod87IqP0pVXPVjhg.png)


## Dart Syntax

#### Variable
```dart
var number =1;
// number =1.2  // Error, can not be assign

dynamic number2 = 1;
number2 ="number" ; // dynamic type allow to cast to different type

const int MyConst = 888; // value of const must be known when compile. So const int MyX = number2 cause error

final String MyName ="Top"; // final must have an initialize 
final int MyVal = number;
```
#### Function

##### return-type functionName (params){
  // Logic
}
```dart
int calcSquareFunction(int x){ 
  return x*x;
}
```
###### Optional params
``` dart 
void printSomething(String fullName, int age, { String optional}){
  print('Full Name: '+ fullName);
  print(age);
  if(optional!=null)
    print(optional);
}
printSomething('HDCong',21);
printSomething('HDCong',21, optional:'Optional Params');

```

###### Positional params
``` dart 
void printSomething([String fullName, String age, String optional]){
  print('Full Name: ' fullName);
  print(age);
  print(optional);
}
printSomething('HDCong','21','Positional Params');

```
###### Default params
``` dart 
void printSomething({String fullName="HDCong", int age, String optional}){
  print('Full Name: '+ fullName);
  print(age);
  print(optional);
}
printSomething(21,'Default Params')
```
###### Lambda function
```dart 
int getAge()=>10; // function return 10
```

#### Lists
``` dart
List<int> list1 = [ 1 , 2,3,4,5];
var list2 =[1,2,3,4,5];
// list1.add('hello') ; Cause error

List <Object> listObject = [1,2,3,4,5];
listObject.add('Hello');

List <dynamic> listObject2 = [1,2,3,4,5];
listObject.add('Hello');

var listObject3 = [ 1,2, '3', 4];
listObject3.add(1.2);
//Loop through list
listObject.forEach((item){
  print(item);
});


```


#### Collection if
``` dart
var threshold = 10;
var myCollection =[
1,
2,
3,
if( threshold==10) 'dart'
else 'flutter'
];
```

#### Collection for
``` dart
var myCollectionFor =[
  for( var i = 0; i <10; ++i){
    'Item ${i}'
  }
];
```
####  Sets
``` dart
var set={1,1,2,3,4}; //  {1,2,3,4}, unduplicated
```
####  Map
``` dart
var Animals={
  'dog':'4 legs',
  'chicken':'2 legs',
  'turtle': '4legs'
};
```

### OOP
``` dart

abstract class Animal {
  void talk() {
    print('Talk');
  }
}

// Interface
abstract class Mammal {
  void breath();

  void eat();
}

class Person extends Animal {
  double mTall;
  int mHeight;
}


// Inheritance
class Student extends Person implements Mammal {
// Attributes
  String mFullName; // Public attribute
  String mMajor;
  String mGender;
  double _GPA; // Private attribute

// Constructor
  Student(String fullName, String gender,
      {String major = 'Information Technology', double gpa = 0.0}) {
    mFullName = fullName;
    mGender = gender;
    mMajor = major;
    _GPA = gpa;
  }

/*  Factory Constructor

  Student.Male(){
    mGender = 'male';
  }
  Student.Female(){
    mGender ='female';
  }
  factory Student(type){
    if(type==1) return Student.Male();
    return Student.Female();
  }

*/

// Get set for private
  set GPA(gpaValue) => _GPA = gpaValue; // Lambda function
  double get GPA => _GPA;

// Methods
  void showInfo() {
    print('Full Name ' +
        mFullName +
        ', gender: ' +
        mGender +
        ', major: ' +
        mMajor +
        ', GPA= ' +
        _GPA.toString());
  }

  void _privateFunction() {
    print('Full Name ' +
        mFullName +
        ', gender: ' +
        mGender +
        ', major: ' +
        mMajor +
        ', GPA= ' +
        _GPA.toString());
  }

  @override
  void breath() {
    print('Student breath');
  }

  @override
  void eat() {
    print('Student eat');
  }
}

mixin Study {
  void studyHard() {
    print('Study');
  }
}
class MyStudent with Study {}

void main() {
  var st1 = Student('HDCong', 'male', major: 'Computer Science', gpa: 8.43);
  var st2 = Student('HDCong', 'male');
  st1.mTall = 1.7;
  st2.mHeight = 70;
//st1._privateFunction(); // Error
  st1.showInfo();

  st2.showInfo();
  st2.eat();
  st2.breath();
  var st3 = MyStudent();
  st3.studyHard();
}


```

## Flutter

### Stateful, Stateless Widget

- #### Stateful widget
  - Use when care about the state of widget (Ex: checkbox, form)
  - Have func: setState({})
  - Rebuild when call setState({})
  
- #### Stateless widget
  - No need to care about the state of widget after display
  - Do not have func: setState({})
  - Cannot rebuild itself
  - Rebuild from outside