//
//  MBTI.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

enum MBTI: String , Codable{
    case ISTJ, ISFJ, INFJ, INTJ
    case ISTP, ISFP, INFP, INTP
    case ESTP, ESFP, ENFP, ENTP
    case ESTJ, ESFJ, ENFJ, ENTJ
    case _default
    
    var type : String {
        switch self {
        case .ISTJ: return "ISTJ"
        case .ISFJ: return "ISFJ"
        case .INFJ: return "INFJ"
        case .INTJ: return "INTJ"
        case .ISTP: return "ISTP"
        case .ISFP: return "ISFP"
        case .INFP: return "INFP"
        case .INTP: return "INTP"
        case .ESTP: return "ESTP"
        case .ESFP: return "ESFP"
        case .ENFP: return "ENFP"
        case .ENTP: return "ENTP"
        case .ESTJ: return "ESTJ"
        case .ESFJ: return "ESFJ"
        case .ENFJ: return "ENFJ"
        case .ENTJ: return "ENTJ"
        case ._default: return "Unknown"
        }
    }
}
