import Vapor
import FluentSQLite

final class Acronym: Codable {
    var id: Int?
    var short: String
    var long: String
    
    internal init(short: String, long: String) {
        self.short = short
        self.long = long
    }
}

//extension Acronym: Model {
//    typealias Database = SQLiteDatabase
//    typealias ID = Int
//
//    static var idKey: IDKey = \Acronym.id
//}

extension Acronym: SQLiteModel {}
extension Acronym: Migration {}
extension Acronym: Content {}

