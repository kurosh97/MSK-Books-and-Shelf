import UIKit



class Book{
    private let name: String
    private let purchaseID: Int
    private let marketPrice: Double
    
    
    init(name: String, purchaseID: Int, marketPrice: Double) {
        self.name = name
        self.purchaseID = purchaseID
        self.marketPrice = marketPrice
    }
        
}

class Shelf{
    private let shelfName: String
    private var books = [Book]()
    
    init(shelfName: String) {
        self.shelfName = shelfName
    }

    func add(books : Book ){
        self.books.append(books)
    }
    
    
  
    
}


var book = Book(name: "A book", purchaseID: 12, marketPrice: 9.90)

var bookIntheshelf = Shelf(shelfName: "Book Shelf")


bookIntheshelf.add(books: book)

