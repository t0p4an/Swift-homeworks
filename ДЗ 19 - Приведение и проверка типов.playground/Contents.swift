import UIKit

//1. Сделать библиотеку книг и видео библиотеку фильмов
//2. Возможность добавлять новые книги и фильмы, после добавления должна происходить автоматическая сортировка по алфавиту
//3. Сделать так чтобы, когда я вызову метод (создайте сами его) - "sortByMood", то фильмы должны отсортировать по настроению
//4. Такой же метод придумать для книг

class Library {
    let title: String
    
    init(title: String) {
        self.title = title
    }
}

class BookLibrary: Library {
    let author: String
    let mood: Bool
    
    init(title: String, author: String, mood: Bool) {
        self.author = author
        self.mood = mood
        super.init(title: title)
    }
}

class FilmLibrary: Library {
    let director: String
    let mood: Bool
    
    init(title: String, director: String, mood: Bool) {
        self.director = director
        self.mood = mood
        super.init(title: title)
    }
}

var library: [Library] = []

library.append(BookLibrary(title: "Война и мир", author: "Лев Толстой", mood: true))
library.append(BookLibrary(title: "Преступление и наказание", author: "Фёдор Достоевский", mood: false))
library.append(BookLibrary(title: "Мастер и Маргарита", author: "Михаил Булгаков", mood: false))

library.append(FilmLibrary(title: "Список Шиндлера", director: "Стивен Спилберг", mood: false))
library.append(FilmLibrary(title: "Начало", director: "Кристофер Нолан", mood: true))
library.append(FilmLibrary(title: "Криминальное чтиво", director: "Квентин Тарантино", mood: true))

@MainActor
func sortByAlphabet() {
    library.sort { $0.title < $1.title }
}

sortByAlphabet()

@MainActor
func sortBooksByMood() -> [BookLibrary] {
    library
        .compactMap { $0 as? BookLibrary }
        .sorted { $0.mood && !$1.mood }
}

sortBooksByMood()

@MainActor
func sortFilmsByMood() -> [FilmLibrary] {
    library
        .compactMap { $0 as? FilmLibrary }
        .sorted { $0.mood && !$1.mood }
}

sortFilmsByMood()
