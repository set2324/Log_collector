unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Menus, Windows, JwaTlHelp32;


type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckGroup1: TCheckGroup;
    CheckGroup2: TCheckGroup;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    SelectDirectoryDialog1: TSelectDirectoryDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

uses unit2;

{$R *.lfm}

{ TForm1 }

// При активации формы проверяем наличие лог-файлов.
// Если файл обнаружен, то ставим галочку.
// Если не обнаружен, то меню пункта станет неактивным.
procedure TForm1.FormActivate(Sender: TObject);
begin
   if FileExists('C:\Windows\System32\winevt\Logs\Application.evtx')
     then
         begin
         CheckBox1.Checked:=true;
         end
     else
         begin
         CheckBox1.Checked:=false;
         CheckBox1.Enabled:=false;
         end;
  if FileExists('C:\Windows\System32\winevt\Logs\Devicelock*.evtx')
     then
         begin
         CheckBox4.Checked:=true;
         end
     else
         begin
         CheckBox4.Checked:=false;
         CheckBox4.Enabled:=false;
         end;
  if FileExists('C:\Windows\System32\winevt\Logs\System.evtx')
     then
         begin
         CheckBox5.Checked:=true;
         end
     else
         begin
         CheckBox5.Checked:=false;
         CheckBox5.Enabled:=false;
         end;
  if FileExists('C:\Windows\System32\winevt\Logs\Setup.evtx')
     then
         begin
         CheckBox6.Checked:=true;
         end
     else
         begin
         CheckBox6.Checked:=false;
         CheckBox6.Enabled:=false;
         end;
  if FileExists('C:\Windows\System32\winevt\Logs\Security.evtx')
     then
         begin
         CheckBox7.Checked:=true;
         end
     else
         begin
         CheckBox7.Checked:=false;
         CheckBox7.Enabled:=false;
         end;
  if FileExists('C:\Windows\System32\winevt\Logs\Kaspersky*.evtx')
     then
         begin
         CheckBox8.Checked:=true;
         end
     else
         begin
         CheckBox8.Checked:=false;
         CheckBox8.Enabled:=false;
         end;
  if FileExists('C:\Windows\System32\winevt\Logs\Archive-application*.evtx')
     then
         begin
         CheckBox9.Checked:=true;
         end
     else
         begin
         CheckBox9.Checked:=false;
         CheckBox9.Enabled:=false;
         end;
  if FileExists('C:\Windows\System32\winevt\Logs\Archive-DeviceLock*.evtx')
     then
         begin
         CheckBox10.Checked:=true;
         end
     else
         begin
         CheckBox10.Checked:=false;
         CheckBox10.Enabled:=false;
         end;
  if FileExists('C:\Windows\System32\winevt\Logs\Archive-System*.evtx')
     then
         begin
         CheckBox11.Checked:=true;
         end
     else
         begin
         CheckBox11.Checked:=false;
         CheckBox11.Enabled:=false;
         end;
  if FileExists('C:\Windows\System32\winevt\Logs\Archive-Setup*.evtx')
     then
         begin
         CheckBox12.Checked:=true;
         end
     else
         begin
         CheckBox12.Checked:=false;
         CheckBox12.Enabled:=false;
         end;
  if FileExists('C:\Windows\System32\winevt\Logs\Archive-Security*.evtx')
     then
         begin
         CheckBox13.Checked:=true;
         end
     else
         begin
         CheckBox13.Checked:=false;
         CheckBox13.Enabled:=false;
         end;
  if FileExists('C:\Windows\System32\winevt\Logs\Archive-Kaspersky*.evtx')
     then
         begin
         CheckBox14.Checked:=true;
         end
     else
         begin
         CheckBox14.Checked:=false;
         CheckBox14.Enabled:=false;
         end;
  if FileExists('C:\Windows\System32\winevt\Logs\Windows PowerShell.evtx')
     then
         begin
         CheckBox15.Checked:=true;
         end
     else
         begin
         CheckBox15.Checked:=false;
         CheckBox15.Enabled:=false;
         end;
  if FileExists('C:\Windows\System32\winevt\Logs\Archive-Windows PowerShell*.evtx')
     then
         begin
         CheckBox16.Checked:=true;
         end
     else
         begin
         CheckBox16.Checked:=false;
         CheckBox16.Enabled:=false;
         end;
// Проверяем наличие портативной версии 7Zip.
// Если архиватор найден, то программа будет сжимать файлы.
  if FileExists('7zr.exe')
     then
         begin
         CheckBox2.Checked:=true;
         end
     else
         begin
         CheckBox2.Checked:=false;
         CheckBox2.Enabled:=false;
         end;
// Проверка лог-файла продключения USB-устройств.
  if FileExists('C:\Windows\inf\setupapi.dev.log')
     then
         begin
         CheckBox17.Checked:=true;
         end
     else
         begin
         CheckBox17.Checked:=false;
         CheckBox17.Enabled:=false;
         end;
// Проверка лог-файла сервера Radmin.
  if FileExists('C:\Windows\SysWow64\rserver30\Radmin_log.html')
     then
         begin
         CheckBox18.Checked:=true;
         end
     else
         begin
         CheckBox18.Checked:=false;
         CheckBox18.Enabled:=false;
         end;
// Проверка лог-файла продключения USB-устройств.
  if FileExists('C:\Windows\setupapi.log')
     then
         begin
         CheckBox22.Checked:=true;
         end
     else
         begin
         CheckBox22.Checked:=false;
         CheckBox22.Enabled:=false;
         end;
end;

