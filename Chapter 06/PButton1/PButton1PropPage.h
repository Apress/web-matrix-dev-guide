#pragma once

// PButton1PropPage.h : Declaration of the CPButton1PropPage property page class.


// CPButton1PropPage : See PButton1PropPage.cpp.cpp for implementation.

class CPButton1PropPage : public COlePropertyPage
{
	DECLARE_DYNCREATE(CPButton1PropPage)
	DECLARE_OLECREATE_EX(CPButton1PropPage)

// Constructor
public:
	CPButton1PropPage();

// Dialog Data
	enum { IDD = IDD_PROPPAGE_PBUTTON1 };

// Implementation
protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

// Message maps
protected:
	DECLARE_MESSAGE_MAP()
public:
   int m_StdButtonType;
};

