this.footman_armor <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.footman_armor";
		this.m.Name = "Armadura do footman";
		this.m.Description = "Uma armadura transicional consistindo de uma longa camisa de correio e um gambeson de couro rebitado.";
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 84;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorChainmailImpact;
		this.m.InventorySound = this.Const.Sound.ArmorChainmailImpact;
		this.m.Value = 1600;
		this.m.Condition = 190;
		this.m.ConditionMax = 190;
		this.m.StaminaModifier = -24;
	}

});

