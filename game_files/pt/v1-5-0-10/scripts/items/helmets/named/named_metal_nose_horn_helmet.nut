this.named_metal_nose_horn_helmet <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = {},
	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.named_metal_nose_horn_helmet";
		this.m.Description = "Este capacete deve ter pertencido a um guerreiro distinto dos bárbaros.Seu tamanho e design parecem alienígenas a todas as pessoas do sul.";
		this.m.NameList = [
			"Closed Helmet",
			"Spiked Headpiece",
			"Bladed Headguard",
			"Bulky Faceguard",
			"Pit Fighter Helmet"
		];
		this.m.PrefixList = this.Const.Strings.BarbarianPrefix;
		this.m.UseRandomName = false;
		this.m.ShowOnCharacter = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		this.m.HideCharacterHead = true;
		this.m.Variant = 234;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 5000;
		this.m.Condition = 230;
		this.m.ConditionMax = 230;
		this.m.StaminaModifier = -15;
		this.m.Vision = -2;
		this.randomizeValues();
	}

});

