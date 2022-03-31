this.blue_studded_mail_armor <- this.inherit("scripts/items/armor/named/named_armor", {
	m = {},
	function create()
	{
		this.named_armor.create();
		this.m.ID = "armor.body.blue_studded_mail";
		this.m.Description = "Esta camisa de correio particular é combinada com um gambeson e coberto com uma jaqueta de couro resistente e rebitada para uma armadura de luz ainda protetora.";
		this.m.NameList = [
			"Padded Mail",
			"Toadskin",
			"Ogreskin",
			"Layered Armor",
			"Reinforced Mail"
		];
		this.m.Variant = 46;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 4000;
		this.m.Condition = 140;
		this.m.ConditionMax = 140;
		this.m.StaminaModifier = -16;
		this.randomizeValues();
	}

});

