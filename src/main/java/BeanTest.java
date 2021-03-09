import models.Album;
import models.Author;
import models.Quote;

import java.util.ArrayList;
import java.util.List;

public class BeanTest {

    public static void main(String[] args) {
        Album myalbum = new Album(2, "Michael Jackson", "Bad", 1987, "Hard rock, heavy metal, rhythm and blues, funk and rock", 22.2);
        System.out.println(myalbum.getGenre());

        Author newAuthor = new Author();
        newAuthor.setAuthorFirstName("Donald");
        newAuthor.setAuthorLastName("Mills");

        Quote aQuote = new Quote("Donald Mills","A writer is someone for whom writing is more difficult than it is for other people");


        List<Album> artistsList = new ArrayList() {
        };

        Album firstAlbum = new Album(2, "Michael Jackson", "Bad", 1987, "Hard rock, heavy metal, rhythm and blues, funk, rock", 22.2);
        Album secondAlbum = new Album(3, "Alanis Morissette", "Jagged Little Pill", 1995, "Alternative rock", 24.4);
        Album thirdAlbum = new Album(4, "Michael Jackson", "Dangerous", 1991, "New jack swing, R&B and pop", 17.0);
        Album forthAlbum = new Album(5, "Celine Dion", "Falling into you", 1996, "Pop, soft rock", 20.2);

        artistsList.add(0, firstAlbum);
        artistsList.add(1, secondAlbum);
        artistsList.add(2, thirdAlbum);
        artistsList.add(3, forthAlbum);

        System.out.println("Here is a list of the albums!");
        for (Album currentArtist : artistsList) {
            System.out.println(currentArtist.getArtist() + ", " + currentArtist.getName());
        }
    }
}