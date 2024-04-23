print("Добро пожаловать в программу калькулятор")

print("Выберите операцию: +, -, *  или /")
let operation = readLine() ?? ""

print("Введите первое число:")
let firstNunber = readLine() ?? ""

print("Введите второе число:")
let secondNunber = readLine() ?? ""

print("Идет вычисление примера: ", firstNunber + " " + operation + " " + secondNunber)

if let firstNunber = Int(firstNunber) {
   if let secondNunber = Int(secondNunber) {
       switch operation {
       case "+": print("Результат: " + String( firstNunber + secondNunber))
       case "-": print("Результат: " + String( firstNunber - secondNunber))
       case "*": print("Результат: " + String( firstNunber * secondNunber))
       case "/":
           if secondNunber != 0 {
               print("Результат: " + String( firstNunber / secondNunber))
           } else {
               print("Делить на 0 нельзя")
           }
           
       default: print("Вы ввели неверную операцию")
       }
    } else {
        print("Вы ввели неверное первое число")
    }
} else {
    print("Вы ввели неверное первое число")
}


