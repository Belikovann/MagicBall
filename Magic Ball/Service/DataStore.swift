//
//  DataStore.swift
//  Magic Ball
//
//  Created by Аня Беликова on 26.06.2023.
//
import SwiftUI

final class DataStore{
    
    static let shared = DataStore()
    
    let englishAnswer = [
        "Yes",
        "Good prospects",
        "Signs say Yes",
        "100% yes",
        "Without doubt",
        "Can be sure",
        "It is possible",
        
        "No",
        "Don`t count on it",
        "I see it as No",
        "You better forget about it",
        "Very doubtful",
        
        "Ask again later",
        "There`s no certain way to predict",
        "Ask tomorrow"
    ]
    
    let russianAnswer = [
        "Да",
        "Перспективы хорошие",
        "Знаки говорят Да",
        "100% да",
        "Можешь быть уверен",
        "Без сомнения",
        "Это возможно",
        
        "Нет",
        "Не рассчитывай на это",
        "Я вижу это как нет",
        "Лучше забудь об этом",
        "Очень сомнительно",
        
        "Спроси еще раз позже",
        "Сейчас нельзя предсказать",
        "Спроси завтра"
    ]
    
    private init() {}
    
}

extension DataStore {
    
    static func getEnglishAnswer() -> String {
        let englishAnswers = DataStore.shared.englishAnswer
        let englishAnswer = "\(englishAnswers[Int.random(in: 0..<englishAnswers.count)])"
        
        return englishAnswer
    }
    
    static func getRussianAnswer() -> String {
        let russianAnswers = DataStore.shared.russianAnswer
        let russianAnswer = "\(russianAnswers[Int.random(in: 0..<russianAnswers.count)])"
        
        return russianAnswer
    }
    
}
