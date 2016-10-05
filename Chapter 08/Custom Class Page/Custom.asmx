<%@ WebService language="C#" class="CustomStuff" %>

using System;
using System.Web.Services;
using System.Xml.Serialization;
using System.Web.Services.Protocols;

[WebService(Namespace="http://winserver/0131/WebService/")]
public class CustomStuff
{

    [WebMethod (Description="Perform a simple interest calculation.")]
    public InterestCalc CalculateInterest(double BeginningAmount,
                                                int NumberOfMonths,
                                                double InterestRate,
                                                int Interval)
    {
        // Create a return structure of the correct size.
        InterestCalc    TheCalc = new InterestCalc();
        
        // Create the array contained within the return structure.
        TheCalc.TheDetails = new InterestDetails[NumberOfMonths];
        
        // Calculate the interest per month.
        double          TheRate = InterestRate / Interval;
        
        // A temporary value holder.
        double          TempValue = BeginningAmount;
        
        // Perform the calculation.
        for (int Counter = 0; Counter < NumberOfMonths; Counter++)
        {
            // Create a temporary variable to hold a single
            // InterestDetails object.
            InterestDetails TempDetail = new InterestDetails();
        
            // Fill the temporary detail object with data.
            TempDetail.MonthNumber = Counter + 1;
            TempDetail.DollarAmount = TempValue;
            
            // Transfer the data to the return structure array.
            TheCalc.TheDetails[Counter] = TempDetail;
            
            // Update the temporary money value.
            TempValue = TempValue + TempValue * TheRate;
        }
        
        // Return the array of calculations.
        return TheCalc;
    }
}

public class InterestCalc
{
    // An array of calculation details.
    [XmlArray(ElementName="InterestItemDetail",
                  Namespace="http://winserver/0131/WebService/")]
    public InterestDetails[]    TheDetails;
}

public class InterestDetails
{
    // The current month.
    public int MonthNumber;
    // The value of the account for the current month.
    public double DollarAmount;
}

