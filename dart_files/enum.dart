//! Simple Enum Example
enum EmployeeType { HardWorking, SmartWorker, Lazy }

//! Enum with Parameter and Constructor - Complex
enum Employee {
  EmployeeA(employeeType: EmployeeType.HardWorking, totalExp: '3'),
  EmployeeB(employeeType: EmployeeType.SmartWorker, totalExp: '6'),
  EmployeeC(employeeType: EmployeeType.SmartWorker, totalExp: '1'),
  EmployeeD(employeeType: EmployeeType.Lazy, totalExp: '5');

  //! Enum Class Variables
  final EmployeeType employeeType;
  final String totalExp;

  //! Constructor 
  const Employee({required this.employeeType, required this.totalExp});

  //! Getter to get BOOL after condition check 
  bool get isWorthyEmployee => employeeType == EmployeeType.SmartWorker && totalExp == '6';

}

void main() {
  Employee employee = Employee.EmployeeA;
  if (employee.isWorthyEmployee) {
    print('Worthy!');
  } else {
    print('Not Worthy!');
  }
}
