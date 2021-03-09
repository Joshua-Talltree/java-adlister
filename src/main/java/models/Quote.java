package models;

public class Quote extends Author{

    private String author;

    private String content;


    public Quote() {};

    public Quote(String author, String content){
        this.content = content;
    };

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
