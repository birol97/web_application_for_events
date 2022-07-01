package main_app;

public class events {
  private String Title;
  private String Location;
  private int Price;
  private int event_id;
  private int attendess;
  public events(String Title, String Location,int Price,int event_id)
  {
	  this.event_id = event_id;
      this.Title = Title;
      this.Location = Location;
      this.Price = Price;
      
      
      
  }
  public void setattendnumb(int x) {
	  
	  attendess = x;
	  
  }
  
  
  public String getTitle() { return Title; }
  public String getLocation() { return Location; }
  public String getPrice() {
	  
	  
	  
	  return Title; }
  public void seteventprice(int price) {
	  
	  this.Price = price;
  };
  public int returnprice() {
	  
	  return Price;
  };
  public int geteventid() {return event_id;};
  public int getnumb() {return attendess;};
}
