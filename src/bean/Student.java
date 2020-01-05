package bean;


import java.util.Date;

public class Student {

    private int id;
    private int studentID;
    private String name;
    private int age;
    private String sex;
    private Date birthday;

    public void setId(int id) {
        this.id = id;
    }

    public void setStudentID(int studentID) {
        this.studentID = studentID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }



    public int getId() {
        return id;
    }

    public int getStudentID() {
        return studentID;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public String getSex() {
        return sex;
    }

    public Date getBirthday() {
        return birthday;
    }


}
