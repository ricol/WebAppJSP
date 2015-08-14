package javabeans;

public class ColorPreferences
{

    private String background = "white", foreground = "black";

    public void setForeground(String foreground)
    {
        this.foreground = foreground;
    }

    public String getForeground()
    {
        return this.foreground;
    }

    public void setBackground(String background)
    {
        this.background = background;
    }

    public String getBackground()
    {
        return this.background;
    }
}
