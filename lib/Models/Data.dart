
import 'package:flutter_kitap_bar/Models/BookModel.dart';

var categoryData = [
  {
    "icon": "Assets/Icons/heart.svg",
    "lebel": "Романтика",
  },
  {
    "icon": "Assets/Icons/plane.svg",
    "lebel": "Путешествие",
  },
  {
    "icon": "Assets/Icons/world.svg",
    "lebel": "Документальная",
  },
  {
    "icon": "Assets/Icons/heart.svg",
    "lebel": "Комедия",
  },
];

var bookData = [
  BookModel(
      id: "1",
      title:
          "Boundraties",
      description:
          "Часто ли вы чувствуете, что не можете сказать «нет»? Вы слишком разграничены между отношениями и обязанностями? Неужели никогда нет времени делать то, что действительно важно для вас? Есть решение этого современного хаоса: границы.",
      aboutAuthor: "Виктория Ламберт",
      audioLen: "20",
      author: "Виктория Ламберт",
      coverUrl: "Assets/Images/boundraries.jpg",
      rating: "4.2",
      category: "Documentary",
      numberofRating: "10",
      price: 100,
      pages: 115,
      language: "ENG",
      bookurl:
          "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf"),
  BookModel(
      id: "2",
      title: "Daily Stoice",
      description:
          "n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
      aboutAuthor: "Автор Автор",
      audioLen: "20",
      author: "Автор Автор",
      coverUrl: "Assets/Images/daily stoic.jpg",
      rating: "4.2",
      category: "Documentary",
      price: 100,
      numberofRating: "10",
      language: "ENG",
      pages: 234,
      bookurl:
          "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf"),
  BookModel(
      id: "3",
      title: "Give and Take",
      description:
          "n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
      aboutAuthor: "Автор Автор",
      audioLen: "20",
      author: "Автор Автор",
      coverUrl: "Assets/Images/Give and Take.jpg",
      rating: "4.2",
      category: "Documentary",
      numberofRating: "10",
      price: 100,
      language: "ENG",
      pages: 234,
      bookurl:
          "http://www.africau.edu/images/default/sample.pdf"),
  BookModel(
    id: "4",
    title: "When the moon split",
    description:
        "n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
    aboutAuthor: "Автор Автор",
    audioLen: "20",
    author: "Автор Автор",
    coverUrl: "Assets/Images/When the moon split.jpg",
    rating: "4.2",
    category: "Documentary",
    price: 100,
    pages: 234,
    language: "ENG",
    numberofRating: "10",
    bookurl:
        "https://www.pdf995.com/samples/pdf.pdf",
  )
];
