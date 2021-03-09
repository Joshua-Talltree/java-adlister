package models;

public class Quote {

    private Author author;

    private String content;


    public Quote() {};

    public Quote(String author, String content){
        this.content = content;
    };

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
