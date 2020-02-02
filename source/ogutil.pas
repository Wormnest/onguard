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
{*                   OGUTIL.PAS 1.13                     *}
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

unit OgUtil;
  {-general constants, types, and utility routines}

interface

uses
  Windows,
  SysUtils,
  OgConst,
  OgSrMgr;                                                          {!!.08}

const
  DefAutoCheck      = True;
  DefAutoDecrease   = True;
  DefCheckSize      = True;
  DefStoreCode      = False;
  DefStoreModifier  = False;
  DefStoreRegString = False;

const
  OgVersionStr      = '1.13';



const
  {largest structure that can be created}
  MaxStructSize = 1024 * 2000000; {2G}

type
  PByte         = ^Byte;
  PByteArray    = ^TByteArray;
  TByteArray    = array [0..MaxStructSize div SizeOf(Byte) - 1] of Byte;
  PLongInt      = ^LongInt;
  PLongIntArray = ^TLongIntArray;
  TLongIntArray = array [0..MaxStructSize div SizeOf(LongInt) - 1] of LongInt;

  TLongIntRec = record
    case Byte of
      1: (Lo: Word;
          Hi: Word);
      2: (LoLo: Byte;
          LoHi: Byte;
          HiLo: Byte;
          HiHi: Byte);
  end;


function BufferToHex(const Buf; BufSize : Cardinal) : string;
function BufferToHexBytes(const Buf; BufSize : Cardinal) : string;
function HexStringIsZero(const Hex : string) : Boolean;
function HexToBuffer(const Hex : string; var Buf; BufSize : Cardinal) : Boolean;
function Max(A, B : LongInt): LongInt;
function Min(A, B : LongInt) : LongInt;
procedure XorMem(var Mem1; const Mem2; Count : Cardinal);
function OgFormatDate(Value : TDateTime) : string;                     {!!.09}

{file related routines}
function GetFileSize(Handle : THandle) : Cardinal;

var
  StrRes : TOgStringResource;                                           {!!.08}

implementation


function BufferToHex(const Buf; BufSize : Cardinal) : string;
var
  Bytes : TByteArray absolute Buf;
  I     : LongInt;
begin
  Result := '';
  for I := 0 to BufSize - 1 do
    Result := Result + IntToHex(Bytes[I], 2);
end;

function BufferToHexBytes(const Buf;  BufSize : Cardinal) : string;
var
  Bytes  : TByteArray absolute Buf;
  I      : LongInt;
  HexStr : string;
begin
  {$IFDEF BCB}
  HexStr := '0x';
  {$ELSE}
  HexStr := '$';
  {$ENDIF}
  Result := HexStr + IntToHex(Bytes[0], 2);
  for I := 1 to BufSize - 1 do
    Result := Result + ',' + HexStr + IntToHex(Bytes[I], 2);
end;

function HexStringIsZero(const Hex : string) : Boolean;
var
  I   : Integer;
  Str : string;
begin
  Result := False;

  Str := '';
  for I := 1 to Length(Hex) do
    if Upcase(Hex[I]) in ['0'..'9', 'A'..'F'] then
      Str := Str + Hex[I];

  for I := 1 to Length(Str) do
    if Str[I] <> '0' then
      Exit;

  Result := True;
end;

function HexToBuffer(const Hex : string; var Buf; BufSize : Cardinal) : Boolean;
var
  Bytes : TByteArray absolute Buf;
  I, C  : Integer;
  Str   : string;
begin
  Result := False;

  Str := '';
  for I := 1 to Length(Hex) do
    if Upcase(Hex[I]) in ['0'..'9', 'A'..'F'] then
      Str := Str + Hex[I];

  if (Cardinal(Length(Str) div 2) <> BufSize) then                     {!!.07}
    Exit;

  for I := 0 to BufSize - 1 do begin
    Val('$' + Copy(Str, (I shl 1) + 1, 2), Bytes[I], C);
    if (C <> 0) then
      Exit;
  end;

  Result := True;
end;

{$IFDEF Win32}
function Max(A, B : LongInt) : LongInt; register;
asm
  cmp  eax, edx
  jge  @Exit
  mov  eax, edx
@Exit:
end;
{$ELSE}
function Max(A, B : LongInt) : LongInt;
begin
  if A > B then
    Result := A
  else
    Result := B;
end;
{$ENDIF}

{$IFDEF Win32}
function Min(A, B : LongInt) : LongInt; register;
asm
  cmp  eax, edx
  jle  @Exit
  mov  eax, edx
@Exit:
end;
{$ELSE}
function Min(A, B : LongInt) : LongInt;
begin
  if A < B then
    Result := A
  else
    Result := B;
end;
{$ENDIF}

{$IFDEF Win32}
procedure XorMem(var Mem1; const Mem2; Count : Cardinal); register;
asm
  push esi
  push edi

  mov  esi, eax         //esi = Mem1
  mov  edi, edx         //edi = Mem2

  push ecx              //save byte count
  shr  ecx, 2           //convert to dwords
  jz   @Continue

  cld
@Loop1:                 //xor dwords at a time
  mov  eax, [edi]
  xor  [esi], eax
  add  esi, 4
  add  edi, 4
  dec  ecx
  jnz  @Loop1

@Continue:              //handle remaining bytes (3 or less)
  pop  ecx
  and  ecx, 3
  jz   @Done

@Loop2:                 //xor remaining bytes
  mov  al, [edi]
  xor  [esi], al
  inc  esi
  inc  edi
  dec  ecx
  jnz  @Loop2

@Done:
  pop  edi
  pop  esi
end;
{$ELSE}
procedure XorMem(var Mem1; const Mem2; Count : Cardinal);
var
  pB1,pB2 : PByte;
  B1,B2  : Byte;
  i : Cardinal;
begin
  if Count = 0 then Exit;
  i := 0;
  pB1 := PByte(@Mem1);//Mem1
  pB2 := PByte(@Mem2);//Mem2
  while i < Count do
  begin
    B1 := pB1^;
    B2 := pB2^;
    pB1^ := B1 xor B2;
    Inc(pB1);
    Inc(pB2);
    Inc(i);
  end;
end;
{$ENDIF}

{!!.09}
function OgFormatDate(Value : TDateTime) : string;
  {convert date to string with 4-digit year and 2-digit month}
var
  S : string;
begin
  {$IF CompilerVersion >= 22}
    // Starting with VER220 = CompilerVersion 22 = XE FormatSettings is defined.
  S := FormatSettings.ShortDateFormat;
  {$ELSE}
  S := ShortDateFormat;
  {$ENDIF}
  if Pos('yyyy', S) = 0 then
    Insert('yy', S, Pos('yy', S));
  if Pos('MMM', S) > 0 then
    Delete(S, Pos('MMM', S), 1);
  Result := FormatDateTime(S, Value)
end;


{file related routines}
function GetFileSize(Handle : THandle) : Cardinal;
begin
  Result := Windows.GetFileSize(Handle, nil);
end;


(*
function RolByteX(I, C : Byte) : Byte; register;
asm
  mov  cl, dl
  rol  al, cl
end;
*)

procedure FreeStrRes; far;
begin
  StrRes.Free;
  StrRes := nil;
end;

initialization
  StrRes := TOgStringResource.Create(HInstance, 'ONGUARD_STRINGS_ENGLISH');  {!!.08}

finalization
  FreeStrRes;
end.
