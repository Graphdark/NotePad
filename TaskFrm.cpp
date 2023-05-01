//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "TaskFrm.h"
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

