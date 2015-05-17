using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;

namespace StudentApp.Models
{
    public class StudentContext : DbContext
    {
        public DbSet<Student> Students { get; set; }
        public DbSet<Course> Courses { get; set; }
    }

    public class Student
    {
        [Key, Display(Name = "ID")]
        [ScaffoldColumn(false)]
        public int StudentID { get; set; }

        [Required, StringLength(40), Display(Name = "Last Name")]
        public string LastName { get; set; }

        [Required, StringLength(20), Display(Name = "First Name")]
        public string FirstName { get; set; }

        public int Assignment1 { get; set; }

        public int Assignment2 { get; set; }

        public int Assignment3 { get; set; }

    }

    public class Course
    {
        [Key]
        public int CourseID { get; set; }
        public string Title { get; set; }
        public int Credits { get; set; }
    } 
}