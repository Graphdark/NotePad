//---------------------------------------------------------------------------


#pragma hdrstop

#include "DB.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma classgroup "Vcl.Controls.TControl"
#pragma resource "*.dfm"
TDM *DM;
//---------------------------------------------------------------------------
__fastcall TDM::TDM(TComponent* Owner)
	: TDataModule(Owner)
{

}
//---------------------------------------------------------------------------
void open(std::string path)
{
	FDcon->
}
