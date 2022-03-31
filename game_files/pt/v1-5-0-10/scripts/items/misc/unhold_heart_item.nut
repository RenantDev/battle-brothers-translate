this.unhold_heart_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.unhold_heart";
		this.m.Name = "Coração de Unhand \ '";
		this.m.Description = "O grande e pesado coração de um unhold.Rumores de ter propriedades mágicas, os alquimistas estão preparados para pagar uma soma arrumada para obtê-lo em suas mãos.";
		this.m.Icon = "misc/inventory_unhold_01.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Crafting;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 1125;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/enemies/unhold_regenerate_01.wav", this.Const.Sound.Volume.Inventory);
	}

});

