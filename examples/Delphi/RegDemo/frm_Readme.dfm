object frmReadme: TfrmReadme
  Left = 192
  Top = 107
  Width = 539
  Height = 462
  Caption = 'Readme.txt'
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 531
    Height = 435
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'Registration Demo by Bill Mullen [TPX]'
      '--------------------------------------'
      ''
      
        'This demo consists of three applications and complete project co' +
        'de.'
      'The three applications are:'
      ''
      
        'RCG.EXE - This is the application you use to gather information ' +
        'from '
      
        'your user.  That information is then used to generate a release ' +
        'code '
      'that you will give back to the user. '
      ''
      'REGISTRATION.EXE - A sample registration application that your '
      
        'user would run when they are ready to register their product wit' +
        'h you.'
      
        'They enter the serial number that was on their disk or CD.  When' +
        ' '
      
        'they call you, they will read you their serial number, and the m' +
        'achine '
      
        'identifier (MachineModifier).  You will enter this information i' +
        'nto RCG '
      
        '(above) and calculate a release code.  You will then read them t' +
        'he '
      
        'release code and they will enter it into the Release Code field.' +
        '  '
      
        'When they click the SAVE button, it validates the release code a' +
        'nd '
      
        'if it is valid, the serial number and release code are saved to ' +
        'a file'
      'called REGISTRATION.DAT. '
      ''
      'HELLOWORLD.EXE - A simple application that demonstrates the '
      
        'use of the registration information found in the REGISTRATION.DA' +
        'T'
      'file that was created by the REGISTRATION.EXE application.  The '
      'serial number stored in the REGISTRATION.DAT file is used to '
      
        'calculate a release code on the machine the application is runni' +
        'ng '
      
        'on and it them compares this release code with the one stored in' +
        ' the '
      'REGISTRATION.DAT file.  If the two release codes are the same, '
      
        'the application runs (displays "Hello World") otherwise it infor' +
        'ms the '
      'user that they have an unregistered demo.'
      ''
      
        'An OnGuard.ini file is included that contains the KEY that I use' +
        ' in '
      'this demo. When running the demo as shipped, you should use the '
      'supplied OnGuard.ini file when getting the application key.'
      ''
      
        'Before opening and modifying any code, you should run the follow' +
        'ing '
      'test  to see how these applications work with one another.  '
      ''
      '1.  Run the HELLOWORLD.EXE application.  As you can see, it is '
      'not registered.'
      ''
      '2.  Execute REGISTRATION.EXE.  Enter any valid long integer '
      
        'value in the serial number field in the REGISTRATION.EXE applica' +
        'tion.'
      
        'Execute RCG.EXE and arrange the windows so that you can view bot' +
        'h.  '
      ''
      
        'a.  In the RCG application, load the key by pressing the speed b' +
        'utton '
      
        'and selecting the Hello World application from the OnGuard.ini f' +
        'ile that '
      'was supplied.  '
      ''
      
        'b.  Select the "Apply a Machine Modifier" checkbox and enter the' +
        ' '
      'machine modifier that is displayed in the REGISTRATION.EXE '
      
        'application (this simulates the user reading that information to' +
        ' you).  '
      ''
      
        'c.  Skip the Expiration portion as I did not use this feature in' +
        ' the '
      'other programs.  '
      ''
      'd.  Next enter the serial number that is displayed in the '
      'REGISTRATION.EXE application (again, a simulation).  '
      ''
      
        'e.  Generate a release code by pressing the speed button next to' +
        ' '
      'the Release Code edit field.'
      ''
      
        'f.  Have the user enter the release code in their REGISTRATION.E' +
        'XE'
      'application that you read them from your RGC.EXE application '
      
        '(simulated).  For testing purposes, change any single character ' +
        'as '
      
        'you enter the data so you can see how the application will rejec' +
        't an'
      'invalid code.  (Now simply copy and paste the release code from '
      'RGC to REGISTRATION to save yourself having to enter the whole'
      'string again.)'
      ''
      'If you entered everything correctly, the REGISTRASTION.EXE '
      
        'application will inform you and save the data.  Now let'#39's test t' +
        'he '
      'registration information.'
      ''
      '3.  Run the HELLOWORLD.EXE application.  If you entered '
      
        'everything correctly in step 2, you will see that the applicatio' +
        'n is '
      'registered (It displays "HELLO WORLD").'
      ''
      'If you have another computer, copy HELLOWORLD.EXE and '
      'REGISTRASTION.DAT to that machine and try to execute '
      'HELLOWORLD.EXE - you should be told that the application is '
      'an unregistered demo.    You can also edit the any single '
      'character in REGISTRASTION.DAT and try to run '
      'HELLOWORLD.EXE.  '
      '')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
  end
end
