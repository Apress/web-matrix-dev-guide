
#pragma warning( disable: 4049 )  /* more than 64k source lines */

/* this ALWAYS GENERATED file contains the definitions for the interfaces */


 /* File created by MIDL compiler version 6.00.0347 */
/* at Fri Dec 07 14:36:47 2001
 */
/* Compiler settings for CompName.idl:
    Oicf, W1, Zp8, env=Win32 (32b run)
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

#ifndef __RPCNDR_H_VERSION__
#error this stub requires an updated version of <rpcndr.h>
#endif // __RPCNDR_H_VERSION__

#ifndef COM_NO_WINDOWS_H
#include "windows.h"
#include "ole2.h"
#endif /*COM_NO_WINDOWS_H*/

#ifndef __CompName_h__
#define __CompName_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __INameValues_FWD_DEFINED__
#define __INameValues_FWD_DEFINED__
typedef interface INameValues INameValues;
#endif 	/* __INameValues_FWD_DEFINED__ */


#ifndef __NameValues_FWD_DEFINED__
#define __NameValues_FWD_DEFINED__

#ifdef __cplusplus
typedef class NameValues NameValues;
#else
typedef struct NameValues NameValues;
#endif /* __cplusplus */

#endif 	/* __NameValues_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

#ifdef __cplusplus
extern "C"{
#endif 

void * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void * ); 

/* interface __MIDL_itf_CompName_0000 */
/* [local] */ 

typedef 
enum MYCOMPUTER_NAME_FORMAT
    {	NetBIOS	= 0,
	DnsHostname	= NetBIOS + 1,
	DnsDomain	= DnsHostname + 1,
	DnsFullyQualified	= DnsDomain + 1,
	PhysicalNetBIOS	= DnsFullyQualified + 1,
	PhysicalDnsHostname	= PhysicalNetBIOS + 1,
	PhysicalDnsDomain	= PhysicalDnsHostname + 1,
	PhysicalDnsFullyQualified	= PhysicalDnsDomain + 1,
	Max	= PhysicalDnsFullyQualified + 1
    } 	MYCOMPUTER_NAME_FORMAT;



extern RPC_IF_HANDLE __MIDL_itf_CompName_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_CompName_0000_v0_0_s_ifspec;

#ifndef __INameValues_INTERFACE_DEFINED__
#define __INameValues_INTERFACE_DEFINED__

/* interface INameValues */
/* [unique][helpstring][nonextensible][dual][uuid][object] */ 


EXTERN_C const IID IID_INameValues;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("50AC7421-D5C1-4461-B291-805FB665FA91")
    INameValues : public IDispatch
    {
    public:
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetCompName( 
            /* [in] */ MYCOMPUTER_NAME_FORMAT NameType,
            /* [retval][out] */ BSTR *Return) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetAllNames( 
            /* [retval][out] */ BSTR *Return) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct INameValuesVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            INameValues * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            INameValues * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            INameValues * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            INameValues * This,
            /* [out] */ UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            INameValues * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            INameValues * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            INameValues * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS *pDispParams,
            /* [out] */ VARIANT *pVarResult,
            /* [out] */ EXCEPINFO *pExcepInfo,
            /* [out] */ UINT *puArgErr);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE *GetCompName )( 
            INameValues * This,
            /* [in] */ MYCOMPUTER_NAME_FORMAT NameType,
            /* [retval][out] */ BSTR *Return);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE *GetAllNames )( 
            INameValues * This,
            /* [retval][out] */ BSTR *Return);
        
        END_INTERFACE
    } INameValuesVtbl;

    interface INameValues
    {
        CONST_VTBL struct INameValuesVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INameValues_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define INameValues_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define INameValues_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define INameValues_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define INameValues_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define INameValues_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define INameValues_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)


#define INameValues_GetCompName(This,NameType,Return)	\
    (This)->lpVtbl -> GetCompName(This,NameType,Return)

#define INameValues_GetAllNames(This,Return)	\
    (This)->lpVtbl -> GetAllNames(This,Return)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE INameValues_GetCompName_Proxy( 
    INameValues * This,
    /* [in] */ MYCOMPUTER_NAME_FORMAT NameType,
    /* [retval][out] */ BSTR *Return);


void __RPC_STUB INameValues_GetCompName_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE INameValues_GetAllNames_Proxy( 
    INameValues * This,
    /* [retval][out] */ BSTR *Return);


void __RPC_STUB INameValues_GetAllNames_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __INameValues_INTERFACE_DEFINED__ */



#ifndef __CompNameLib_LIBRARY_DEFINED__
#define __CompNameLib_LIBRARY_DEFINED__

/* library CompNameLib */
/* [helpstring][version][uuid] */ 


EXTERN_C const IID LIBID_CompNameLib;

EXTERN_C const CLSID CLSID_NameValues;

#ifdef __cplusplus

class DECLSPEC_UUID("34E40BB8-826C-4E8B-960F-6226A97105D6")
NameValues;
#endif
#endif /* __CompNameLib_LIBRARY_DEFINED__ */

/* Additional Prototypes for ALL interfaces */

unsigned long             __RPC_USER  BSTR_UserSize(     unsigned long *, unsigned long            , BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserMarshal(  unsigned long *, unsigned char *, BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserUnmarshal(unsigned long *, unsigned char *, BSTR * ); 
void                      __RPC_USER  BSTR_UserFree(     unsigned long *, BSTR * ); 

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


