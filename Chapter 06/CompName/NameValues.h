// NameValues.h : Declaration of the CNameValues

#pragma once
#include "resource.h"       // main symbols

#include "CompName.h"


// CNameValues

class ATL_NO_VTABLE CNameValues : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CNameValues, &CLSID_NameValues>,
	public IDispatchImpl<INameValues, &IID_INameValues, &LIBID_CompNameLib, /*wMajor =*/ 1, /*wMinor =*/ 0>
{
public:
	CNameValues()
	{
	}

DECLARE_REGISTRY_RESOURCEID(IDR_NAMEVALUES)


BEGIN_COM_MAP(CNameValues)
	COM_INTERFACE_ENTRY(INameValues)
	COM_INTERFACE_ENTRY(IDispatch)
END_COM_MAP()


	DECLARE_PROTECT_FINAL_CONSTRUCT()

	HRESULT FinalConstruct()
	{
		return S_OK;
	}
	
	void FinalRelease() 
	{
	}

public:

   STDMETHOD(GetCompName)(MYCOMPUTER_NAME_FORMAT NameType, BSTR* Return);
   STDMETHOD(GetAllNames)(BSTR* Return);
};

OBJECT_ENTRY_AUTO(__uuidof(NameValues), CNameValues)
