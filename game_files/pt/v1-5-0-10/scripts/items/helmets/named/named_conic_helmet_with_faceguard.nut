this.named_conic_helmet_with_faceguard <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = {},
	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.named_conic_helmet_with_faceguard";
		this.m.Description = "Este capacete cônico tem um faceguard ligado e escalas finamente equipadas para proteger o pescoço.O rosto assemelha-se a um guerreiro temível que está prestes a atacar seu inimigo.";
		this.m.NameList = [
			"Conic Feathered Helmet",
			"Iron Mask",
			"Warlord\'s Helm",
			"Iron Visage",
			"Steel Countenance"
		];
		this.m.ShowOnCharacter = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		this.m.Variant = 205;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 8000;
		this.m.Condition = 280;
		this.m.ConditionMax = 280;
		this.m.StaminaModifier = -19;
		this.m.Vision = -3;
		this.randomizeValues();
	}

});

