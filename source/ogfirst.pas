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
{*                  OGFIRST.PAS 1.13                     *}
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

unit OgFirst;
  {-limit instance routines}

interface

uses
  Windows,
  Forms, SysUtils,
  OgUtil;

{detect/Activate instance routines}
function IsFirstInstance: Boolean;
procedure ActivateFirstInstance;
{!!.04} {revised Win16 version}


implementation

{$IFDEF FPC}
uses InterfaceBase;
{$ENDIF}

var
  FirstInstance : Boolean;
  InstanceMutex : THandle;

{limit instances routines}
function IsFirstInstance : Boolean;
begin
  Result := FirstInstance;
end;

procedure ActivateFirstInstance;
var
  ClassBuf,
  WindowBuf : array [0..255] of Char;
  Wnd,
  TopWnd    : hWnd;
  ThreadID  : DWord;                                                 {!!.07}
begin
  if IsFirstInstance then begin
    {$IFNDEF FPC}
    if IsIconic(Application.Handle) then
    {$ELSE}
    if IsIconic(WidgetSet.AppHandle) then
    {$ENDIF}
      Application.Restore
    else
      Application.BringToFront;
  end else begin
    {$IFNDEF FPC}
    GetClassName(Application.Handle, ClassBuf, SizeOf(ClassBuf));
    GetWindowText(Application.Handle, WindowBuf, SizeOf(WindowBuf));
    {$ELSE}
    GetClassName(WidgetSet.AppHandle, ClassBuf, SizeOf(ClassBuf));
    GetWindowText(WidgetSet.AppHandle, WindowBuf, SizeOf(WindowBuf));
    {$ENDIF}
    Wnd := FindWindow(ClassBuf, WindowBuf);
    if (Wnd <> 0) then begin
      GetWindowThreadProcessId(Wnd, @ThreadID);
      if (ThreadID = GetCurrentProcessId) then begin
        Wnd := FindWindowEx(0, Wnd, ClassBuf, WindowBuf);
        if (Wnd <> 0) then
          if IsIconic(Wnd) then
            ShowWindow(Wnd, SW_RESTORE)
          else begin
            SetForegroundWindow(Wnd);                                {!!.09}
            TopWnd := GetLastActivePopup(Wnd);
            if (TopWnd <> 0) and (TopWnd <> Wnd) and
                IsWindowVisible(TopWnd) and IsWindowEnabled(TopWnd) then
              BringWindowToTop(TopWnd)
            else
              BringWindowToTop(Wnd);
          end;
      end;
    end;
  end;
end;

function GetMutexName : string;
var
  WindowBuf : array [0..512] of Char;
begin
  {$IFNDEF FPC}
  GetWindowText(Application.Handle, WindowBuf, SizeOf(WindowBuf));
  {$ELSE}
  GetWindowText(WidgetSet.AppHandle, WindowBuf, SizeOf(WindowBuf));
  {$ENDIF}
  Result := 'PREVINST:' + WindowBuf;
end;

initialization
  InstanceMutex := CreateMutex(nil, True, PChar(GetMutexName));
  if (InstanceMutex <> 0) and (GetLastError = 0) then
    FirstInstance := True
  else
    FirstInstance := False;

finalization
  if (InstanceMutex <> 0) then
    CloseHandle(InstanceMutex);
end.
