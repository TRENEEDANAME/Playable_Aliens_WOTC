class XGCharacterGenerator_PlayableAliens extends XGCharacterGenerator
	dependson(X2StrategyGameRulesetDataStructures);

// Alien names
// MEC: from wikipedia page of robot names
// Viper: from Buckaroo Bonzai, with "Jane" instead of "John"
// Chryssalid: Kif names from CJ Cherryh's Pride of Chanur
// Muton: Krogan names via fantasynamegenerators.com

//RM contributions
//Viper: Warcraft
//Muton: Klingons

//MECS, Archons, etc
var localized array<string> m_arrMecFirstNames;
var localized array<string> m_arrMecLastNames;

//Vipers
var localized array<string> m_arrVprFirstNames;
var localized array<string> m_arrVprLastNames;

//Mutons + Sectoids + Berserkers
var localized array<string> m_arrMutMFirstNames;
var localized array<string> m_arrMutFFirstNames;
var localized array<string> m_arrMutLastNames;


function name PickAlienCountry(X2CharacterTemplate CharacterTemplate)
{
	if(CharacterTemplate.DataName == 'PA_Muton')
		return 'Country_Muton';

	if(CharacterTemplate.DataName == 'PA_MutonHunter')
	return 'Country_Muton';

	if(CharacterTemplate.DataName == 'PA_MutonProwler')
	return 'Country_Muton';

	if(CharacterTemplate.DataName == 'PA_MutonHarrier')
	return 'Country_Muton';

	if(CharacterTemplate.DataName == 'PA_MutonBeleaguer')
	return 'Country_Muton';

	if(CharacterTemplate.DataName == 'PA_Berserker')
		return 'Country_Muton';
	
	if(CharacterTemplate.DataName == 'PA_Sectoid')
		return 'Country_Muton';

	if(CharacterTemplate.DataName == 'PA_Viper2')
		return 'Country_Viper';

	if(CharacterTemplate.DataName == 'PA_Sidewinder')
		return 'Country_Viper';

	if(CharacterTemplate.DataName == 'PA_Naja')
		return 'Country_Viper';

	if(CharacterTemplate.DataName == 'PA_Archon')
		return 'Country_Mec';
	
	if(CharacterTemplate.DataName == 'PA_Andromedon')
		return 'Country_Muton';

	if(CharacterTemplate.DataName == 'PA_Faceless')
		return 'Country_Muton';

	if(CharacterTemplate.DataName == 'PA_FrostAdder')
		return 'Country_Viper';

	if(CharacterTemplate.DataName == 'PA_FrostBomber')
		return 'Country_Muton';

	if(CharacterTemplate.DataName == 'PA_FrostNecromancer')
		return 'Country_Muton';

	return 'Country_Muton'; //fallback
}

