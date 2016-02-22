(* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is TurboPower OnGuard
 *
 * The Initial Developer of the Original Code is
 * TurboPower Software
 *
 * Portions created by the Initial Developer are Copyright (C) 1996-2002
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *
 * ***** END LICENSE BLOCK ***** *)
{*********************************************************}
{*                  ONGUARD5.PAS 1.13                    *}
{*     Copyright (c) 1996-02 TurboPower Software Co      *}
{*                 All rights reserved.                  *}
{*********************************************************}

{$I ONGUARD.INC}

{$B-} {Complete Boolean Evaluation}
{$I+} {Input/Output-Checking}
{$P+} {Open Parameters}
{$T-} {Typed @ Operator}
{$W-} {Windows Stack Frame}
{$X+} {Extended Syntax}

{$IFNDEF Win32}
{$G+} {286 Instructions}
{$N+} {Numeric Coprocessor}

{$C MOVEABLE,DEMANDLOAD,DISCARDABLE}
{$ENDIF}

unit OnGuard5;

interface

uses
  Controls,
  Forms,
  OnGuard,
{$IFDEF VERSION6}                                                      {!!.11}
  DesignIntf,
  DesignEditors;
{$ELSE}
  dsgnintf;
{$ENDIF}


type
  {property editor for ranges}
  TOgCodeProperty = class(TStringProperty)
  public
    function GetAttributes: TPropertyAttributes;
      override;
    function GetValue : string;
      override;
    procedure Edit;
      override;
  end;

implementation

uses
  OgConst,
  OgUtil,
  Onguard2;

{*** TOgCodeProperty ***}

function TOgCodeProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog];
end;

function TOgCodeProperty.GetValue : string;
begin
  Result := inherited GetValue;
end;

procedure TOgCodeProperty.Edit;
var
  Work : TCode;
begin
  with TCodeGenerateFrm.Create(Application) do
    try
      ShowHint := True;
      KeyFileName := OgKeyFile;
      if ShowModal = mrOK then begin
        Work := Code;
        Value := BufferToHex(Work, SizeOf(Work));
      end;
    finally
      Free;
    end;
end;


end.