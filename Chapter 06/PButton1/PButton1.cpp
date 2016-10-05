// PButton1.cpp : Implementation of CPButton1App and DLL registration.

#include "stdafx.h"
#include "PButton1.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


CPButton1App NEAR theApp;

const GUID CDECL BASED_CODE _tlid =
		{ 0xE8A1F3B9, 0x49AB, 0x4C75, { 0xB2, 0xA8, 0x64, 0x42, 0x5A, 0xF1, 0x27, 0xE1 } };
const WORD _wVerMajor = 1;
const WORD _wVerMinor = 0;



// CPButton1App::InitInstance - DLL initialization

BOOL CPButton1App::InitInstance()
{
	BOOL bInit = COleControlModule::InitInstance();

	if (bInit)
	{
		// TODO: Add your own module initialization code here.
	}

	return bInit;
}



// CPButton1App::ExitInstance - DLL termination

int CPButton1App::ExitInstance()
{
	// TODO: Add your own module termination code here.

	return COleControlModule::ExitInstance();
}



// DllRegisterServer - Adds entries to the system registry

STDAPI DllRegisterServer(void)
{
	AFX_MANAGE_STATE(_afxModuleAddrThis);

	if (!AfxOleRegisterTypeLib(AfxGetInstanceHandle(), _tlid))
		return ResultFromScode(SELFREG_E_TYPELIB);

	if (!COleObjectFactoryEx::UpdateRegistryAll(TRUE))
		return ResultFromScode(SELFREG_E_CLASS);

	return NOERROR;
}



// DllUnregisterServer - Removes entries from the system registry

STDAPI DllUnregisterServer(void)
{
	AFX_MANAGE_STATE(_afxModuleAddrThis);

	if (!AfxOleUnregisterTypeLib(_tlid, _wVerMajor, _wVerMinor))
		return ResultFromScode(SELFREG_E_TYPELIB);

	if (!COleObjectFactoryEx::UpdateRegistryAll(FALSE))
		return ResultFromScode(SELFREG_E_CLASS);

	return NOERROR;
}
