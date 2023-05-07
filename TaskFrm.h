//---------------------------------------------------------------------------

#ifndef TaskFrmH
#define TaskFrmH
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
#include <System.Classes.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.StdCtrls.hpp>
//#include<TaskFrm.cpp>
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
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include "DBRV.hpp"
#include<frmuser.h>
//---------------------------------------------------------------------------
class TFrmTask : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TRVStyle *RVStyle1;
	TTreeView *TaskTree;
	TFDQuery *FDQ;
	TFDQuery *FDQSubTask;
	TPanel *Panel2;
	TButton *EdBtn;
	TButton *DelBtn;
	TButton *AddBtn;
	TPanel *Panel3;
	TEdit *EdCaption;
	TDBLookupComboBox *UserBox;
	TDBLookupComboBox *ExecBox;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TFDTable *FDTable;
	TDataSource *ds;
	TDBRichViewEdit *dbre;
	TDBLookupComboBox *StateBox;
	TLabel *Label4;
	TFDQuery *FDQState;
	TDataSource *dsState;
	TDataSource *dsExec;
	TFDQuery *FDQExec;
	void __fastcall FrmShow(TObject *Sender);
	void __fastcall SelItem(TObject *Sender);
	void __fastcall AddBtnClick(TObject *Sender);
	void __fastcall EdBtnClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFrmTask(TComponent* Owner);
	UnicodeString __fastcall getID(UnicodeString task);
	void __fastcall treeCreate();
};
UnicodeString __fastcall TFrmTask::getID(UnicodeString task)
{
	AnsiString str = task.SubString(task.Pos(" "),6);
	int ID;
	if (not TryStrToInt(str,ID)) exit;
	return(str);
}
//---------------------------------------------------------------------------
void __fastcall TFrmTask::treeCreate()
{
	TaskTree->Items->Clear();
	TaskTree->Items->AddChild(NULL,"Задачи:");
	FDQ->Open("select * from Task where parent = 0");
	int i = 1;
	while (not FDQ->Eof)
		{
			UnicodeString id = FDQ->FieldByName("id")->AsString;
			TaskTree->Items->AddChild(NULL,FDQ->FieldByName("taskCaption")->AsString + " " +id);
			TTreeNode *task = TaskTree->Items->Item[TaskTree->Items->Count - 1];
			FDQSubTask->Open("select * from task where parent = " + id);
			int j = FDQSubTask->RecordCount + 1;
			while (not FDQSubTask->Eof)
				{
					id = FDQSubTask->FieldByName("id")->AsString;
					TaskTree->Items->AddChild(task,FDQSubTask->FieldByName("taskCaption")->AsString + " " + id);
					FDQSubTask->Next();
					j++;
				}
			FDQ->Next();
			i = i + j;
			i++;
		}
}
//---------------------------------------------------------------------------
extern PACKAGE TFrmTask *FrmTask;
//---------------------------------------------------------------------------
#endif
