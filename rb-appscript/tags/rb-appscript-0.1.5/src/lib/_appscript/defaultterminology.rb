#!/usr/local/bin/ruby
# Copyright (C) 2006 HAS. 
# Released under MIT License.

module DefaultTerminology

	require "aem"

	TypeByCode = {
		'decm' => :DecimalStruct,
		'shor' => :ShortInteger,
		'TEXT' => :String,
		'elin' => :ElemInfo,
		'mile' => :Miles,
		'cmpd' => :CompDescriptor,
		'cmpi' => :ComponentInstance,
		'prop' => :Property,
		'trot' => :Rotation,
		'pstr' => :PString,
		'cyrd' => :CubicYards,
		'PICT' => :Pict,
		'crec' => :Rectangle,
		'cpic' => :GroupedGraphic,
		'vers' => :Version,
		'fals' => :False,
		'sqkm' => :SquareKilometers,
		'obj ' => :Reference,
		'fwin' => :FinderWindow,
		'frct' => :FixedRectangle,
		'cpix' => :PixelMap,
		'aevt' => :AppleEvent,
		'evrf' => :EventRef,
		'cRGB' => :RGBColor,
		'cgtx' => :GraphicText,
		'kmtr' => :Kilometers,
		'list' => :List,
		'fsrf' => :FSRef,
		'exte' => :Extended,
		'gram' => :Grams,
		'ctbl' => :Table,
		'ccol' => :Column,
		'tray' => :TextRangeArray,
		'metr' => :Meters,
		'tr96' => :RGB96,
		'fpnt' => :FixedPoint,
		'crow' => :Row,
		'sign' => :ApplSignature,
		'tTXT' => :AEText,
		'doub' => :Float,
		'tsty' => :TextStyles,
		'encs' => :EncodedString,
		'whit' => :whitespace,
		'keyw' => :Keyword,
		'best' => :Best,
		'logi' => :LogicalDescriptor,
		'ssid' => :SessionID,
		'****' => :Anything,
		'diac' => :diacriticals,
		'cpgn' => :Polygon,
		'yes ' => :yes,
		'txrn' => :TextRange,
		'psn ' => :ProcessSerialNumber,
		'comp' => :DoubleInteger,
		'hyph' => :hyphens,
		'reco' => :Record,
		'Qrgn' => :QDRegion,
		'evrc' => :EventRecord,
		'carc' => :Arc,
		'enum' => :Enumeration,
		'QDpt' => :QDPoint,
		'sqmi' => :SquareMiles,
		'magn' => :UnsignedInteger,
		'ccel' => :Cell,
		'fixd' => :Fixed,
		'abso' => :AbsoluteOrdinal,
		'punc' => :punctuation,
		'lpnt' => :LongPoint,
		'gcli' => :ClassInfo,
		'ccmt' => :CubicCentimeter,
		'tdas' => :DashStyle,
		'ldbl' => :K128BitFloatingPoint,
		'rang' => :RangeDescriptor,
		'intl' => :IntlWritingCode,
		'cmet' => :CubicMeters,
		'cdrw' => :DrawingArea,
		'STXT' => :StyledText,
		'itxt' => :IntlText,
		'feet' => :Feet,
		'degc' => :DegreesC,
		'GIFf' => :GIF,
		'degf' => :DegreesF,
		'sing' => :ShortFloat,
		'ldt ' => :DateTime,
		'degk' => :DegreesK,
		'evin' => :EventInfo,
		'cmtr' => :Centimeters,
		'msng' => :MissingValue,
		'wrng' => :WhoseRange,
		'lfrc' => :LongFixedRectangle,
		'TIFF' => :TIFF,
		'suin' => :SuiteInfo,
		'long' => :Integer,
		'whos' => :WhoseDescriptor,
		'pmin' => :ParamInfo,
		'lfpt' => :LongFixedPoint,
		'dspt' => :DispatcherID,
		'lfxd' => :LongFixed,
		'type' => :Type,
		'appa' => :AppParameters,
		'tr16' => :RGB16,
		'evtr' => :LowLevelEventRecord,
		'glin' => :GraphicLine,
		'crrc' => :RoundedRectangle,
		'yard' => :Yards,
		'wobj' => :HIWindow,
		'true' => :True,
		'case' => :case,
		'utxt' => :Unicode,
		'sqft' => :SquareFeet,
		'lbs ' => :Pounds,
		'styl' => :ScrapStyles,
		'qrts' => :Quarts,
		'lrct' => :LongRectangle,
		'ask ' => :ask,
		'expa' => :expansion,
		'alis' => :Alias,
		'clrt' => :ColorTable,
		'aprl' => :ApplicationURL,
		'ozs ' => :Ounces,
		'mLoc' => :MachineLoc,
		'EPS ' => :EPS,
		'tpmm' => :PixMapMinus,
		'galn' => :Gallons,
		'null' => :Null,
		'cuin' => :CubicInches,
		'ccnt' => :CurrentContainer,
		'sutx' => :StyledUnicodeText,
		'furl' => :FileURL,
		'kgrm' => :Kilograms,
		'scpt' => :Script,
		'rel ' => :RelativeDescriptor,
		'targ' => :TargetID,
		'pinf' => :PropInfo,
		'litr' => :Liters,
		'bool' => :Boolean,
		'qdrt' => :QDRectangle,
		'sqrm' => :SquareMeters,
		'inch' => :Inches,
		'pcls' => :class_,
		'ostl' => :OSLTokenList,
		'covl' => :Oval,
		'no  ' => :no,
		'insl' => :InsertionRef,
		'JPEG' => :JPEG,
		'exmn' => :ObjectBeingExamined,
		'cstr' => :CString,
		'ofay' => :OffsetArray,
		'mobj' => :HIMenu,
		'sqyd' => :SquareYards,
		'cfet' => :CubicFeet,
		'toke' => :Token,
		'inde' => :IndexDescriptor,
		'tdta' => :Data,
		'fss ' => :FSSpec,
		'sect' => :SectionH,
		'ptr ' => :Ptr,
	}

	TypeByName = {
		:ObjectSpecifier => AEM::AEType.new('obj '),
		:SMInt => AEM::AEType.new('shor'),
		:SquareMiles => AEM::AEType.new('sqmi'),
		:PropInfo => AEM::AEType.new('pinf'),
		:InsertionRef => AEM::AEType.new('insl'),
		:EPS => AEM::AEType.new('EPS '),
		:DateTime => AEM::AEType.new('ldt '),
		:HIWindow => AEM::AEType.new('wobj'),
		:LongDateTime => AEM::AEType.new('ldt '),
		:ColorTable => AEM::AEType.new('clrt'),
		:yes => AEM::AEEnum.new('yes '),
		:LowLevelEventRecord => AEM::AEType.new('evtr'),
		:OffsetArray => AEM::AEType.new('ofay'),
		:ClassInfo => AEM::AEType.new('gcli'),
		:SInt64 => AEM::AEType.new('comp'),
		:CubicMeters => AEM::AEType.new('cmet'),
		:Kilograms => AEM::AEType.new('kgrm'),
		:SessionID => AEM::AEType.new('ssid'),
		:PixMapMinus => AEM::AEType.new('tpmm'),
		:ScrapStyles => AEM::AEType.new('styl'),
		:IntlText => AEM::AEType.new('itxt'),
		:AbsoluteOrdinal => AEM::AEType.new('abso'),
		:RangeDescriptor => AEM::AEType.new('rang'),
		:ShortFloat => AEM::AEType.new('sing'),
		:SquareKilometers => AEM::AEType.new('sqkm'),
		:Yards => AEM::AEType.new('yard'),
		:Keyword => AEM::AEType.new('keyw'),
		:FSSpec => AEM::AEType.new('fss '),
		:hyphens => AEM::AEEnum.new('hyph'),
		:GIF => AEM::AEType.new('GIFf'),
		:Token => AEM::AEType.new('toke'),
		:Fixed => AEM::AEType.new('fixd'),
		:SMFloat => AEM::AEType.new('sing'),
		:WhoseDescriptor => AEM::AEType.new('whos'),
		:ApplSignature => AEM::AEType.new('sign'),
		:False => AEM::AEType.new('fals'),
		:Reference => AEM::AEType.new('obj '),
		:CurrentContainer => AEM::AEType.new('ccnt'),
		:True => AEM::AEType.new('true'),
		:ElemInfo => AEM::AEType.new('elin'),
		:Arc => AEM::AEType.new('carc'),
		:EventRecord => AEM::AEType.new('evrc'),
		:GroupedGraphic => AEM::AEType.new('cpic'),
		:AppParameters => AEM::AEType.new('appa'),
		:Script => AEM::AEType.new('scpt'),
		:AEList => AEM::AEType.new('list'),
		:Enumeration => AEM::AEType.new('enum'),
		:FinderWindow => AEM::AEType.new('fwin'),
		:GraphicLine => AEM::AEType.new('glin'),
		:AppleEvent => AEM::AEType.new('aevt'),
		:Version => AEM::AEType.new('vers'),
		:Centimeters => AEM::AEType.new('cmtr'),
		:Type => AEM::AEType.new('type'),
		:LongFloat => AEM::AEType.new('doub'),
		:FSRef => AEM::AEType.new('fsrf'),
		:whitespace => AEM::AEEnum.new('whit'),
		:Inches => AEM::AEType.new('inch'),
		:SectionH => AEM::AEType.new('sect'),
		:LongPoint => AEM::AEType.new('lpnt'),
		:WildCard => AEM::AEType.new('****'),
		:LongFixedPoint => AEM::AEType.new('lfpt'),
		:Rotation => AEM::AEType.new('trot'),
		:QDPoint => AEM::AEType.new('QDpt'),
		:MissingValue => AEM::AEType.new('msng'),
		:ObjectBeingExamined => AEM::AEType.new('exmn'),
		:Unicode => AEM::AEType.new('utxt'),
		:QDRectangle => AEM::AEType.new('qdrt'),
		:Grams => AEM::AEType.new('gram'),
		:TIFF => AEM::AEType.new('TIFF'),
		:ApplicationURL => AEM::AEType.new('aprl'),
		:expansion => AEM::AEEnum.new('expa'),
		:Record => AEM::AEType.new('reco'),
		:AERecord => AEM::AEType.new('reco'),
		:FixedRectangle => AEM::AEType.new('frct'),
		:ask => AEM::AEEnum.new('ask '),
		:FileURL => AEM::AEType.new('furl'),
		:Property => AEM::AEType.new('prop'),
		:AEText => AEM::AEType.new('tTXT'),
		:IndexDescriptor => AEM::AEType.new('inde'),
		:DoubleInteger => AEM::AEType.new('comp'),
		:EventInfo => AEM::AEType.new('evin'),
		:class_ => AEM::AEType.new('pcls'),
		:CubicInches => AEM::AEType.new('cuin'),
		:SuiteInfo => AEM::AEType.new('suin'),
		:Char => AEM::AEType.new('TEXT'),
		:Meters => AEM::AEType.new('metr'),
		:StyledUnicodeText => AEM::AEType.new('sutx'),
		:IEEE64BitFloatingPoint => AEM::AEType.new('doub'),
		:Null => AEM::AEType.new('null'),
		:EncodedString => AEM::AEType.new('encs'),
		:Ptr => AEM::AEType.new('ptr '),
		:Best => AEM::AEType.new('best'),
		:Row => AEM::AEType.new('crow'),
		:GraphicText => AEM::AEType.new('cgtx'),
		:ParamInfo => AEM::AEType.new('pmin'),
		:TextRangeArray => AEM::AEType.new('tray'),
		:LongFixedRectangle => AEM::AEType.new('lfrc'),
		:Cell => AEM::AEType.new('ccel'),
		:diacriticals => AEM::AEEnum.new('diac'),
		:FSS => AEM::AEType.new('fss '),
		:Enumerated => AEM::AEType.new('enum'),
		:LongInteger => AEM::AEType.new('long'),
		:TextRange => AEM::AEType.new('txrn'),
		:Rectangle => AEM::AEType.new('crec'),
		:Extended => AEM::AEType.new('exte'),
		:ProcessSerialNumber => AEM::AEType.new('psn '),
		:ShortInteger => AEM::AEType.new('shor'),
		:Comp => AEM::AEType.new('comp'),
		:HIMenu => AEM::AEType.new('mobj'),
		:UnicodeText => AEM::AEType.new('utxt'),
		:LongFixed => AEM::AEType.new('lfxd'),
		:SquareMeters => AEM::AEType.new('sqrm'),
		:Kilometers => AEM::AEType.new('kmtr'),
		:Integer => AEM::AEType.new('long'),
		:CubicYards => AEM::AEType.new('cyrd'),
		:Data => AEM::AEType.new('tdta'),
		:RelativeDescriptor => AEM::AEType.new('rel '),
		:DashStyle => AEM::AEType.new('tdas'),
		:SquareYards => AEM::AEType.new('sqyd'),
		:Column => AEM::AEType.new('ccol'),
		:Quarts => AEM::AEType.new('qrts'),
		:IEEE32BitFloatingPoint => AEM::AEType.new('sing'),
		:Magnitude => AEM::AEType.new('magn'),
		:QDRegion => AEM::AEType.new('Qrgn'),
		:IntlWritingCode => AEM::AEType.new('intl'),
		:DecimalStruct => AEM::AEType.new('decm'),
		:case => AEM::AEEnum.new('case'),
		:List => AEM::AEType.new('list'),
		:Text => AEM::AEType.new('TEXT'),
		:CString => AEM::AEType.new('cstr'),
		:RGBColor => AEM::AEType.new('cRGB'),
		:UInt32 => AEM::AEType.new('magn'),
		:Feet => AEM::AEType.new('feet'),
		:PixelMap => AEM::AEType.new('cpix'),
		:Ounces => AEM::AEType.new('ozs '),
		:Oval => AEM::AEType.new('covl'),
		:Anything => AEM::AEType.new('****'),
		:SInt32 => AEM::AEType.new('long'),
		:CubicFeet => AEM::AEType.new('cfet'),
		:Polygon => AEM::AEType.new('cpgn'),
		:Liters => AEM::AEType.new('litr'),
		:CubicCentimeter => AEM::AEType.new('ccmt'),
		:TargetID => AEM::AEType.new('targ'),
		:InsertionLoc => AEM::AEType.new('insl'),
		:LogicalDescriptor => AEM::AEType.new('logi'),
		:StyledText => AEM::AEType.new('STXT'),
		:no => AEM::AEEnum.new('no  '),
		:punctuation => AEM::AEEnum.new('punc'),
		:LongRectangle => AEM::AEType.new('lrct'),
		:Pict => AEM::AEType.new('PICT'),
		:DegreesC => AEM::AEType.new('degc'),
		:MachineLoc => AEM::AEType.new('mLoc'),
		:DegreesF => AEM::AEType.new('degf'),
		:OSLTokenList => AEM::AEType.new('ostl'),
		:DegreesK => AEM::AEType.new('degk'),
		:FixedPoint => AEM::AEType.new('fpnt'),
		:RGB16 => AEM::AEType.new('tr16'),
		:DrawingArea => AEM::AEType.new('cdrw'),
		:SquareFeet => AEM::AEType.new('sqft'),
		:ComponentInstance => AEM::AEType.new('cmpi'),
		:TextStyles => AEM::AEType.new('tsty'),
		:Pounds => AEM::AEType.new('lbs '),
		:Gallons => AEM::AEType.new('galn'),
		:UnsignedInteger => AEM::AEType.new('magn'),
		:DispatcherID => AEM::AEType.new('dspt'),
		:JPEG => AEM::AEType.new('JPEG'),
		:EventRef => AEM::AEType.new('evrf'),
		:Alias => AEM::AEType.new('alis'),
		:PString => AEM::AEType.new('pstr'),
		:RoundedRectangle => AEM::AEType.new('crrc'),
		:String => AEM::AEType.new('TEXT'),
		:SInt16 => AEM::AEType.new('shor'),
		:WhoseRange => AEM::AEType.new('wrng'),
		:Float => AEM::AEType.new('doub'),
		:CompDescriptor => AEM::AEType.new('cmpd'),
		:RGB96 => AEM::AEType.new('tr96'),
		:Boolean => AEM::AEType.new('bool'),
		:Miles => AEM::AEType.new('mile'),
		:Table => AEM::AEType.new('ctbl'),
		:K128BitFloatingPoint => AEM::AEType.new('ldbl'),
	}

	ReferenceByCode = {
		'pcls' => 'class_',
		'ID  ' => 'id_',
	}
	
	ReferenceByName = {
		:quit => [:command, ['aevtquit', {
				:saving => 'savo',
				}]],
		:activate => [:command, ['miscactv', {
				}]],
		:run => [:command, ['aevtoapp', {
				}]],
		:launch => [:command, ['ascrnoop', {
				}]],
		:open => [:command, ['aevtodoc', {
				}]],
		:get => [:command, ['coregetd', {
				}]],
		:print => [:command, ['aevtpdoc', {
				}]],
		:class_ => [:property, 'pcls'],
		:set => [:command, ['coresetd', {
				:to => 'data',
				}]],
		:reopen => [:command, ['aevtrapp', {
				}]],
		:id_ => [:property, 'ID  '],
		:open_location => [:command, ['GURLGURL', {
				:window => 'WIND',
				}]],
	}

	DefaultCommands = {} # {'quit' => 'aevtquit', 'activate' => 'miscactv',...}; used by Terminology._makeReferenceTable to check for any collisions between standard and application-defined commands
	
	ReferenceByName.each do |name, info|
		if info[0] == :command
			DefaultCommands[name.to_s] = info[1][0]
		end
	end
end
