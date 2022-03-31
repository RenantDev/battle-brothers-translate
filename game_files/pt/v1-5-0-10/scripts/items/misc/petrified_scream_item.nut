this.petrified_scream_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.petrified_scream";
		this.m.Name = "Grito petrificado";
		this.m.Description = "Um artefato estranho encontrado entre os restos de um ALP.Carregando isso pode causar sonhos ruins e rubes.";
		this.m.Icon = "misc/inventory_alp_scream.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Crafting;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 750;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/combat/armor_leather_impact_03.wav", this.Const.Sound.Volume.Inventory);
	}

});

