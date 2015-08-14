package javabeans.App1;

public class Book
{

    String ISBN;
    String bookTitle;
    float price;
    int quantity;

    public Book()
    {
        ISBN = "";
        bookTitle = "";
        price = (float) 0.0;
        quantity = 0;
    }

    public void setISBN(String ISBN)
    {
        this.ISBN = ISBN;
    }

    public void setBookTitle(String BookTitle)
    {
        this.bookTitle = BookTitle;
    }

    public void setPrice(float price)
    {
        this.price = price;
    }

    public void setQuantity(int quantity)
    {
        this.quantity = quantity;
    }

    public String getISBN()
    {
        return this.ISBN;
    }

    public String getBookTitle()
    {
        return this.bookTitle;
    }

    public float getPrice()
    {
        return this.price;
    }

    public int getQuantity()
    {
        return this.quantity;
    }
}
