unit pasSystemVariablen;

interface

uses TypInfo,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls;


// type
//------------------------------------------------------------------------------

const
  lEdit                       = false;
  lAendern                    = false;
  lNeu                        = true;
  _crlf                       = chr(13)+chr(10);
  _cr                         = chr(13);
  _lf                         = chr(10);
  cKleinsterBuchstabe         = chr(32);
  cGroessterBuchstabe         = chr(255);
  //----------------------------------------------------------------------------

var
   myAfNrLen        : Array [1..32] of Integer;

   //---------------------------------------------------------------------------
   //---------------------------------------------------------------------------
   procedure myAuftragClear;
   //---------------------------------------------------------------------------

implementation
//------------------------------------------------------------------------------
//
//------------------------------------------------------------------------------
procedure myAuftragClear;
begin
end;
//------------------------------------------------------------------------------
//
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//
//------------------------------------------------------------------------------

end.