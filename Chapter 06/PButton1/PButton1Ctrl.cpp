// PButton1Ctrl.cpp : Implementation of the CPButton1Ctrl ActiveX Control class.

#include "stdafx.h"
#include "PButton1.h"
#include "PButton1Ctrl.h"
#include "PButton1PropPage.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#endif


IMPLEMENT_DYNCREATE(CPButton1Ctrl, COleControl)



// Message map

BEGIN_MESSAGE_MAP(CPButton1Ctrl, COleControl)
	ON_MESSAGE(OCM_COMMAND, OnOcmCommand)
	ON_OLEVERB(AFX_IDS_VERB_PROPERTIES, OnProperties)
END_MESSAGE_MAP()



// Dispatch map

BEGIN_DISPATCH_MAP(CPButton1Ctrl, COleControl)
	DISP_FUNCTION_ID(CPButton1Ctrl, "AboutBox", DISPID_ABOUTBOX, AboutBox, VT_EMPTY, VTS_NONE)
   DISP_STOCKPROP_CAPTION()
   DISP_STOCKPROP_ENABLED()
   DISP_STOCKPROP_FONT()
   DISP_PROPERTY_NOTIFY_ID(CPButton1Ctrl, "ModalResult", dispidModalResult, m_ModalResult, OnModalResultChanged, VT_I4)
   DISP_PROPERTY_NOTIFY_ID(CPButton1Ctrl, "StdButtonType", dispidStdButtonType, m_StdButtonType, OnStdButtonTypeChanged, VT_I4)
   DISP_PROPERTY_NOTIFY_ID(CPButton1Ctrl, "OnOff", dispidOnOff, m_OnOff, OnOnOffChanged, VT_BOOL)
END_DISPATCH_MAP()



// Event map

BEGIN_EVENT_MAP(CPButton1Ctrl, COleControl)
   EVENT_STOCK_CLICK()
END_EVENT_MAP()



// Property pages

// TODO: Add more property pages as needed.  Remember to increase the count!
BEGIN_PROPPAGEIDS(CPButton1Ctrl, 2)
	PROPPAGEID(CPButton1PropPage::guid)
   PROPPAGEID(CLSID_CFontPropPage)
END_PROPPAGEIDS(CPButton1Ctrl)



// Initialize class factory and guid

IMPLEMENT_OLECREATE_EX(CPButton1Ctrl, "PBUTTON1.PButton1Ctrl.1",
	0x1b9f500e, 0xf096, 0x4168, 0x92, 0xc1, 0xf7, 0x1e, 0xef, 0xb5, 0x3a, 0xdb)



// Type library ID and version

IMPLEMENT_OLETYPELIB(CPButton1Ctrl, _tlid, _wVerMajor, _wVerMinor)



// Interface IDs

const IID BASED_CODE IID_DPButton1 =
		{ 0x40506F07, 0x9AB9, 0x451C, { 0xAA, 0x7, 0x59, 0xCA, 0xAF, 0xBD, 0x69, 0xDF } };
const IID BASED_CODE IID_DPButton1Events =
		{ 0x7E29B88F, 0x2AE0, 0x4782, { 0x9E, 0xCE, 0x60, 0xDD, 0xAB, 0xD, 0x33, 0xAE } };



// Control type information

static const DWORD BASED_CODE _dwPButton1OleMisc =
	OLEMISC_ACTIVATEWHENVISIBLE |
	OLEMISC_SETCLIENTSITEFIRST |
	OLEMISC_INSIDEOUT |
	OLEMISC_CANTLINKINSIDE |
	OLEMISC_RECOMPOSEONRESIZE;

IMPLEMENT_OLECTLTYPE(CPButton1Ctrl, IDS_PBUTTON1, _dwPButton1OleMisc)



// CPButton1Ctrl::CPButton1CtrlFactory::UpdateRegistry -
// Adds or removes system registry entries for CPButton1Ctrl

BOOL CPButton1Ctrl::CPButton1CtrlFactory::UpdateRegistry(BOOL bRegister)
{
	// TODO: Verify that your control follows apartment-model threading rules.
	// Refer to MFC TechNote 64 for more information.
	// If your control does not conform to the apartment-model rules, then
	// you must modify the code below, changing the 6th parameter from
	// afxRegApartmentThreading to 0.

	if (bRegister)
		return AfxOleRegisterControlClass(
			AfxGetInstanceHandle(),
			m_clsid,
			m_lpszProgID,
			IDS_PBUTTON1,
			IDB_PBUTTON1,
			afxRegApartmentThreading,
			_dwPButton1OleMisc,
			_tlid,
			_wVerMajor,
			_wVerMinor);
	else
		return AfxOleUnregisterClass(m_clsid, m_lpszProgID);
}



// CPButton1Ctrl::CPButton1Ctrl - Constructor

CPButton1Ctrl::CPButton1Ctrl()
{
	InitializeIIDs(&IID_DPButton1, &IID_DPButton1Events);
	// TODO: Initialize your control's instance data here.
}



// CPButton1Ctrl::~CPButton1Ctrl - Destructor

CPButton1Ctrl::~CPButton1Ctrl()
{
	// TODO: Cleanup your control's instance data here.
}



