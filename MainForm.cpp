//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include<stdlib.h>

#include "MainForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TNotePadFRM *NotePadFRM;
//---------------------------------------------------------------------------
__fastcall TNotePadFRM::TNotePadFRM(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TNotePadFRM::ShowFrm(TObject *Sender)
{
	_TabSheet1->Clear();
	_TabSheet2->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TNotePadFRM::FrmRes(TObject *Sender)
{
	btnAddDoc->Width = 23;
	btnAddDoc->Left = _TabSheet1->Width - 15;
}
//---------------------------------------------------------------------------
void __fastcall TNotePadFRM::btnAddDocClick(TObject *Sender)
{
	TTabSheet *tab = new TTabSheet(this);
	tab->Parent = this;
	tab->PageControl = PageControl;
	tab->Caption = "Doc" + IntToStr(DocNumb);
	tab->Name = "Doc" + IntToStr(DocNumb);
	DocNumb = DocNumb+1;
	TRichEdit *re = new TRichEdit(this);
	re->Parent = tab;
	re->Align = alClient;
	re->Name = "_TabSheet" + IntToStr(DocNumb);
    re->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TNotePadFRM::N2Click(TObject *Sender)
{
	UnicodeString path;
	od->Filter = "Документ gbdoc|*.gbdoc";
	if (od->Execute())
	{
		path = od->FileName;
	}
	else
	{
		exit('0');
	}
	TTabSheet *tab = PageControl->ActivePage;
	UnicodeString name = tab->Name;
	name = "_"+name;
	FDCon->Params->DriverID = "SQLite";
	FDCon->Params->Database = path;
	FDCon->Connected = true;
	fdq->Open("select page from content");
	TRichEdit *re = static_cast<TRichEdit*>(FindComponent(name));
	UnicodeString page = fdq->FieldByName("Page")->AsString;
	re->Lines->Add(page);

}
//---------------------------------------------------------------------------


void __fastcall TNotePadFRM::N4Click(TObject *Sender)
{
	TTabSheet *tab = PageControl->ActivePage;
	UnicodeString name = tab->Name;
	name = "_"+name;
	TRichEdit *re = static_cast<TRichEdit*>(FindComponent(name));
	UnicodeString page;
	for (int i = 0; i < re->Lines->Count; i++)
	{
		page = page + re->Lines->Strings[i] + "\n";
	}
	fdq->ExecSQL("update content set page = " + QuotedStr(page) + " where id = 1");
}
//---------------------------------------------------------------------------

void __fastcall TNotePadFRM::N3Click(TObject *Sender)
{
	TTabSheet *tab = PageControl->ActivePage;
	UnicodeString name = tab->Name;
	name = "_"+name;
	TRichEdit *re = static_cast<TRichEdit*>(FindComponent(name));
	re->Clear();
}
//---------------------------------------------------------------------------

void __fastcall TNotePadFRM::N6Click(TObject *Sender)
{
	TTabSheet *tab = PageControl->ActivePage;
	UnicodeString name = tab->Name;
	name = "_"+name;
	TRichEdit *re = static_cast<TRichEdit*>(FindComponent(name));
	UnicodeString path;
	od->Filter = "Изображения bmp|*.bmp";
	if (od->Execute())
	{
		path = od->FileName;
	}
	TImage *img = new TImage(this);
	img->Picture->LoadFromFile(path);
	img->AutoSize = true;
	img->Top = re->CaretPos->Y;

	img->Show();
	img->Parent = re;
}
//---------------------------------------------------------------------------

