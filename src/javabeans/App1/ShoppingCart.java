package javabeans.App1;

import java.util.ArrayList;
import java.util.Iterator;

public class ShoppingCart
{

    private ArrayList<Book> items = new ArrayList<Book>();

    public void addItem(Book b)
    {
        boolean foundBook = false;

        if (items.size() == 0)
        {
            items.add(b);
        } else
        {
            for (int i = 0; i < items.size(); i++)
            {
                Book book = items.get(i);
                if (book.getISBN().equals(b.getISBN()))
                {
                    book.setQuantity(book.getQuantity() + 1);
                    foundBook = true;
                    break;
                }
            }
            if (!foundBook)
            {
                items.add(b);
            }
        }
    }

    public Iterator<Book> getContents()
    {
        return items.iterator();
    }

}
