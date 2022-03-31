this.adorned_mail_shirt <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.adorned_mail_shirt";
		this.m.Name = "Camisa adornada do correio";
		this.m.Description = "Uma camisa de correio pesado coberta por um surcoat acolchoado.Uma peça impressionante e bem conservada, adornada com troféus e símbolos sagrados.";
		this.m.SlotType = this.Const.ItemSlot.Body;
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 107;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 1150;
		this.m.Condition = 150;
		this.m.ConditionMax = 150;
		this.m.StaminaModifier = -16;
	}

});

