import UIKit



class Book{
    let name: String
    let purchaseID: Int
    let marketPrice: Double
    
    
    init(name: String, purchaseID: Int, marketPrice: Double) {
        self.name = name
        self.purchaseID = purchaseID
        self.marketPrice = marketPrice
    }
    
    
    func bookPrinter() -> String {
        return "Name: \(self.name) Price: \(marketPrice) Purchace Id: \(purchaseID)"
    }
        
}

class Shelf{
    private let shelfName: String
    private var books = [Book]()
    
    init(shelfName: String) {
        self.shelfName = shelfName
    }

    func add(book : Book ){
        self.books.append(book)
    }
    
    func delete(book : Book){
    
    }
    
    
    func printer() {
        for b in self.books{
            print(b.bookPrinter())
        }
    }
    
  
    
}


var book = Book(name: "A book", purchaseID: 12, marketPrice: 9.90)

var bookIntheshelf = Shelf(shelfName: "Book Shelf")


bookIntheshelf.add(book: book)
bookIntheshelf.add(book: book)
bookIntheshelf.add(book: book)


bookIntheshelf.printer()
