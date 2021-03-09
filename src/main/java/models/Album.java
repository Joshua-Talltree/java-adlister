package models;

import java.util.Date;

public class Album {

    private int id;
    private String artist;
    private String name;
    private int releaseDate;
    private String genre;
    private Double sales;

    public Album () {};

    public Album (int id, String artist, String name, Integer releaseDate, String genre, Double sales) {
        this.id = id;
        this.artist = artist;
        this.releaseDate = releaseDate;
        this.genre = genre;
        this.sales = sales;
    };

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getArtist() {
        return this.artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getReleaseDate() {
        return this.releaseDate;
    }

    public void setReleaseDate(Integer releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getGenre() {
        return this.genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Double getSales() {
        return this.sales;
    }

    public void setSales(Double sales) {
        this.sales = sales;
    }
}
