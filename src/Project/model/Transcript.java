package Project.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by aliabbasjaffri on 24/11/2015.
 */
@Entity
public class Transcript {
    private int id;
    private String rollNumber;
    private double courseId;
    private String grade;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "Roll_Number")
    public String getRollNumber() {
        return rollNumber;
    }

    public void setRollNumber(String rollNumber) {
        this.rollNumber = rollNumber;
    }

    @Basic
    @Column(name = "Course_ID")
    public double getCourseId() {
        return courseId;
    }

    public void setCourseId(double courseId) {
        this.courseId = courseId;
    }

    @Basic
    @Column(name = "Grade")
    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Transcript that = (Transcript) o;

        if (id != that.id) return false;
        if (Double.compare(that.courseId, courseId) != 0) return false;
        if (rollNumber != null ? !rollNumber.equals(that.rollNumber) : that.rollNumber != null) return false;
        if (grade != null ? !grade.equals(that.grade) : that.grade != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = id;
        result = 31 * result + (rollNumber != null ? rollNumber.hashCode() : 0);
        temp = Double.doubleToLongBits(courseId);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + (grade != null ? grade.hashCode() : 0);
        return result;
    }
}
