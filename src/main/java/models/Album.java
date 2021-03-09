package models;

import java.util.Date;

public class Album {

    private int id;

    private String artist;

    private String name;

    private Integer releaseDate;

    private String genre;

    private Double sales;

    public Album () {};

    public int getId() {
        return id;
    }

    public Album (int id, String artist, String name, Integer releaseDate, String genre, Double sales) {
        this.id = id;
        this.artist = artist;
        this.releaseDate = releaseDate;
        this.genre = genre;
        this.sales = sales;
    };

    public void setId(int id) {
        this.id = id;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Integer releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Double getSales() {
        return sales;
    }

    public void setSales(Double sales) {
        this.sales = sales;
    }
}
