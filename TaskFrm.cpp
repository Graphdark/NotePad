//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "TaskFrm.h"
#include<mainform.h>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "RichView"
#pragma link "RVEdit"
#pragma link "RVScroll"
#pragma link "RVStyle"
#pragma link "RVUniscribeGrIn"
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
	FDQ->Open("select * from Task where parent is null");
	int i = 1;
	while (not FDQ->Eof)
		{
			UnicodeString id = FDQ->FieldByName("id")->AsString;
			TaskTree->Items->AddChild(NULL,FDQ->FieldByName("taskCaption")->AsString);
			TTreeNode *task = TaskTree->Items->Item[i];
			FDQSubTask->Open("select * from task where id = " + id);
			int j = i;
			while (not FDQSubTask->Eof)
				{
					TaskTree->Items->AddChild(task,FDQSubTask->FieldByName("taskCaption")->AsString);
					FDQSubTask->Next();
					j++;
				}
			FDQ->Next();
			i = i + j;
			i++;
			if (i > TaskTree->Items->Count - 1)
			{
				i = TaskTree->Items->Count - 1;
			}
		}
}
//---------------------------------------------------------------------------