// CPButton1Ctrl::OnDraw - Drawing function

void CPButton1Ctrl::OnDraw(
			CDC* pdc, const CRect& rcBounds, const CRect& rcInvalid)
{
	DoSuperclassPaint(pdc, rcBounds);
}



// CPButton1Ctrl::DoPropExchange - Persistence support

void CPButton1Ctrl::DoPropExchange(CPropExchange* pPX)
{
	ExchangeVersion(pPX, MAKELONG(_wVerMinor, _wVerMajor));
	COleControl::DoPropExchange(pPX);

   // Make all of our properties persistent.
   PX_Bool(pPX, "OnOff", m_OnOff, FALSE);
   PX_Long(pPX, "ModalResult", m_ModalResult, mrNone);
   PX_Long(pPX, "StdButtonType", m_StdButtonType, None);
}



// CPButton1Ctrl::OnResetState - Reset control to default state

void CPButton1Ctrl::OnResetState()
{
   // Resets defaults found in DoPropExchange
	COleControl::OnResetState();

   //Modify the control appearance.
   COleControl::SetText("Button");
}



// CPButton1Ctrl::AboutBox - Display an "About" box to the user

void CPButton1Ctrl::AboutBox()
{
	CDialog dlgAbout(IDD_ABOUTBOX_PBUTTON1);
	dlgAbout.DoModal();
}



// CPButton1Ctrl::PreCreateWindow - Modify parameters for CreateWindowEx

BOOL CPButton1Ctrl::PreCreateWindow(CREATESTRUCT& cs)
{
	cs.lpszClass = _T("BUTTON");
	return COleControl::PreCreateWindow(cs);
}



// CPButton1Ctrl::IsSubclassedControl - This is a subclassed control

BOOL CPButton1Ctrl::IsSubclassedControl()
{
	return TRUE;
}



// CPButton1Ctrl::OnOcmCommand - Handle command messages

LRESULT CPButton1Ctrl::OnOcmCommand(WPARAM wParam, LPARAM lParam)
{
#ifdef _WIN32
	WORD wNotifyCode = HIWORD(wParam);
#else
	WORD wNotifyCode = HIWORD(lParam);
#endif

	// TODO: Switch on wNotifyCode here.

	return 0;
}



// CPButton1Ctrl message handlers

void CPButton1Ctrl::OnModalResultChanged(void)
{
   AFX_MANAGE_STATE(AfxGetStaticModuleState());

   //Set the modified flag.
   SetModifiedFlag();
}

void CPButton1Ctrl::OnStdButtonTypeChanged(void)
{
   AFX_MANAGE_STATE(AfxGetStaticModuleState());

   // Change the modal result and button 
   // caption to match the user selection.
   switch (m_StdButtonType)
   {
   case 0:
      m_ModalResult = mrNone;
      COleControl::SetText("Button");
      break;
   case 1:
      m_ModalResult = mrOK;
      COleControl::SetText("OK");
      break;
   case 2:
      m_ModalResult = mrCancel;
      COleControl::SetText("Cancel");
      break;
   case 3:
      m_ModalResult = mrAbort;
      COleControl::SetText("Abort");
      break;
   case 4:
      m_ModalResult = mrRetry;
      COleControl::SetText("Retry");
      break;
   case 5:
      m_ModalResult = mrIgnore;
      COleControl::SetText("Ignore");
      break;
   case 6:
      m_ModalResult = mrYes;
      COleControl::SetText("Yes");
      break;
   case 7:
      m_ModalResult = mrNo;
      COleControl::SetText("No");
      break;
   case 8:
      m_ModalResult = mrOn;
      COleControl::SetText("On");
      break;
   case 9:
      m_ModalResult = mrOff;
      COleControl::SetText("Off");
   }

   // Set the OnOff property to false 
   // since the user selected another type.
   m_OnOff = FALSE;

   //Set the modified flag.
   SetModifiedFlag();
}

void CPButton1Ctrl::OnOnOffChanged(void)
{
   AFX_MANAGE_STATE(AfxGetStaticModuleState());

   // If the programmer set the OnOff property true, 
   // take appropriate action.
   if (m_OnOff)
   {
      COleControl::SetText("On");   //Change the caption.
      m_SetOn = TRUE;               //Set an internal caption flag.
      m_ModalResult = mrOn;         //Set the modal result value.
   }
   else
   {
      COleControl::SetText("Button");  //Restore default caption.
      m_SetOn = FALSE;                 //Turn our caption flag off.
      m_ModalResult = mrNone;          //Use the default modal result.
   }

   //Set the modified flag.
   SetModifiedFlag();
}

void CPButton1Ctrl::OnClick(USHORT iButton)
{
   // See if the OnOff flag is set.  If so, change 
   // the caption and internal caption flag.  The effect 
   // you should see from this code is a toggling of the 
   // caption text.
   if (m_OnOff)
   {
      if (m_SetOn)
      {
         COleControl::SetText("Off");
         m_SetOn = FALSE;
         m_ModalResult = mrOff;
      }
      else
      {
         COleControl::SetText("On");
         m_SetOn = TRUE;
         m_ModalResult = mrOn;
      }
   }

   // Call the default OnClick processing.
   COleControl::OnClick(iButton);
}
