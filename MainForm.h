//---------------------------------------------------------------------------

#ifndef MainFormH
#define MainFormH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.Buttons.hpp>
//---------------------------------------------------------------------------
class TNotePadFRM : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TMainMenu *MainMenu1;
	TMenuItem *N1;
	TMenuItem *N2;
	TMenuItem *N3;
	TMenuItem *N4;
	TPanel *Panel2;
	TPageControl *PageControl1;
	TFileOpenDialog *FileOpenDialog1;
	TTabSheet *TabSheet1;
	TTabSheet *TabSheet2;
	TRichEdit *REDoc1;
	TRichEdit *REDoc2;
	TSpeedButton *btnAddDoc;
	void __fastcall ShowFrm(TObject *Sender);
	void __fastcall FrmRes(TObject *Sender);

private:	// User declarations
public:		// User declarations
	__fastcall TNotePadFRM(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TNotePadFRM *NotePadFRM;
//---------------------------------------------------------------------------
#endif
