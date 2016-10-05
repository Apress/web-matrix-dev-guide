
#pragma warning( disable: 4049 )  /* more than 64k source lines */

/* this ALWAYS GENERATED file contains the definitions for the interfaces */


 /* File created by MIDL compiler version 6.00.0347 */
/* at Wed Oct 17 11:08:53 2001
 */
/* Compiler settings for PButton1.idl:
    Os, W1, Zp8, env=Win32 (32b run)
    protocol : dce , ms_ext, c_ext
    error checks: allocation ref bounds_check enum stub_data 
    VC __declspec() decoration level: 
         __declspec(uuid()), __declspec(selectany), __declspec(novtable)
         DECLSPEC_UUID(), MIDL_INTERFACE()
*/
//@@MIDL_FILE_HEADING(  )


/* verify that the <rpcndr.h> version is high enough to compile this file*/
#ifndef __REQUIRED_RPCNDR_H_VERSION__
#define __REQUIRED_RPCNDR_H_VERSION__ 440
#endif

#include "rpc.h"
#include "rpcndr.h"

#ifndef __PButton1idl_h__
#define __PButton1idl_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef ___DPButton1_FWD_DEFINED__
#define ___DPButton1_FWD_DEFINED__
typedef interface _DPButton1 _DPButton1;
#endif 	/* ___DPButton1_FWD_DEFINED__ */


#ifndef ___DPButton1Events_FWD_DEFINED__
#define ___DPButton1Events_FWD_DEFINED__
typedef interface _DPButton1Events _DPButton1Events;
#endif 	/* ___DPButton1Events_FWD_DEFINED__ */


#ifndef __PButton1_FWD_DEFINED__
#define __PButton1_FWD_DEFINED__

#ifdef __cplusplus
typedef class PButton1 PButton1;
#else
typedef struct PButton1 PButton1;
#endif /* __cplusplus */

#endif 	/* __PButton1_FWD_DEFINED__ */


#ifdef __cplusplus
extern "C"{
#endif 

void * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void * ); 

/* interface __MIDL_itf_PButton1_0000 */
/* [local] */ 

typedef 
enum ModalType
    {	mrNone	= -1L,
	mrOK	= 1L,
	mrCancel	= 2L,
	mrAbort	= 3L,
	mrRetry	= 4L,
	mrIgnore	= 5L,
	mrYes	= 6L,
	mrNo	= 7L,
	mrOn	= 8L,
	mrOff	= 9L
    } 	MODALTYPE;

typedef 
enum StdButton
    {	None	= 0,
	OK	= 1L,
	Cancel	= 2L,
	Abort	= 3L,
	Retry	= 4L,
	Ignore	= 5L,
	Yes	= 6L,
	No	= 7L,
	On	= 8L,
	Off	= 9L
    } 	STDBUTTON;



extern RPC_IF_HANDLE __MIDL_itf_PButton1_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_PButton1_0000_v0_0_s_ifspec;


#ifndef __PButton1Lib_LIBRARY_DEFINED__
#define __PButton1Lib_LIBRARY_DEFINED__

/* library PButton1Lib */
/* [control][helpstring][helpfile][version][uuid] */ 


EXTERN_C const IID LIBID_PButton1Lib;

#ifndef ___DPButton1_DISPINTERFACE_DEFINED__
#define ___DPButton1_DISPINTERFACE_DEFINED__

/* dispinterface _DPButton1 */
/* [helpstring][uuid] */ 


EXTERN_C const IID DIID__DPButton1;

#if defined(__cplusplus) && !defined(CINTERFACE)

    MIDL_INTERFACE("40506F07-9AB9-451C-AA07-59CAAFBD69DF")
    _DPButton1 : public IDispatch
    {
    };
    
#else 	/* C style interface */

    typedef struct _DPButton1Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            _DPButton1 * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            _DPButton1 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            _DPButton1 * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            _DPButton1 * This,
            /* [out] */ UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            _DPButton1 * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            _DPButton1 * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            _DPButton1 * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS *pDispParams,
            /* [out] */ VARIANT *pVarResult,
            /* [out] */ EXCEPINFO *pExcepInfo,
            /* [out] */ UINT *puArgErr);
        
        END_INTERFACE
    } _DPButton1Vtbl;

    interface _DPButton1
    {
        CONST_VTBL struct _DPButton1Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define _DPButton1_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define _DPButton1_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define _DPButton1_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define _DPButton1_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define _DPButton1_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define _DPButton1_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define _DPButton1_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)

#endif /* COBJMACROS */


#endif 	/* C style interface */


#endif 	/* ___DPButton1_DISPINTERFACE_DEFINED__ */


#ifndef ___DPButton1Events_DISPINTERFACE_DEFINED__
#define ___DPButton1Events_DISPINTERFACE_DEFINED__

/* dispinterface _DPButton1Events */
/* [helpstring][uuid] */ 


EXTERN_C const IID DIID__DPButton1Events;

#if defined(__cplusplus) && !defined(CINTERFACE)

    MIDL_INTERFACE("7E29B88F-2AE0-4782-9ECE-60DDAB0D33AE")
    _DPButton1Events : public IDispatch
    {
    };
    
#else 	/* C style interface */

    typedef struct _DPButton1EventsVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            _DPButton1Events * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            _DPButton1Events * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            _DPButton1Events * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            _DPButton1Events * This,
            /* [out] */ UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            _DPButton1Events * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            _DPButton1Events * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            _DPButton1Events * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS *pDispParams,
            /* [out] */ VARIANT *pVarResult,
            /* [out] */ EXCEPINFO *pExcepInfo,
            /* [out] */ UINT *puArgErr);
        
        END_INTERFACE
    } _DPButton1EventsVtbl;

    interface _DPButton1Events
    {
        CONST_VTBL struct _DPButton1EventsVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define _DPButton1Events_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define _DPButton1Events_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define _DPButton1Events_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define _DPButton1Events_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define _DPButton1Events_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define _DPButton1Events_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define _DPButton1Events_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)

#endif /* COBJMACROS */


#endif 	/* C style interface */


#endif 	/* ___DPButton1Events_DISPINTERFACE_DEFINED__ */


EXTERN_C const CLSID CLSID_PButton1;

#ifdef __cplusplus

class DECLSPEC_UUID("1B9F500E-F096-4168-92C1-F71EEFB53ADB")
PButton1;
#endif
#endif /* __PButton1Lib_LIBRARY_DEFINED__ */

/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


