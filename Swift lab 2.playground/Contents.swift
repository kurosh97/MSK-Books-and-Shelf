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
      private var averageBookPrice: Double
      private var howManyBooksInTheShelf: Int
    
    init(shelfName: String) {
         self.shelfName = shelfName
         self.averageBookPrice = 0
         self.howManyBooksInTheShelf = 0
     }

     func add(book: Book){
        if !setOfBooks.contains(book) {
             setOfBooks.insert(book)
            self.averageBookPrice += book.marketPrice
            self.howManyBooksInTheShelf += 1
       
        }else{
            print("Book already exists")
        }
     }

     func delete(book: Book){
         setOfBooks.remove(book)
     }
   
    func averagePrice(){
        print("Average: \(self.averageBookPrice / Double(self.howManyBooksInTheShelf))")
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
myShelf.add(book: myBook)
myShelf.printer()


myShelf.averagePrice()
