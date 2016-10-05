// These assembly level attributes help with identification
// and other assembly issues.
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Web.UI;
[assembly: AssemblyTitle("Class Page Demonstration")]
[assembly: AssemblyDescription("Shows how to use the Class page.")]
[assembly: AssemblyCompany("DataCon Services")]
[assembly: AssemblyVersion("1.0.0.0")]
[assembly: AssemblyKeyFile("MyKey")]

namespace DataCon {
    using System;

    /// <summary>
    /// This class contains some math functions for working with
    /// triangles.
    /// </summary>
    public class MathFunctions
    {

        /// <summary>
        /// Creates a new instance of MathFunctions
        /// </summary>
        public MathFunctions()
        {
        }
        
        public static double Hypotenuse(double Side1, double Side2)
        {
            // Calculate the length of the hypotenuse.
            return Math.Sqrt(
                Math.Pow(Side1, 2) + Math.Pow(Side2, 2));
        }
        
        public static double Side(double Hypotenuse, double Side1)
        {
            // Calculate the lenght of the side.
            return Math.Sqrt(
                Math.Pow(Hypotenuse, 2) - Math.Pow(Side1, 2));
        }
    }
}
