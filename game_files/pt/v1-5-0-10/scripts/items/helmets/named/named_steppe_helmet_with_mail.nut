this.named_steppe_helmet_with_mail <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = {},
	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.named_steppe_helmet_with_mail";
		this.m.Description = "Um capacete magistralmente criado na moda das pessoas estepe.Decorado com aplicações de ouro e equipado com guardas adicionais da bochecha.";
		this.m.NameList = [
			"Steppe Helmet",
			"Decorated Nasal Helmet",
			"Headdress Helmet",
			"Horsehair Helmet"
		];
		this.m.ShowOnCharacter = true;
		this.m.HideHair = true;
		this.m.HideBeard = false;
		this.m.Variant = 204;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 5000;
		this.m.Condition = 200;
		this.m.ConditionMax = 200;
		this.m.StaminaModifier = -12;
		this.m.Vision = -2;
		this.randomizeValues();
	}

});

