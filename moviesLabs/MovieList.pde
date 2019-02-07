import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;

public class MovieList{
  int count;
  ArrayList<Movie> movieList;
  Iterator<Movie> it;//import iterator
  
  public MovieList(){
     movieList= new ArrayList<Movie>();
     count=movieList.size();
  }
  public void loadMovies(){
    //loads data, keeps track of count
  }
  public int getCount(){
    return count;
  }
  public float getAverageScore(){
    println("steve don't go past 600");
    int t=0;
    int count=0;
    float av;
    for(Movie m: movieList){
      t+=m.getRating();
      count++;
    }
    av=(t/count);
    return av;
  }
  public String overallComment(){
    float sc=this.getAverageScore();
    if(sc>3.5){
      return "this movie is superb";
    }
    else if(sc>3){
      return "this movie is pretty good";
    }
    else if(sc>2){
      return "borderline.";
    }
    else if(sc>1){
      return "sorry but this was kind of a waste of your time";
    }
    else return "oof did you watch the whole thing???";
  }
  public void sortMoviesByCount(){
    Collections.sort(movieList);
  }
  public String toString(){
    StringBuilder s=new StringBuilder();
    it=movieList.iterator();
    String fin;
    while (it.hasNext()){
      s.append(""+it.next()+" ");
    }
    fin= String.valueOf(s);
    return fin;
  }
}
