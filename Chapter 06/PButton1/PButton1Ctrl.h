#pragma once

// PButton1Ctrl.h : Declaration of the CPButton1Ctrl ActiveX Control class.


// CPButton1Ctrl : See PButton1Ctrl.cpp for implementation.

class CPButton1Ctrl : public COleControl
{
	DECLARE_DYNCREATE(CPButton1Ctrl)

// Constructor
public:
	CPButton1Ctrl();

// Overrides
public:
	virtual void OnDraw(CDC* pdc, const CRect& rcBounds, const CRect& rcInvalid);
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual void DoPropExchange(CPropExchange* pPX);
	virtual void OnResetState();

   // Define the valid ModalResult property values.
   typedef enum ModalType
   {
      dispidClick = 1L,      mrNone = -1L,
      mrOK = 1L,
      mrCancel = 2L,
      mrAbort = 3L,
      mrRetry = 4L,
      mrIgnore = 5L,
      mrYes = 6L,
      mrNo = 7L,
      mrOn = 8L,
      mrOff = 9L,
   }MODALTYPE;

   // Define the valid StdButtonType property values.
   typedef enum StdButton
   {
      None = 0L,
      OK = 1L,
      Cancel = 2L,
      Abort = 3L,
      Retry = 4L,
      Ignore = 5L,
      Yes = 6L,
      No = 7L,
      On = 8L,
      Off = 9L,
   }STDBUTTON;

// Implementation
protected:
	~CPButton1Ctrl();

	DECLARE_OLECREATE_EX(CPButton1Ctrl)    // Class factory and guid
	DECLARE_OLETYPELIB(CPButton1Ctrl)      // GetTypeInfo
	DECLARE_PROPPAGEIDS(CPButton1Ctrl)     // Property page IDs
	DECLARE_OLECTLTYPE(CPButton1Ctrl)		// Type name and misc status

	// Subclassed control support
	BOOL IsSubclassedControl();
	LRESULT OnOcmCommand(WPARAM wParam, LPARAM lParam);

// Message maps
	DECLARE_MESSAGE_MAP()

// Dispatch maps
	DECLARE_DISPATCH_MAP()

	afx_msg void AboutBox();

// Event maps
	DECLARE_EVENT_MAP()

// Dispatch and event IDs
public:
	enum {
      dispidOnOff = 3,      dispidStdButtonType = 2,      dispidModalResult = 1
   };
protected:
   void OnModalResultChanged(void);
   LONG m_ModalResult;
   void OnStdButtonTypeChanged(void);
   LONG m_StdButtonType;
   void OnOnOffChanged(void);
   //VARIANT_BOOL m_OnOff;
   BOOL m_OnOff;

   // Track the OnOff state.
   BOOL  m_SetOn;
public:
   virtual void OnClick(USHORT iButton);
};

