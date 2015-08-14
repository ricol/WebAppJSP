package classes;

public class People
{

    public enum SEX
    {

        MALE, FEMALE
    };

    private String m_strName;
    private Integer m_age;
    private SEX m_sex;

    public People(String tmpName, int tmpAge, SEX tmpSex)
    {
        m_strName = tmpName;
        m_age = tmpAge;
        m_sex = tmpSex;
    }

    public String getName()
    {
        return m_strName;
    }

    public Integer getAge()
    {
        return m_age;
    }

    public SEX getSex()
    {
        return m_sex;
    }

    public void setSex(SEX tmpSex)
    {
        m_sex = tmpSex;
    }

    public void setAge(int tmpAge)
    {
        m_age = tmpAge;
    }

    public void setName(String tmpName)
    {
        m_strName = tmpName;
    }
}
