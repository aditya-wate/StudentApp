namespace StudentApp.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using StudentApp.Models;

    internal sealed class Configuration : DbMigrationsConfiguration<StudentApp.Models.StudentContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(StudentApp.Models.StudentContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data. E.g.
            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );
            //
            context.Students.AddOrUpdate(
                 new Student
                 {
                     FirstName = "Benjamin",
                     LastName = "Alonso",
                     Assignment1 = 45,
                     Assignment2 = 48,
                     Assignment3 = 49

                 },
                 new Student
                 {
                     FirstName = "Taliza",
                     LastName = "Sanchez",
                     Assignment1 = 49,
                     Assignment2 = 47,
                     Assignment3 = 50
                 },
                 new Student
                 {
                     FirstName = "Isaac",
                     LastName = "Kresse",
                     Assignment1 = 46,
                     Assignment2 = 43,
                     Assignment3 = 47
                 },
                 new Student
                 {
                     FirstName = "Griffin",
                     LastName = "Knipe",
                     Assignment1 = 43,
                     Assignment2 = 39,
                     Assignment3 = 46
                 },
                 new Student
                 {
                     FirstName = "Nicole",
                     LastName = "Roth",
                     Assignment1 = 46,
                     Assignment2 = 45,
                     Assignment3 = 45
                 }
                 );

            context.SaveChanges();

            context.Courses.AddOrUpdate(
                new Course { Title = "Information Security", Credits = 3 },
                new Course { Title = "Algorithms", Credits = 3 },
                new Course { Title = "Data Mining", Credits = 3 },
                new Course { Title = "Probability & Statistics", Credits = 4 },
                new Course { Title = "Theory of Computation", Credits = 4 },
                new Course { Title = "Aritificial Intelligence", Credits = 3 },
                new Course { Title = "Parallel Data Processing", Credits = 4 }
                );

            context.SaveChanges();
        }
    }
}
