enum NetworkType {
    case none
    case google
    case unity
    case yodoMas
    case ironSource
    case facebook
    
    // Static function to convert string to NetworkType
    static func fromString(_ value: String) -> NetworkType {
        switch value {
        case "0": return .none
        case "1": return .google
        case "2": return .unity
        case "3": return .yodoMas
        case "4": return .ironSource
        case "5": return .facebook
        default: return .none
        }
    }
    var stringValue: String {
            switch self {
            case .none: return "0"
            case .google: return "1"
            case .unity: return "2"
            case .yodoMas: return "3"
            case .ironSource: return "4"
            case .facebook: return "5"
            }
        }
}
