//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "FrmUser.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TUserFrm *UserFrm;
//---------------------------------------------------------------------------
__fastcall TUserFrm::TUserFrm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TUserFrm::showFrm(TObject *Sender)
{
    FDQ->Active = true;
}
//---------------------------------------------------------------------------
void __fastcall TUserFrm::GridUserCellClick(TColumn *Column)
{
	EdUser->Text = GridUser->DataSource->DataSet->FieldByName("author")->AsString;
	EdMail->Text = GridUser->DataSource->DataSet->FieldByName("mail")->AsString;
}
//---------------------------------------------------------------------------

void __fastcall TUserFrm::DelBtnClick(TObject *Sender)
{
	FDQ->ExecSQL("delete from AuthorTable where id = " +
					GridUser->DataSource->DataSet->FieldByName("id")->AsString);
	FDQ->Open("select * from AuthorTable");
}
//---------------------------------------------------------------------------

void __fastcall TUserFrm::AddBtnClick(TObject *Sender)
{
	if ((EdUser->Text.Trim().Length() == 0) || (EdMail->Text.Trim().Length() == 0))
	{
		ShowMessage("Заполните все поля");
		exit('0');
	}
//	ShowMessage("insert into AuthorTable(Author, Mail) values("+
//				QuotedStr(EdUser->Text) + "," + QuotedStr(EdMail->Text) + ")");
	FDQ->ExecSQL("insert into AuthorTable(Author, Mail) values("+
				QuotedStr(EdUser->Text) + "," + QuotedStr(EdMail->Text) + ")");
	FDQ->Open("select * from AuthorTable");
}
//---------------------------------------------------------------------------

void __fastcall TUserFrm::EdBtnClick(TObject *Sender)
{
	FDQ->ExecSQL("update AuthorTable set Author = "+
	QuotedStr(EdUser->Text) + " , mail = "+
	QuotedStr(EdMail->Text) + " where id = "+
	GridUser->DataSource->DataSet->FieldByName("id")->AsString);
	FDQ->Open("select * from AuthorTable");
}
//---------------------------------------------------------------------------
