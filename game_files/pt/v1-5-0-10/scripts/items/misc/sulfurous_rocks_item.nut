this.sulfurous_rocks_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.sulfurous_rock";
		this.m.Name = "Rochas sulfurosas";
		this.m.Description = "Um fedor ofensivo é emitido por estas rochas frágeis, que são valorizadas por alquimistas.";
		this.m.Icon = "loot/southern_11.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Crafting;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 2000;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/combat/armor_leather_impact_03.wav", this.Const.Sound.Volume.Inventory);
	}

});

