this.green_coat_of_plates_armor <- this.inherit("scripts/items/armor/named/named_armor", {
	m = {},
	function create()
	{
		this.named_armor.create();
		this.m.ID = "armor.body.green_coat_of_plates";
		this.m.Description = "Uma rara camada de placas aprimoradas com corrente e preenchimento adicional.Um pedaço de verdadeiro artesanato!";
		this.m.NameList = [
			"Coat of Plates",
			"Bulwark",
			"Carapace",
			"Shell",
			"Plate Cuirass",
			"Plate Coat",
			"Harness",
			"Ward"
		];
		this.m.Variant = 43;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 15000;
		this.m.Condition = 320;
		this.m.ConditionMax = 320;
		this.m.StaminaModifier = -42;
		this.randomizeValues();
	}

});

