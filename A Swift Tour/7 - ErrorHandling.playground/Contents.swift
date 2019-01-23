/*
 These are possible solutions to the exercises (or "Experiments") proposed in the book The Swift Programming Language - Swift 4.2 (https://swift.org/documentation/#the-swift-programming-language)
 
 
 Code by Ana Carolina Barreto
 @thepurpleana || thepurpleana@gmail.com
 JAN - 2019
 */


//MARK: - Error Handling

/// - Experiment: Change the printer name to "Never Has Toner", so that the send(job:toPrinter:) function throws an error.

enum PrinterError: Error {
    
    case outOfPaper
    case noToner
    case onFire
    
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    
    return "Job sent."
    
}

///


/// - Experiment: Add code to throw an error inside the do block. What kind of error do you need to throw so that the error is handled by the first catch block? What about the second and third?

do {
    
    let printerResponse = try? send(job: 1040, toPrinter: "Never Has Toner")
    print(printerResponse ?? "nil")
    
    //comment lines to see the different errors being thrown.
    //first catch
    throw PrinterError.onFire
    
    //second catch
    throw PrinterError.outOfPaper
    
    //third catch
    //TODO: - throw error for third block
    
} catch PrinterError.onFire {
    print("I'll just put this over here with the rest of the fire.")
    
} catch let printerError as PrinterError {
    print("Printer Error: \(printerError).")
    
} catch {
    print(error)
    
}

///

//
