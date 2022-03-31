this.named_plated_fur_armor <- this.inherit("scripts/items/armor/named/named_armor", {
	m = {},
	function create()
	{
		this.named_armor.create();
		this.m.ID = "armor.body.named_plated_fur_armor";
		this.m.Description = "Uma pêlo simples e armadura de couro com espessas camadas de placas de metal fascinadas.Um design muito simples e pesado, mas bastante eficaz em combate.";
		this.m.NameList = [
			"Plated Fur Armor",
			"Plate Harness",
			"Plate-covered Hide",
			"Rivetted Fur"
		];
		this.m.PrefixList = this.Const.Strings.BarbarianPrefix;
		this.m.UseRandomName = false;
		this.m.Variant = 104;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 4000;
		this.m.Condition = 130;
		this.m.ConditionMax = 130;
		this.m.StaminaModifier = -14;
		this.randomizeValues();
	}

});

