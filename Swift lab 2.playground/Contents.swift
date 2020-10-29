import UIKit




class Book: Hashable{
    let name: String
    let purchaseID: Int
    let marketPrice: Double


    init(name: String, purchaseID: Int, marketPrice: Double) {
        self.name = name
        self.purchaseID = purchaseID
        self.marketPrice = marketPrice
    }
    static func == (lhs: Book, rhs: Book) -> Bool {
         return lhs.purchaseID == rhs.purchaseID
     }
     
     func hash(into hasher: inout Hasher) {
         hasher.combine(purchaseID)
     }

    func bookPrinter() -> String {
        return "Name: \(self.name) Price: \(marketPrice) Purchace Id: \(purchaseID)"
    }

}

class Shelf{
      private let shelfName: String
     private var setOfBooks = Set<Book>()

     init(shelfName: String) {
         self.shelfName = shelfName
     }

     func add(book: Book){
         if !setOfBooks.contains(book) {
             setOfBooks.insert(book)
         }
     }

     func delete(book: Book){
         setOfBooks.remove(book)
     }
   

    
    func printer() {
        for books in self.setOfBooks{
            print(books.bookPrinter())
        }
            

    }
}




var myBooks = Book(name: "my book", purchaseID: 12, marketPrice: 12.9)
var myBook = Book(name: "my book", purchaseID: 13, marketPrice: 12.9)


var myShelf = Shelf(shelfName: "My Shalf")


myShelf.add(book: myBooks)
myShelf.add(book: myBook)


myShelf.printer()
