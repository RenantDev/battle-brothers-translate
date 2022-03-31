this.unhold_hide_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.unhold_hide";
		this.m.Name = "Unhand esconder";
		this.m.Description = "O esconder é a base da maioria das armaduras, e essa esconde grossa retirada de um unhold é especialmente resistente.";
		this.m.Icon = "misc/inventory_unhold_hide.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Crafting;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 1000;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/combat/armor_leather_impact_03.wav", this.Const.Sound.Volume.Inventory);
	}

});

