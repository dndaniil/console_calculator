import Darwin

print("Добро пожаловать в программу калькулятор")

var history: [String] = []

while true {
    let operation = getDataForUser(description: "Выберите операцию: +, -, *  или /. Для завершения программы нажмите q. Для просмотра истории введите h" )
    if operation == "q" {
        exit(0)
    } else if operation == "h"{
        for example in history {
            print(example)
        }
        continue
    }
    let firstNunber = getDataForUser(description: "Введите первое число:" )
    let secondNunber = getDataForUser(description: "Введите второе число:" )
    let example = firstNunber + " " + operation + " " + secondNunber
    print("Идет вычисление примера: ", example)

    if let firstNunber = Int(firstNunber) {
       if let secondNunber = Int(secondNunber) {
           let result = calculate(operation: operation, firstNunber: firstNunber, secondNunber: secondNunber)
           if let result = result {
               showResult(result)
               history.append(example + " = " + String(result))
           }
        } else {
            print("Вы ввели неверное второе число")
        }
    } else {
        print("Вы ввели неверное первое число")
    }
    print("")
    print("-----------------------------------------------------")
    print("")
    
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

func calculate (operation: String, firstNunber: Int, secondNunber: Int ) -> Int? {
    switch operation {
    case "+": return firstNunber + secondNunber
    case "-": return firstNunber - secondNunber
    case "*": return firstNunber * secondNunber
    case "/":
        if secondNunber != 0 {
            return firstNunber / secondNunber
        } else {
            print("Делить на 0 нельзя")
            return nil
        }
        
    default: print("Вы ввели неверную операцию")
        return nil
    }
}









