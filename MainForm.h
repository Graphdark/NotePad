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
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Phys.SQLite.hpp>
#include <FireDAC.Phys.SQLiteDef.hpp>
#include <FireDAC.Phys.SQLiteWrapper.Stat.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.ExprFuncs.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
#include "RichView.hpp"
#include "RVEdit.hpp"
#include "RVScroll.hpp"
#include "RVStyle.hpp"
#include "RVUniscribeGrIn.hpp"
#include <Vcl.Graphics.hpp>
#include "DBRV.hpp"
//---------------------------------------------------------------------------
class TNotePadFRM : public TForm
{
	int FdocNumb = 3;
	UnicodeString FPath = "";
__published:	// IDE-managed Components
	TPanel *Panel1;
	TMainMenu *MainMenu1;
	TMenuItem *N1;
	TMenuItem *N2;
	TMenuItem *N3;
	TMenuItem *N4;
	TPanel *Panel2;
	TPageControl *PageControl;
	TTabSheet *TabSheet1;
	TTabSheet *TabSheet2;
	TSpeedButton *btnAddDoc;
	TOpenDialog *od;
	TSaveDialog *sd;
	TMenuItem *N5;
	TMenuItem *N6;
	TRichViewEdit *_TabSheet1;
	TRVStyle *RVStyle1;
	TRichViewEdit *_TabSheet2;
	void __fastcall ShowFrm(TObject *Sender);
	void __fastcall FrmRes(TObject *Sender);
	void __fastcall btnAddDocClick(TObject *Sender);
	void __fastcall N2Click(TObject *Sender);
	void __fastcall N4Click(TObject *Sender);
	void __fastcall N3Click(TObject *Sender);
	void __fastcall N6Click(TObject *Sender);



private:	// User declarations
public:		// User declarations
	__fastcall TNotePadFRM(TComponent* Owner);
	int getDocNumb() const {return FdocNumb;}
	UnicodeString getPath() const {return FPath;}
	void setPath(UnicodeString path) {FPath = path;}
	int __property DocNumb = {read = getDocNumb, write = FdocNumb};
};
//---------------------------------------------------------------------------
extern PACKAGE TNotePadFRM *NotePadFRM;
//---------------------------------------------------------------------------
#endif
