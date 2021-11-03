import Foundation
import SwiftUI

struct RainForecast : Decodable {
    var frames: DecodedArray
}

struct DecodedArray: Decodable {
    var array: [Frame]
    
    private struct DynamicCodingKeys: CodingKey {
        
        
        var stringValue: String
        init?(stringValue: String) {
            self.stringValue = stringValue
        }
        
        var intValue: Int?
        init?(intValue: Int) {
            return nil
        }
    }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
        var tempArray = [Frame]()
        
        for key in container.allKeys {
            let decodedObject = try container.decode(Frame.self, forKey: DynamicCodingKeys(stringValue: key.stringValue)!)
            tempArray.append(decodedObject)
        }
        
        array = tempArray
    }
}

struct Frame: Codable, Identifiable {
    //let processed_time: Int
    //let tile_id: String
    //let filename: String
    let id = UUID()
    let source: String
    let dbz: CGFloat
    let timestamp: Int
    
    enum CodingKeys: CodingKey {
        case source
        case dbz
    }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        source = try container.decode(String.self, forKey: CodingKeys.source)
        dbz = try container.decode(CGFloat.self, forKey: CodingKeys.dbz)
        timestamp = Int(container.codingPath[1].stringValue)!
    }
}
