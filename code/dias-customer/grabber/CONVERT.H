/********************************************************************/
/********************************************************************/
/***                                                              ***/
/***   Diese Funktionen sind dem Source-Code von Thomas W. Lipp   ***/
/***   aus dem Buch "Die gro�e Welt der Grafikformate" mit        ***/
/***   beiliegender CD-ROM entnommen !!!                          ***/
/***   ( 1.Auflage 1994 )                                         ***/
/***                                                              ***/
/***   Dabei handelt es sich nur um eine Auswahl der Funktionen,  ***/
/***   die f�r die Demo-Software ben�tigt werden. Die dazu-       ***/
/***   geh�rige DLL hat den Namen CONVERT.DLL                     ***/
/***                                                              ***/
/***   Die Copyrights f�r die Original-Software von Thomas W. Lipp***/ 
/***   m�ssen bei einer Weiterverwendung beachtet werden !!!      ***/
/***                                                              ***/
/***                                                              ***/
/********************************************************************/
/********************************************************************/


#ifdef  __cplusplus
extern  "C" {  // C-Deklarationen f�r C++
#endif

/********************************************************************/
/***   Typdefinitionen und Konstanten                             ***/
/********************************************************************/

#ifndef WIN32
#define APIENTRY  FAR PASCAL
#endif


/********************************************************************/
/***   Funktionen der DLL-Schnittstelle                           ***/
/********************************************************************/

BOOL   APIENTRY ConvertDIBtoGIF( LPSTR lpszGIFFile, HANDLE hDIB ) ;
BOOL   APIENTRY ConvertDIBtoJPG( LPSTR lpszJPGFile, HANDLE hDIB ) ;
BOOL   APIENTRY ConvertDIBtoPCX( LPSTR lpszPCXFile, HANDLE hDIB ) ;
BOOL   APIENTRY ConvertDIBtoTIF( LPSTR lpszTIFFile, HANDLE hDIB ) ;

HANDLE APIENTRY ConvertGIFtoDIB( LPSTR lpszGIFFile ) ;
HANDLE APIENTRY ConvertJPGtoDIB( LPSTR lpszJPGFile ) ;
HANDLE APIENTRY ConvertPCXtoDIB( LPSTR lpszPCXFile ) ;
HANDLE APIENTRY ConvertTIFtoDIB( LPSTR lpszTIFFile ) ;
HANDLE APIENTRY ReadDIB( LPSTR lpszDIB ) ;
BOOL   APIENTRY WriteDIB( LPSTR lpszDIB, HANDLE hDIB );

// Pr�prozessoranweisungen

#ifdef  __cplusplus
}
#endif
