var arrayOfWords = [String]()

func read(_ array: inout [String]) {    
    var line : String?
    
    repeat {
        line = readLine()?.lowercased()
        if line != nil {
            array.append(line!)
//            print(line!)
        }
    } while line != nil
}

func printArray(array: [String]) {
    for element in array {
        print(element)
    }
}

func selectionSorter(_ unsorted: inout [String] ) {
    for index in 0 ..< unsorted.count - 1 {
        var tempSmallest = index
        for i in index ..< unsorted.count {
   
            if unsorted[i] < unsorted[tempSmallest] {
                tempSmallest = i                
            }
            if i == unsorted.count - 1 {
                unsorted.swapAt(tempSmallest, index)
//                print("Pass: \(index+1), Swaps: 1/\(index+1), Array: \(unsorted)")               
            }
        }
    }
}

read(&arrayOfWords)
selectionSorter(&arrayOfWords)
printArray(array: arrayOfWords)
