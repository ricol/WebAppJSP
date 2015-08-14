package javabeans.App2;

import java.util.Vector;
import javax.servlet.http.HttpServletRequest;

public class ShoppingCart
{

    private Vector<String> cart = null;
    String product = null;
    String submit = null;

    public ShoppingCart()
    {
        cart = new Vector<String>();
    }

    public void setProduct(String product)
    {
        this.product = product;
    }

    public void setSubmit(String submit)
    {
        this.submit = submit;
    }

    public Vector<String> getProducts()
    {
        return cart;
    }

    public void addProduct(String product)
    {
        cart.add(product);
    }

    public void removeProduct(String product)
    {
        cart.remove(product);
    }

    public void reset()
    {
        submit = null;
        product = null;
    }

    public void processRequest(HttpServletRequest req)
    {
        if (submit != null)
        {
            if (submit.equals("add"))
                addProduct(product);
            else
                removeProduct(product);
        }
        reset();
    }

}