// Фунция получения имени компьютера.
// Нужна для наименования папки с лог-файлами.
function ComputerName: string;
var
  Buf: array[0..Windows.MAX_COMPUTERNAME_LENGTH] of Char;
  BufSize: Windows.DWORD;
begin
  BufSize := SizeOf(Buf);
  if Windows.GetComputerName(Buf, BufSize) then
    Result := Buf
  else
    Result := '';
end;

// Обработка кнопки About.
// Переход на вторую форму, первую прячем.
procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  Form2.Show;
  Form1.Hide;
end;

procedure TForm1.Button1Click(Sender: TObject);
var Folder,cFileName :string; // Переменные для имени папки.
    ProcessSnap: THandle; // Переменные для определения списка процессов.
    PE32: TProcessEntry32; // Переменные для определения списка процессов.
    F: TextFile; // Переменная для текстового файла.
begin
if   SelectDirectoryDialog1.execute
    then
    begin
// Определяем имя компьютера и создаем папку и его именем.
         Folder:= ExcludeTrailingPathDelimiter(SelectDirectoryDialog1.FileName);
// Знак ! пишем вначале имени папки.
         CreateDir(Folder + '\!' + ComputerName);
         Folder:= Folder + '\!' + ComputerName;
// Определяем имя файла для сохранения файла с перечнем процессов.
         cFileName:= Folder + '\ProcessList.txt';
// Проверяем выбран ли пункт меню с сохранением файла-лога.
// Если пункт выбран, то открываем консоль (Cmd) и ее средствами копируем
// лог-файл ОС Windows.
         if CheckBox1.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\System32\winevt\Logs\Application.evtx ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox4.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\System32\winevt\Logs\Devicelock*.evtx ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox5.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\System32\winevt\Logs\System.evtx ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox6.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\System32\winevt\Logs\Setup.evtx ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox7.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\System32\winevt\Logs\Security.evtx ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox8.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\System32\winevt\Logs\Kaspersky*.evtx ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox9.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\System32\winevt\Logs\Archive-application*.evtx ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox10.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\System32\winevt\Logs\Archive-DeviceLock*.evtx ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox11.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\System32\winevt\Logs\Archive-System*.evtx ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox12.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\System32\winevt\Logs\Archive-Setup*.evtx ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox13.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\System32\winevt\Logs\Archive-Security*.evtx ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox14.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\System32\winevt\Logs\Archive-Kaspersky*.evtx ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox15.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy "C:\Windows\System32\winevt\Logs\Windows PowerShell.evtx" ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox16.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy "C:\Windows\System32\winevt\Logs\Archive-Windows PowerShell*.evtx" ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox18.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\SysWow64\rserver30\Radmin_log.html ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox17.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\inf\setupapi.dev.log ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox22.Checked
            then
                begin
                ShellExecute(0,nil, PChar('cmd'),PChar('/k copy C:\Windows\setupapi.log ' + Folder + ' && exit'),nil,1);
                end;
         if CheckBox20.Checked
            then
                begin
// Собираем информацию о сети средствами ipconfig.
                ShellExecute(0,nil, PChar('cmd'),PChar('/k ipconfig /all > ' + Folder +'tmp.txt && cmd /U /C type ' + Folder + 'tmp.txt > ' + Folder + '\Ipconfig.txt && del '+ Folder +'tmp.txt && exit'),nil,1);
                end;
         if CheckBox21.Checked
            then
                begin
// Ожидаем завершения предыдущей команды и событаем информацию о компьютере
// средствами sysneminfo.
                Sleep(1000);
                ShellExecute(0,nil, PChar('cmd'),PChar('/k systeminfo > ' + Folder +'tmp.txt && cmd /U /C type ' + Folder + 'tmp.txt > ' + Folder + '\Sysinfo.txt && del '+ Folder +'tmp.txt && exit'),nil,1);
                end;
         if CheckBox19.Checked
            then
                begin
// Экспортируем раздел реестра в файл с информацией о подключаемых
// USB накопителей к компьютеру.
                ShellExecute(0,nil, PChar('cmd'),PChar('/k reg export "HKLM\SYSTEM\CurrentControlSet\Enum\USBSTOR" '+ Folder + '\USBSTOR.reg /y && exit'),nil,1);
                end;
         if CheckBox23.Checked
// Получаем список запущенных процессов и записываем его в файл.
            then
                begin
                ProcessSnap := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
                     if ProcessSnap <> INVALID_HANDLE_VALUE then
                        begin
                        PE32.dwSize := SizeOf(TProcessEntry32);
                           if Process32First(ProcessSnap, PE32)
                              then
                                  begin
                                  AssignFile(F, cFileName);
                                  Rewrite(F);
                                     repeat
                                     WriteLn(F, PE32.szExeFile);
                                     until not Process32Next(ProcessSnap, PE32);
                                     CloseFile(F);
                                  end;
                        CloseHandle(ProcessSnap);
                        end;
                end;
         if CheckBox2.Checked
            then
                begin
// Ожидаем завершения предыдущей операции.
                Sleep(3500);
// Выполняем архивацию с помощью консольного архиватора.
                ShellExecute(0,nil, PChar('cmd'),PChar('/k 7zr.exe a -t7z -m0=LZMA2 -mmt=on -mx5 -md=16m -mfb=32 -ms=4g -mqs=on -sccUTF-8 -bb0 -bse0 -bsp2 -w -mtc=on -mta=on ' + '"'+ Folder + '7z" "' + Folder + '" && rmdir ' + Folder + ' /s /q && exit' ),nil,1);
                end;
    end;
end;
end.

