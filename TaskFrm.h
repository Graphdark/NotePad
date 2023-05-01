//---------------------------------------------------------------------------

#ifndef TaskFrmH
#define TaskFrmH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "FrmUser.h"
#include "RichView.hpp"
#include "RVEdit.hpp"
#include "RVScroll.hpp"
#include "RVStyle.hpp"
#include "RVUniscribeGrIn.hpp"
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Graphics.hpp>
//---------------------------------------------------------------------------
class TFrmTask : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TRichViewEdit *RichViewEdit1;
	TRVStyle *RVStyle1;
	TDBComboBox *UserBox;
	TLabel *Label1;
	TDBComboBox *ExecBox;
	TLabel *Label2;
	TTreeView *TreeView1;
	TFDQuery *FDQ;
	TButton *AddBtn;
	TButton *EdBtn;
	TButton *DelBtn;
private:	// User declarations
public:		// User declarations
	__fastcall TFrmTask(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmTask *FrmTask;
//---------------------------------------------------------------------------
#endif
