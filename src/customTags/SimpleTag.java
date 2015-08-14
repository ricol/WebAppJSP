package customTags;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;
import javax.servlet.jsp.tagext.Tag;

public class SimpleTag extends BodyTagSupport
{

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    public int doStartTag() throws JspException
    {
        JspWriter out = this.pageContext.getOut();
        try
        {
            out.print("Outside of a dog, a book is "
                + "a man's best friend. Inside of a dog "
                + "it's too dark to read.");
        } catch (IOException e)
        {
            throw new JspTagException("I/O Exception");
        }
        return Tag.SKIP_BODY;
    }
}
