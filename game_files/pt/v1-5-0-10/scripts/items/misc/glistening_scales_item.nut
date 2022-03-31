this.glistening_scales_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.glistening_scales";
		this.m.Name = "Escalas brilhantes";
		this.m.Description = "Essas escalas são cintilantes e brilhando lindamente em todas as cores enquanto você os transforma em direção ao sol.";
		this.m.Icon = "loot/southern_14.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Crafting;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 450;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/combat/armor_leather_impact_03.wav", this.Const.Sound.Volume.Inventory);
	}

});

