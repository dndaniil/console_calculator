print("Добро пожаловать в программу калькулятор")

func getDataForUser(description: String) -> String {
    print(description)
    return readLine() ?? ""
}

let operation = getDataForUser(description: "Выберите операцию: +, -, *  или /" )
let firstNunber = getDataForUser(description: "Введите первое число:" )
let secondNunber = getDataForUser(description: "Введите второе число:" )

func showResult(_ result: Int) {
    let result = String(result)
    let description = "Результат :"
    print(description + " " + result)
}

print("Идет вычисление примера: ", firstNunber + " " + operation + " " + secondNunber)

func calculate (operation: String, firstNunber: Int, secondNunber: Int ) {
    switch operation {
    case "+": showResult(firstNunber + secondNunber)
    case "-": showResult(firstNunber - secondNunber)
    case "*": showResult(firstNunber * secondNunber)
    case "/":
        if secondNunber != 0 {
            showResult(firstNunber / secondNunber)
        } else {
            print("Делить на 0 нельзя")
        }
        
    default: print("Вы ввели неверную операцию")
    }
}

if let firstNunber = Int(firstNunber) {
   if let secondNunber = Int(secondNunber) {
       calculate(operation: operation, firstNunber: firstNunber, secondNunber: secondNunber)
    } else {
        print("Вы ввели неверное второе число")
    }
} else {
    print("Вы ввели неверное первое число")

}




