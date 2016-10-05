// NameValues.cpp : Implementation of CNameValues

#include "stdafx.h"
#include "NameValues.h"


// CNameValues


STDMETHODIMP CNameValues::GetCompName(MYCOMPUTER_NAME_FORMAT NameType, BSTR* Return)
{
   AFX_MANAGE_STATE(AfxGetStaticModuleState());

   CString oComputerName;  // Buffer to hold computer name data.
   ULONG   ulBufferSize = MAX_COMPUTERNAME_LENGTH + 1;

   // Setup data conversion.
   USES_CONVERSION;

   // See if there is a NetBIOS name for this item.
   if (GetComputerNameEx((COMPUTER_NAME_FORMAT)NameType, 
      oComputerName.GetBuffer(MAX_COMPUTERNAME_LENGTH + 1), 
      &ulBufferSize))
   {
      // Release the string buffer.
      oComputerName.ReleaseBuffer(-1);

      // Convert buffer contents to an OLE string.
      *Return = T2BSTR(oComputerName.GetBuffer(80));
      oComputerName.ReleaseBuffer(-1);
   }

   // If not, display a failure string.
   else
      *Return = T2BSTR("Value Not Available");
      
   // return the standard result.
   return S_OK;
}

STDMETHODIMP CNameValues::GetAllNames(BSTR* Return)
{
   AFX_MANAGE_STATE(AfxGetStaticModuleState());

   CString  AllNames;      // Return value array.
   BSTR     RetString;     // Return string from call.

   //Fill the array with values.
   USES_CONVERSION;
   AllNames = "ComputerNameDnsDomain\t\t\t";
   GetCompName(DnsDomain, &RetString);
   AllNames = AllNames + CString(RetString);
   AllNames = AllNames + "\r\nComputerNameDnsFullyQualified\t\t";
   GetCompName(DnsFullyQualified, &RetString);
   AllNames = AllNames + CString(RetString);
   AllNames = AllNames + "\r\nComputerNameDnsHostname\t\t\t";
   GetCompName(DnsHostname, &RetString);
   AllNames = AllNames + CString(RetString);
   AllNames = AllNames + "\r\nComputerNameNetBIOS\t\t\t";
   GetCompName(NetBIOS, &RetString);
   AllNames = AllNames + CString(RetString);
   AllNames = AllNames + "\r\nComputerNamePhysicalDnsDomain\t\t";
   GetCompName(PhysicalDnsDomain, &RetString);
   AllNames = AllNames + CString(RetString);
   AllNames = AllNames + "\r\nComputerNamePhysicalDnsFullyQualified\t";
   GetCompName(PhysicalDnsFullyQualified, &RetString);
   AllNames = AllNames + CString(RetString);
   AllNames = AllNames + "\r\nComputerNamePhysicalDnsHostname\t\t";
   GetCompName(PhysicalDnsHostname, &RetString);
   AllNames = AllNames + CString(RetString);
   AllNames = AllNames + "\r\nComputerNamePhysicalNetBIOS\t\t";
   GetCompName(PhysicalNetBIOS, &RetString);
   AllNames = AllNames + CString(RetString);

   // Return the result.
   *Return = T2BSTR(AllNames);

   return S_OK;
}
