// PButton1PropPage.cpp : Implementation of the CPButton1PropPage property page class.

#include "stdafx.h"
#include "PButton1.h"
#include "PButton1PropPage.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


IMPLEMENT_DYNCREATE(CPButton1PropPage, COlePropertyPage)



// Message map

BEGIN_MESSAGE_MAP(CPButton1PropPage, COlePropertyPage)
END_MESSAGE_MAP()



// Initialize class factory and guid

IMPLEMENT_OLECREATE_EX(CPButton1PropPage, "PBUTTON1.PButton1PropPage.1",
	0xc215f352, 0xcae6, 0x4580, 0x9f, 0x57, 0xbe, 0xf6, 0x51, 0xc6, 0xc1, 0x8c)



// CPButton1PropPage::CPButton1PropPageFactory::UpdateRegistry -
// Adds or removes system registry entries for CPButton1PropPage

BOOL CPButton1PropPage::CPButton1PropPageFactory::UpdateRegistry(BOOL bRegister)
{
	if (bRegister)
		return AfxOleRegisterPropertyPageClass(AfxGetInstanceHandle(),
			m_clsid, IDS_PBUTTON1_PPG);
	else
		return AfxOleUnregisterClass(m_clsid, NULL);
}



// CPButton1PropPage::CPButton1PropPage - Constructor

CPButton1PropPage::CPButton1PropPage() :
	COlePropertyPage(IDD, IDS_PBUTTON1_PPG_CAPTION)
   {
}



// CPButton1PropPage::DoDataExchange - Moves data between page and properties

void CPButton1PropPage::DoDataExchange(CDataExchange* pDX)
{
	DDP_Radio(pDX, IDC_RADIO1, m_StdButtonType, _T("StdButtonType") );
	DDX_Radio(pDX, IDC_RADIO1, m_StdButtonType);
	DDP_PostProcessing(pDX);
}



// CPButton1PropPage message handlers
