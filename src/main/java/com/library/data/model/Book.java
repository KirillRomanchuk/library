package com.library.data.model;

public class Book implements Comparable {
    private Integer id;
    private String name;
    private Integer year;
    private Author author;
    private String info;
    private Enum language;

    @Override
    public int compareTo(Object o) {
        return 0;
    }

    public Book() {
    }

    public Book(Integer id, String name, Integer year, Author author, String info, Enum language) {
        this.id = id;
        this.name = name;
        this.year = year;
        this.author = author;
        this.info = info;
        this.language = language;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public Enum getLanguage() {
        return language;
    }

    public void setLanguage(Enum language) {
        this.language = language;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
