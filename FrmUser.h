//---------------------------------------------------------------------------

#ifndef FrmUserH
#define FrmUserH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
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
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <StrUtils.hpp>

//---------------------------------------------------------------------------
class TUserFrm : public TForm
{
__published:	// IDE-managed Components
	TDBGrid *GridUser;
	TEdit *EdUser;
	TLabel *Пользователь;
	TLabel *Label1;
	TEdit *EdMail;
	TButton *AddBtn;
	TButton *EdBtn;
	TButton *DelBtn;
	TFDConnection *FDCon;
	TFDQuery *FDQ;
	TDataSource *ds;
	void __fastcall showFrm(TObject *Sender);
	void __fastcall GridUserCellClick(TColumn *Column);
	void __fastcall DelBtnClick(TObject *Sender);
	void __fastcall AddBtnClick(TObject *Sender);
	void __fastcall EdBtnClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TUserFrm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TUserFrm *UserFrm;
//---------------------------------------------------------------------------
#endif
