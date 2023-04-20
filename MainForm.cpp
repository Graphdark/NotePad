//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

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
	REDoc1->Clear();
    REDoc2->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TNotePadFRM::FrmRes(TObject *Sender)
{
	btnAddDoc->Width = 23;
	btnAddDoc->Left = REDoc1->Width - 15;
}
//---------------------------------------------------------------------------
void __fastcall TNotePadFRM::btnAddDocClick(TObject *Sender)
{
	TTabSheet *tab = new TTabSheet(this);
	tab->Parent = this;
	tab->PageControl = PageControl1;
	tab->Caption = "Doc" + IntToStr(DocNumb);
}
//---------------------------------------------------------------------------
