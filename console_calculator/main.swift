import Darwin

print("Добро пожаловать в программу калькулятор")

var history: [String] = []

while true {
    let action = getDataForUser(description: "Что вы хотите сделать: с - рассчет примера, q - выход из калькулятора, h - просмотр истории")
    switch action {
    case "c":
        operation()
    case "q":
        exit(0)
    case "h":
        showHistory()
    default: print("Недопустимое действие")
    }
    print("")
    print("-----------------------------------------------------")
    print("")
    
    
    
    func operation() {
    let operation = getDataForUser(description: "Выберите операцию: +, -, ; или /")
    guard operation == "+" || operation == "-" || operation == "*" || operation == "/" else {
        print("Вы ввели неверную оперцию")
        return
    }
    let firstNumber = getDataForUser(description: "Введите первое число:" )
    guard let firstNumber = Int(firstNumber) else {
        print("Вы ввели неверное первое число")
        return
    }
    let secondNumber = getDataForUser(description: "Введите второе число:" )
    guard let secondNumber = Int(secondNumber) else {
        print("Вы ввели неверное второе число")
        return
    }
    
    let example = String(firstNumber) + " " + operation + " " + String(secondNumber)
    print("Идет вычисление примера: ", example)
        let result = calculate (operation: operation, firstNumber: firstNumber, secondNumber: secondNumber)
    guard let result = result else { return }
    
    showResult(result)
    history.append(example + " = " + String(result))
    }
        
}


func getDataForUser(description: String) -> String {
    print(description)
    return readLine() ?? ""
}

func showResult(_ result: Int) {
    let result = String(result)
    let description = "Результат :"
    print(description + " " + result)
}



func calculate (operation: String, firstNumber: Int, secondNumber: Int ) -> Int? {
    switch operation {
    case "+": return firstNumber + secondNumber
    case "-": return firstNumber - secondNumber
    case "*": return firstNumber * secondNumber
    case "/":
        if secondNumber != 0 {
            return firstNumber / secondNumber
        } else {
            print("Делить на 0 нельзя")
            return nil
        }
        
    default: print("Вы ввели неверную операцию")
        return nil
    }
}


func showHistory() {
    for example in history {
        print(example)
    }
}






