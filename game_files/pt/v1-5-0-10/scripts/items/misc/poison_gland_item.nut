this.poison_gland_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.poison_gland";
		this.m.Name = "Glândula venenosa";
		this.m.Description = "A glândula venenosa de um webknecht.Não deve ser transportado perto de qualquer alimento ou bebida.";
		this.m.Icon = "misc/inventory_webknecht_poison.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Crafting;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 250;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/combat/armor_leather_impact_03.wav", this.Const.Sound.Volume.Inventory);
	}

});

