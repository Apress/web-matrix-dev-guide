using System;

namespace ManagedComponent
{
	/// <summary>
	/// A class for reversing data.
	/// </summary>
	public class ReverseIt
	{
		public ReverseIt()
		{
			// No constructor needed.
		}

      /// <summary>
      /// This method reverses a string.
      /// </summary>
      /// <param name="Input">String to reverse.</param>
      /// <returns></returns>
      public static String DoReverse(String Input)
      {
         String   Temp; // Temporary data holder.

         // Initialize Temp.
         Temp = "";

         // Reverse the string.
         for (int Counter = Input.Length - 1; Counter >= 0; Counter--)
            Temp = Temp + Input[Counter];

         // Return the reversed string.
         return Temp;
      }
	}
}