function GenerateAlienName( int iGender, X2CharacterTemplate CharacterTemplate, out string strFirst, out string strLast, optional int iRace = -1 )
{
	local X2CountryTemplate CountryTemplate;
	local array<CountryNames> AllNames, GeneralNames, RaceSpecificNames;

	strFirst = "";
	strLast = "";

	// Viper case
	if(CharacterTemplate.DataName == 'PA_Viper2')
	{
		strFirst = m_arrVprFirstNames[`SYNC_RAND(m_arrVprFirstNames.Length)];
	
		strLast = m_arrVprLastNames[`SYNC_RAND(m_arrVprLastNames.Length)];
	}

	if(CharacterTemplate.DataName == 'PA_Sidewinder')
	{
		strFirst = m_arrVprFirstNames[`SYNC_RAND(m_arrVprFirstNames.Length)];
	
		strLast = m_arrVprLastNames[`SYNC_RAND(m_arrVprLastNames.Length)];
	}

	if(CharacterTemplate.DataName == 'PA_Naja')
	{
		strFirst = m_arrVprFirstNames[`SYNC_RAND(m_arrVprFirstNames.Length)];
	
		strLast = m_arrVprLastNames[`SYNC_RAND(m_arrVprLastNames.Length)];
	}

	if(CharacterTemplate.DataName == 'PA_FrostAdder')
	{
		strFirst = m_arrVprFirstNames[`SYNC_RAND(m_arrVprFirstNames.Length)];
	
		strLast = m_arrVprLastNames[`SYNC_RAND(m_arrVprLastNames.Length)];
	}

	if(CharacterTemplate.DataName == 'PA_Archon')
	{
		strFirst = m_arrMecFirstNames[`SYNC_RAND(m_arrMecFirstNames.Length)];
	
		strLast = m_arrMecLastNames[`SYNC_RAND(m_arrMecLastNames.Length)];
	}

	if(CharacterTemplate.DataName == 'PA_Sectoid')
	{
		strFirst = m_arrMutMFirstNames[`SYNC_RAND(m_arrMutMFirstNames.Length)];
	
		strLast = m_arrMutLastNames[`SYNC_RAND(m_arrMutLastNames.Length)];
	}

	if(CharacterTemplate.DataName == 'PA_Berserker')
	{
		strFirst = m_arrMutFFirstNames[`SYNC_RAND(m_arrMutFFirstNames.Length)];
	
		strLast = m_arrMutLastNames[`SYNC_RAND(m_arrMutLastNames.Length)];
	}

	if(CharacterTemplate.DataName == 'PA_Muton' || CharacterTemplate.DataName == 'PA_Andromedon' || CharacterTemplate.DataName == 'PA_Faceless' || CharacterTemplate.DataName == 'PA_MutonHunter' || CharacterTemplate.DataName == 'PA_MutonProwler' || CharacterTemplate.DataName == 'PA_MutonHarrier' || CharacterTemplate.DataName == 'PA_MutonBeleaguer' || CharacterTemplate.DataName == 'PA_FrostBomber' || CharacterTemplate.DataName == 'PA_FrostNecromancer')
	{
		if(iGender == eGender_Female)
		{
			strFirst = m_arrMutFFirstNames[`SYNC_RAND(m_arrMutFFirstNames.Length)];
		}
		else
		{
			strFirst = m_arrMutMFirstNames[`SYNC_RAND(m_arrMutMFirstNames.Length)];
		}

		strLast = m_arrMutLastNames[`SYNC_RAND(m_arrMutLastNames.Length)];
	}

	if(strFirst == "" || strLast == "") //fallback
	{
		if(iGender == eGender_Female)
		{
			strFirst = m_arrMutFFirstNames[`SYNC_RAND(m_arrMutFFirstNames.Length)];
		}
		else
		{
			strFirst = m_arrMutMFirstNames[`SYNC_RAND(m_arrMutMFirstNames.Length)];
		}

		strLast = m_arrMutLastNames[`SYNC_RAND(m_arrMutLastNames.Length)];
	}
}

function TSoldier CreateTSoldier( optional name CharacterTemplateName, optional EGender eForceGender, optional name nmCountry = '', optional int iRace = -1, optional name ArmorName )
{
	local X2BodyPartTemplateManager PartTemplateManager;
	local XComLinearColorPalette HairPalette;
	local X2SimpleBodyPartFilter BodyPartFilter;
	local XComLinearColorPalette ArmorPalette;
	local X2CharacterTemplate CharacterTemplate;
	local TAppearance DefaultAppearance;
	local int SkipColors;
	local int DefaultColors;

	kSoldier.kAppearance = DefaultAppearance;
		

	MatchArmorTemplateForTorso = 'NoArmor'; //Default armor match value
	MatchCharacterTemplateForTorso = CharacterTemplateName;
	

	CharacterTemplate = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager().FindCharacterTemplate(CharacterTemplateName);
	if(CharacterTemplate == None)
	{
		CharacterTemplate = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager().FindCharacterTemplate('Soldier');
	}

	//`log( `location @ `ShowVar(eForceGender) @ `ShowVar(iCountry) @ `ShowVar(iRace), , 'XCom_Templates');

	if( nmCountry == '' )
		nmCountry = PickAlienCountry(CharacterTemplate);
	
	kSoldier.nmCountry = nmCountry;
	kSoldier.kAppearance.nmFlag = kSoldier.nmCountry; // needs to be copied here for pawns -- jboswell

	kSoldier.kAppearance.iGender = eGender_Female;

	kSoldier.kAppearance.nmVoice = '';
	kSoldier.kAppearance.iAttitude = 2; // Should correspond with Personality_Normal

	GenerateAlienName(kSoldier.kAppearance.iGender, CharacterTemplate, kSoldier.strFirstName, kSoldier.strLastName);

	return kSoldier;
}