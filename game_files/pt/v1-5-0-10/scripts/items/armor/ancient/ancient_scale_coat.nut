this.ancient_scale_coat <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.ancient_scale_coat";
		this.m.Name = "Casaco de escala antiga";
		this.m.Description = "Um casaco de escala pesada e manchada de antiga design que pertence a uma coleção, não no campo de batalha.";
		this.m.SlotType = this.Const.ItemSlot.Body;
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 66;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 2400;
		this.m.Condition = 190;
		this.m.ConditionMax = 190;
		this.m.StaminaModifier = -25;
	}

});

