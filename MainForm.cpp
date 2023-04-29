//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include<stdlib.h>
#include<Clipbrd.hpp>

#include "MainForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "RichView"
#pragma link "RVEdit"
#pragma link "RVScroll"
#pragma link "RVStyle"
#pragma link "RVUniscribeGrIn"
#pragma link "DBRV"
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
	TRichViewEdit *re = new TRichViewEdit(this);
	re->Parent = tab;
	re->Style = RVStyle1;
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
		setPath(path);
	}
	else
	{
		exit('0');
	}
	TTabSheet *tab = PageControl->ActivePage;
	UnicodeString name = tab->Name;
	name = "_"+name;
	TRichViewEdit *re = static_cast<TRichViewEdit*>(FindComponent(name));
	re->LoadRVF(path);
	re->Update();
}
//---------------------------------------------------------------------------


void __fastcall TNotePadFRM::N4Click(TObject *Sender)
{
	TTabSheet *tab = PageControl->ActivePage;
	UnicodeString name = tab->Name;
	name = "_"+name;
	TRichViewEdit *re = static_cast<TRichViewEdit*>(FindComponent(name));
	UnicodeString path = getPath();
	if (path.Trim().Length() == 0)
	{
		sd->Filter = "Документ gbdoc|*.gbdoc";
		sd->DefaultExt = "gbdoc";
		if (sd->Execute())
		{
			setPath(sd->FileName);
			path = getPath();
		}
	}
	re->SaveRVF(path,false);
}
//---------------------------------------------------------------------------

void __fastcall TNotePadFRM::N3Click(TObject *Sender)
{
	TTabSheet *tab = PageControl->ActivePage;
	UnicodeString name = tab->Name;
	name = "_"+name;
	TRichViewEdit *re = static_cast<TRichViewEdit*>(FindComponent(name));
	tab->Free();
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
	img->Top = re->CaretPos.Y;
	img->Left = re->CaretPos.X;
	img->Show();
	img->Parent = re;
}
//---------------------------------------------------------------------------
