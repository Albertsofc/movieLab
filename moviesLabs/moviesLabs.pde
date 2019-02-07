import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.io.File;
import java.util.Collections;
import static java.lang.System.*;
PImage oscar=new PImage();
PImage closeEn=new PImage();
PImage openEn=new PImage();
int clicks;

MovieList m=new MovieList();
void setup(){
  oscar=loadImage("oscar.jpg");
  closeEn=loadImage("closed.png");
  openEn=loadImage("open.png");
  size(1500,968);
  background(oscar);
  try{
    Scanner scan=new Scanner(new File("movieReview.txt"));
    while (scan.hasNext()){
      //m.loadMovies(scan.nextLine());
      m.loadMovies();
    }
  }
  catch(Exception e){
   println(e);
  }
  println(m);
  
}
void draw(){
  if(clicks%3==1){
    scene1();
  }
  else if(clicks%3==2){
    scene2();
    controls();
  }
}

void mouseClicked(MouseEvent e){
  clicks++;
}
void controls(){
}
void scene1(){
  image(closeEn, (width/2)-479,(height/2)-450);
}
void scene2(){
  image(openEn, (width/2)-449,(height/2)-413.5);
}
