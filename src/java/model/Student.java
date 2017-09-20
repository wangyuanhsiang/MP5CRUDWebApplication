/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.*;
/**
 *
 * @author bagnes
 */
@Entity
@Table
@NamedQueries({@NamedQuery(name="Student.getAll", query="Select e from Student e")})
public class Student {
    @Id
    @Column
    private String studentID;
    @Column
    private String name;
    @Column
    private String address;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public Student(String studentID, String name, String address) {
        this.studentID = studentID;
        this.name = name;
        this.address = address;
    }
    public Student(){}
}
