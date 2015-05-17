namespace StudentApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Students",
                c => new
                    {
                        StudentID = c.Int(nullable: false, identity: true),
                        LastName = c.String(nullable: false, maxLength: 40),
                        FirstName = c.String(nullable: false, maxLength: 20),
                        Assignment1 = c.Int(nullable: false),
                        Assignment2 = c.Int(nullable: false),
                        Assignment3 = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.StudentID);
            
            CreateTable(
                "dbo.Courses",
                c => new
                    {
                        CourseID = c.Int(nullable: false, identity: true),
                        Title = c.String(),
                        Credits = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.CourseID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Courses");
            DropTable("dbo.Students");
        }
    }
}
