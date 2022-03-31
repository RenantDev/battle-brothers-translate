this.southern_long_mail_with_padding <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.southern_long_mail_with_padding";
		this.m.Name = "Camisa de correio longo do sul com preenchimento";
		this.m.Description = "Uma longa e pesada camisa de correio com um casaco densamente acolchoado.";
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.VariantString = "body_southern";
		this.m.Variant = 1;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 1800;
		this.m.Condition = 200;
		this.m.ConditionMax = 200;
		this.m.StaminaModifier = -25;
	}

});

