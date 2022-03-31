this.brown_coat_of_plates_armor <- this.inherit("scripts/items/armor/named/named_armor", {
	m = {},
	function create()
	{
		this.named_armor.create();
		this.m.ID = "armor.body.brown_coat_of_plates";
		this.m.Description = "Um correio grosso Hauberk combinado com placas de metal resistente.Esta armadura protegerá seu usuário, mesmo na mais feroz das batalhas.";
		this.m.NameList = [
			"Harness",
			"Ward",
			"Defense",
			"Barrier",
			"Plate Armor",
			"Plated Vest",
			"Lifesaver"
		];
		this.m.Variant = 45;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 14000;
		this.m.Condition = 300;
		this.m.ConditionMax = 300;
		this.m.StaminaModifier = -36;
		this.randomizeValues();
	}

});

