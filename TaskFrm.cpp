//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "TaskFrm.h"
#include<frmuser.h>
#include<mainform.h>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "RichView"
#pragma link "RVEdit"
#pragma link "RVScroll"
#pragma link "RVStyle"
#pragma link "RVUniscribeGrIn"
#pragma link "RichView"
#pragma link "RVEdit"
#pragma link "RVScroll"
#pragma link "RVStyle"
#pragma link "RVUniscribeGrIn"
#pragma link "DBRV"
#pragma resource "*.dfm"
TFrmTask *FrmTask;
//---------------------------------------------------------------------------
__fastcall TFrmTask::TFrmTask(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFrmTask::FrmShow(TObject *Sender)
{
	UserFrm->FDQ->Active = true;
	treeCreate();
}
//---------------------------------------------------------------------------

void __fastcall TFrmTask::SelItem(TObject *Sender)
{
	if (TaskTree->Selected->Text == "Задачи:")
	{
		exit;
	}
//	dbre->Clear();
	UnicodeString id = getID(TaskTree->Selected->Text);
	if (id.IsEmpty()) exit;
	FDQ->Open("select * from task where id =" + id);
	UserBox->KeyValue = FDQ->FieldByName("authorID")->Value;
	ExecBox->KeyValue = FDQ->FieldByName("ExecutorID")->Value;
	StateBox->KeyValue = FDQ->FieldByName("StateID")->Value;
	TLocateOptions SOptions;
	FDTable->Locate("id",id, SOptions<<loCaseInsensitive);
	EdCaption->Text = FDQ->FieldByName("TaskCaption")->AsString;
	dbre->Change();
	dbre->Format();
	}
//	TMemoryStream *strm = new TMemoryStream();
//	TStream *stream = FDQ->CreateBlobStream(FDQ->FieldByName("Task"),bmRead);
//	strm->CopyFrom(stream,stream->Size);
//	dbre->LoadRVFFromStream(strm);
//	delete strm;
//	delete stream;
//}
//---------------------------------------------------------------------------

void __fastcall TFrmTask::AddBtnClick(TObject *Sender)
{
	UnicodeString id;
	if (TaskTree->Selected == NULL)
	{
		id = "";
	}
	else
	id = getID(TaskTree->Selected->Text);
	TMemoryStream *strm = new TMemoryStream;
	dbre->SaveRVFToStream(strm,false);
	int ID;
	TryStrToInt(id,ID);
	if (EdCaption->Text.IsEmpty())
	{
		ShowMessage("Дайте имя задаче");
		exit;
	}
	FDTable->Insert();
	if (not UserBox->Text.IsEmpty())
	{
		FDTable->FieldByName("authorID")->AsInteger = UserBox->KeyValue;
	}
	if (not ExecBox->Text.IsEmpty())
	{
		FDTable->FieldByName("ExecutorID")->AsInteger = UserBox->KeyValue;
	}
	FDTable->FieldByName("Parent")->AsInteger = ID;
	FDTable->FieldByName("TaskCaption")->AsString = EdCaption->Text;
	FDTable->FieldByName("StateID")->AsInteger = 1;
	FDTable->Post();
	FDTable->Last();
	FDQ->SQL->Text = "update task set task = :blob where id = " + FDTable->FieldByName("id")->AsString;
	FDQ->Params->ParamByName("blob")->DataType = ftBlob;
	FDQ->Params->ParamByName("blob")->AsStream = strm;
	FDQ->ExecSQL();
	treeCreate();
//	delete strm;
}
//---------------------------------------------------------------------------

void __fastcall TFrmTask::EdBtnClick(TObject *Sender)
{
	UnicodeString id;
	if (TaskTree->Selected == NULL)
	{
		id = "";
	}
	else
	id = getID(TaskTree->Selected->Text);
}
//---------------------------------------------------------------------------

