import models.Album;

import java.util.ArrayList;
import java.util.List;

public class BeanTest {

    public static void main(String[] args) {
        Album myalbum = new Album (2, "Michael Jackson", "Bad", 1987, "Hard rock, heavy metal, rhythm and blues, funk and rock", 22.2 );
        System.out.println(myalbum.getGenre());
    }

    List<Album> artistsList = new ArrayList(){

    };

}
