object Form1: TForm1
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 550
  ClientWidth = 991
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 991
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 16185078
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 53
      Height = 34
      Align = alLeft
      Caption = 'Mesas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5395026
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 25
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 62
      Top = 3
      Width = 114
      Height = 34
      Align = alLeft
      Caption = '> Dispon'#237'veis'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227327
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 25
    end
    object Panel3: TPanel
      Left = 920
      Top = 0
      Width = 71
      Height = 40
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 0
        Width = 71
        Height = 40
        Cursor = crHandPoint
        Align = alClient
        Caption = '[ SAIR ]'
        Flat = True
        OnClick = SpeedButton1Click
        ExplicitLeft = 80
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 432
    Width = 991
    Height = 118
    Align = alBottom
    BevelOuter = bvNone
    Color = 16185078
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      991
      118)
    object Label3: TLabel
      Left = 32
      Top = 24
      Width = 68
      Height = 45
      Caption = 'Livre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3050284
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 256
      Top = 24
      Width = 149
      Height = 45
      Caption = 'Reservado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4498647
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 536
      Top = 24
      Width = 133
      Height = 45
      Caption = 'Ocupado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 1983377
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 875
      Top = 24
      Width = 111
      Height = 49
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '[ CARREGAR ]'
      OnClick = SpeedButton2Click
    end
  end
  object DBCtrlGrid1: TDBCtrlGrid
    AlignWithMargins = True
    Left = 5
    Top = 45
    Width = 981
    Height = 382
    Cursor = crHandPoint
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    AllowDelete = False
    AllowInsert = False
    ColCount = 7
    Color = clWhite
    DataSource = DataSource1
    PanelBorder = gbNone
    PanelHeight = 95
    PanelWidth = 137
    ParentColor = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    RowCount = 4
    SelectedColor = 5395026
    OnPaintPanel = DBCtrlGrid1PaintPanel
    ExplicitLeft = 0
    ExplicitTop = 48
    object CardPanel1: TCardPanel
      AlignWithMargins = True
      Left = 3
      Top = 33
      Width = 131
      Height = 59
      Margins.Top = 0
      Align = alClient
      ActiveCard = Card_reservado
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Card_livre: TCard
        Left = 0
        Top = 0
        Width = 131
        Height = 59
        Caption = 'Card_livre'
        CardIndex = 0
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 131
          Height = 59
          Align = alClient
          BevelOuter = bvNone
          Color = 3050284
          ParentBackground = False
          TabOrder = 0
          object Image1: TImage
            Left = 0
            Top = 0
            Width = 131
            Height = 59
            Cursor = crHandPoint
            Align = alClient
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
              003008060000005702F9870000000467414D410000B18F0BFC61050000000662
              4B4744000000000000F943BB7F0000000970485973000000600000006000F06B
              42CF000003F54944415478DAED995F4853511CC7CFB9572DC50852A150898850
              087A715841926ED01FDB863DF887EC2128AC50A137FF4C993737B4D752D3849E
              84FE2852DB920277938402734FF5904150A605A53E4428EAB65FBF5B33D1FDBB
              7767DB9DE0EF61F79EDD7BCEEFFB397F7EE7DC7328D9E246D516B00DA0B68084
              00287F5CCEE7A72E147A2929A15E28A01CC90720FB0890749F97DFF8FB0DD353
              C05117F17AC424D7C9094110BCAA02989E9CCAA59CBB164BB988C96C85D967D0
              F900C77BBB85D2B199B802348D146571EE140BA5700993292C9580B60284DC4F
              026FAB601C9B8B3940ABADE402507A076FF7300ADF6CF394D2BA76BDF3614C00
              6A260B92B3BEEFEEC10C57A22C7C9322E8FBB1F757FD3D8D6B356A00669B3ECD
              4D1787F0E5B33115BF6E233CA4950B46C7223380AFE69FC651BCCF60945FCA3C
              27540CAE300198ECDAFE98779B600884F45A0DE2F588014C765D352530A086F8
              75085A6535381F2906681AD665F0C9F0016F33D504405BE0C19B172CC4060530
              D9747D18E76B189D0BBEAB99A5100CDB3D56BDB356368079A438C7E3E13E11B6
              49AACD6210FF02B438B40DD8173A19CA5AE1813B241847A76501B4D8B49DF8A4
              81C1A180E2DB369469D74AE9885B028576B61BC4A6B00066B399F368C6BFE06D
              4E84BEFED7BC5FC5B0B5C4ECD452C6FEC18A414F488056BBEE3810781DA113BF
              9AF7836068090CAB4731AC4E8404303974CD14C01A0BF1AC10B8446FB21AC50D
              2D18A005B4C3487A5E61D941BB4D5088C8BAD310FA290F0980B5F31E2F871514
              2ABBE603F892F2C96F0920EF2C46F148388079227FA9ACB8E6FDFC296B8939F4
              97150E6099C88BFFCCE2238058469F3BA30510D0D041C8F515960F0CACB20094
              74A17803C8EA424A0771FC00E40CE208C3687C00E4845186892CF60094345AF4
              E2ADD000B6E26394726F121180022D6C373ADF8604F8B7987BF5191FE52618C0
              343F597460F36E5E4067380E3AD04B636201D00E8BC1D9ECF76FA057A3F44113
              4D5B46EA83B8129D95052099C9AEBD8B0FAFA9AD5C3214DF85E2EB033D0B0A60
              7E7E7A8F6775758AA8FF513F8F1FF5F98A3FEA256B75E8AA00E0819AEA81920A
              AB5E1C0CF63CECC6568BA3A4174BB9AA92FC6E8BE1655DA837C20248871779A9
              F343785B164FE918F39F71BB3C6542C9989B0940326973D74317A5662C8D937E
              070F699551D9DC5D33DF26EFEDD84726E8E6D3E146B89A570CB06626BBAE9212
              E822D18F4E3F71C0D6861AB05101904CDA37E552C84D5CF45DC6E40E46E1D224
              D59F949C6C16CEBC58509A99ED90CFAECDE608A90302D5CAD74EF095106E00F3
              76079A61E302B066D202D0AD19D7E094A9A59414E0350F4B964E2DD37DAF48C7
              ACD249E447FC7F927AA9C8B94EB8543F664D04DB0650DBB63CC01FE62CA2400E
              6A837D0000002574455874646174653A63726561746500323032322D30392D31
              305431383A35303A33342B30303A3030B7B24445000000257445587464617465
              3A6D6F6469667900323032322D30392D31305431383A35303A33342B30303A30
              30C6EFFCF90000000049454E44AE426082}
            OnClick = GET_CodigoMesa
            ExplicitTop = 3
          end
        end
      end
      object Card_ocupado: TCard
        Left = 0
        Top = 0
        Width = 131
        Height = 59
        Caption = 'Card_ocupado'
        CardIndex = 1
        TabOrder = 1
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 131
          Height = 59
          Align = alClient
          BevelOuter = bvNone
          Color = 1983377
          ParentBackground = False
          TabOrder = 0
          object Image3: TImage
            Left = 0
            Top = 0
            Width = 131
            Height = 59
            Cursor = crHandPoint
            Align = alClient
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
              003008060000005702F9870000000467414D410000B18F0BFC61050000000662
              4B4744000000000000F943BB7F0000000970485973000000600000006000F06B
              42CF0000027F4944415478DAED993D4FDB4018C79FC755C2442BBA33900C0C74
              636D5718BAF0A2104BC0CA37A0DFA2EADE35956A134860407C04262436180859
              58787F9B4804C7734EB092609B7B6C87EBA97924C7273B77FEFFCE7FDF733E23
              181EA85BC00040B78001806E01A900083B3F0A42FCA2E2146DC39AB45C919A4D
              786CAC62F9E44A19A02D7E9FCA9F3509EF8D436864BF62F5F0520DA0985BA7FD
              BC6ED53D5146F7784115E00EF4D92622C402BAF5B20A80D02D35242EC0125FF0
              6FFDD454000AB1457761C660000F22D24A0600445B890BD0A41E59A46A7354B6
              99422A20B0445774A83CC4AB1A6E250E4013108BE8D4AAA2001FC0CAFD614054
              E0D3888DBFF79AC2CE7D07011B312002ADA40E80689378D76F6E653203B7D7B2
              37E754C5FB75ED7C9192A7C303807378B226B07C741E0F40C036DC5BF3B873F4
              E01F7AFB4EBC162FC16FAE5D9A36CC320120C84ABC67800791B278BF952E2BF1
              472135883E89F7A26B548A378C464364FB28FEA545DF4A49F240702FCB467B8F
              A93DEC5C08CF4AC91259C09DE83A9D7ACF7745CB4A89337108449FC5BF5C652B
              8DA9C42B2B794DF3931D3F10D79202048A7F27880BC8E2C47FFB10878FF37218
              E5676C5E48EB38B5A2578C01F076928A37ED508D96754AB5B33800EA19B66F10
              F1A712FCE941DA101DD6E103183F9D0678A4BF2FA15B73D849AAE34ED0F524B0
              149FE1E94FFA42D30AF956B64CBD27179DB8C362455A80EA96F8E2C317BACC78
              A9EF1875CC03405140A7BE1E7EFA5F060818754C0288B44E2780F18BBB55DACF
              28B4F89EC1585E2F8C8D8385BB541ED1ADBA2DE9001A996FCA1F38E44FFB2BCD
              4F2A4ED3F6518F6E71090237E1A9F183F589498BD834B9750B1800E8163000D0
              2D20693C033F68DDAF72A8FECF0000002574455874646174653A637265617465
              00323032322D30392D31305431383A34393A30352B30303A3030A2D1BC180000
              002574455874646174653A6D6F6469667900323032322D30392D31305431383A
              34393A30352B30303A3030D38C04A40000000049454E44AE426082}
            OnClick = GET_CodigoMesa
            ExplicitTop = 3
          end
        end
      end
      object Card_reservado: TCard
        Left = 0
        Top = 0
        Width = 131
        Height = 59
        Caption = 'Card_reservado'
        CardIndex = 2
        TabOrder = 0
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 131
          Height = 59
          Align = alClient
          BevelOuter = bvNone
          Color = 4498647
          ParentBackground = False
          TabOrder = 0
          object Image2: TImage
            Left = 0
            Top = 0
            Width = 131
            Height = 59
            Cursor = crHandPoint
            Align = alClient
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
              003008060000005702F9870000000467414D410000B18F0BFC61050000000662
              4B4744000000000000F943BB7F0000000970485973000000600000006000F06B
              42CF000006764944415478DACD5A6B6C5445143E67DBDEBBA5C5440A86A74409
              951FA8318020424BD1A821268ABC448AFE501EF2522322BE4814031A0441A13E
              D084288F0089187F08249A6D17542C88C64702821045D00845431FECDDEEDEF1
              9B7BB7DDB977EF16F6C5EE4D6677F6CCCC39DF39F7CC993333CB94854704CA7A
              93AF7D3C118FC4CF2128D7A354A094C7BAB4A034A19C403942421C205112E09A
              D6BF3395CD6983FEA27B0515876710F34CFC1A9EA6F88350E6638A685BF9CEE6
              A62BA2800894F6279FB918D55928DDD23580EB6945D94811DF1B7CC7C5D33951
              401CA2126AD5E7A1FA2AC55D23DB4F1B20ADA2D6D04A9E4046D61410FBF51B28
              42DBD1FBE6245DA2E8D548EC0B9030BFA3223A4A227C864AE1FB27C8A43E7415
              B1D617B5C144BE11E823E7CBAD18E74BC2EF07B44CE3B1C6AF192B2082DA2412
              BC89BCAD7E0A3D3650A46873AAAF5EECEFD69722E65C62136F952B3CBA34637E
              3CC2E3C2BBD2564004F5B924683DAA45AEA6B3A0BF483D8D4D3C94C2A9004F90
              B197CAC8AF3F0628CBF0AB87AB390A39F3789CF17ECA0AC4C0BFE331642B9584
              16F2683A9F09F00479F28D98D10F21F39EC4469A934C094F05626EB39D9C966F
              47C89CC755A10FB209DC2157004FD0BF19B5875C4D51623199ABC29F5E52016B
              C246E910397DBE0D56980C2BECCE15784B7683361590B6A05AECD1DC8C328CAB
              8D634915103F9346E7F44657B46907F8FBF20CBEE3F99ECA8C913C1C983C1568
              D09682B4D2318479562EDDA60BF011D07624B813D312AE3256252820BE2CED47
              C5E65154CB14D65BB83A5C9B1FF062065585775250976FFE6EA5AD85B8A892AB
              DAFE722AD0A0AFC5D7130AEB2632F5215CD37C2E67E083DA64048B6D2EF07251
              7C1886DB6AF591D1296AFEE408B14C6BF0169EEE54C04ACC4AC27F909ADB7411
              BA726D7980DFE154547F0A78D628A4566AD706CA04D056A05E5F0455D6291DFE
              A40A6350A68B54269677F4B7163BED77D78ABD00116983AD4083FFA03325164B
              C1E8F57C5BDE31AEDEFF0AD68297E2146EE4EAD04816C16E7D4844651ED3311F
              A2486B07A69ADBE412BC35D60E32A7149C828A4B7AB3A8D7A623542AAF4D7C03
              66A30B09BCC2E3406CD7D7417990117DA4EF2FEAA431AF40DC7FA1D0C0DB7CF4
              D7F0F5AC425A2B15D88BCA5D4AB74960FA49A181B778D56B1361E03836A63D52
              81DFC8DE84DB4F9118CA63C2BF141AF818BF1BC1EF4785741C0AF89B1C8B4489
              51918D5439DBE02D9E5F530F6AD795CDBF68926F40EE3DB54E5A85A167BC4949
              31CE5F365F996C36E9EA5ED94854A0CCD0D46CAF50C05BBC3F279DCAF4904B01
              970B99C6D55C43FFA52520076EE3E01FE8DE937CE1B30AE91C1632FD38968441
              9DA4342771AEC1C764784D627D0FA9E92A8B895E5BB77C83B7E4D8EEB95321ED
              4E5CC804AFE471A1E70B0DBC2DCB6B21CB2095B892E06D79FE467C8E5028D3D8
              3E598E9CA17892645251D1001ED376A6A0C0EFF35F4BA63849F1D33C3B99F3D4
              4CF072B8D1B242016FC90C6ACF01D70A857200B26EEBD8D02C84FDDF8A37F279
              324303114E5B3C18E52CCE27056FC77F99F2F48B13693E768C75EA96123B1E75
              434F4F62C7B3CEC1280F96B78DA62F00E0B71592734B6983D3DF94A0954E58CC
              7C3771F5C553F9B2BC62DC23A8F654C8AB615C794771896315A4AB34D6984041
              6D4A3E2C1F33ACE43F45213593595CD9713DE53CD8AAD79620A4BAF6C232C48A
              A979023F1F5FEB5DE4C5B0FEEAB88DD501F62DCCB7A8DED205DF2B037E9F7E2F
              02FA2E97E10E23D91C95F4683136B01203E5E16EF73C8397A7E3EA1DDC05D086
              718D715CEDEB7DBC6E6FDD64CEE1BAD8803B55856A9911137205DE761B794AE8
              0A16F4005CE73377FFE4171CF5FA6CB4BEE7D1B49722BE47B37DEC2282E5BD48
              B46F20E784B59A10FDE66061DDE835AEEB2B265B893A4ABC62FA17F4E5143536
              7A2D762901978B54B93E0B205FF6BE62E2C79381BFA402B665B4FBC1E423F29C
              132CF7CE7514E17753BEE46B281D401CAD056FE932FD3CBA5C4099E9E5362929
              600BD307E34B4EAA64D14958D7ACE40B20173C88DFC7B0F89CC646B599FC9071
              81CA29A2F507BD12808743EC78F41F46C9AF590F63C24E734FD8B415B0100630
              A97CD6045BEEFD36B2F2D817DD15A115977BB090FA5F0DE459AA197D06236793
              3377CAE469B50246B47855AA7F00C9ECCF1E5A783A09511BBB754F9597743B2C
              9ABC994A8C6DE99E45A5AD8003C957E5D750245C0376A3C07108FCF73AAC23BD
              D012BBE9E416287A161E7F12B08FC85C9E8AB500DFDEF24FA6B2FF078ED82831
              533E06D50000002574455874646174653A63726561746500323032322D30392D
              31305431383A35313A31322B30303A303079851D3C0000002574455874646174
              653A6D6F6469667900323032322D30392D31305431383A35313A31322B30303A
              303008D8A5800000000049454E44AE426082}
            OnClick = GET_CodigoMesa
            ExplicitTop = 3
          end
        end
      end
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 131
      Height = 30
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = 3050284
      ParentBackground = False
      TabOrder = 0
      object DBEdit1: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 125
        Height = 24
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = 3050284
        DataField = 'MES_NOME'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=F:\_DATA_BASE_\DB_SISTEMA(2.5)\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=win1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 312
    Top = 96
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from mesas order by mes_codigo')
    Left = 312
    Top = 160
    object FDQuery1MES_CODIGO: TIntegerField
      FieldName = 'MES_CODIGO'
      Origin = 'MES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1MES_NOME: TStringField
      Alignment = taCenter
      FieldName = 'MES_NOME'
      Origin = 'MES_NOME'
      Size = 50
    end
    object FDQuery1MES_STATUS: TStringField
      FieldName = 'MES_STATUS'
      Origin = 'MES_STATUS'
      Size = 50
    end
    object FDQuery1MES_GOVERNANCA: TStringField
      FieldName = 'MES_GOVERNANCA'
      Origin = 'MES_GOVERNANCA'
      Size = 50
    end
    object FDQuery1MES_OBSERVACAO: TStringField
      FieldName = 'MES_OBSERVACAO'
      Origin = 'MES_OBSERVACAO'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    OnDataChange = DataSource1DataChange
    Left = 312
    Top = 280
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 280
    object LIVRE1: TMenuItem
      Caption = 'LIVRE'
      OnClick = LIVRE1Click
    end
    object OCUPADO1: TMenuItem
      Caption = 'OCUPADO'
      OnClick = OCUPADO1Click
    end
    object RESERVADO1: TMenuItem
      Caption = 'RESERVADO'
      OnClick = RESERVADO1Click
    end
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 312
    Top = 224
  end
end
