this.adorned_warriors_armor <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.adorned_warriors_armor";
		this.m.Name = "Armadura de guerreiro adornado";
		this.m.Description = "Uma longa camisa de correio coberta por um gambeson de couro rebitado.Fortemente usado do uso extensivo, mas adornado com relíquias e bem conservado.";
		this.m.SlotType = this.Const.ItemSlot.Body;
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 108;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 1700;
		this.m.Condition = 200;
		this.m.ConditionMax = 200;
		this.m.StaminaModifier = -22;
	}

});

