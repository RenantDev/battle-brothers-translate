this.serpent_skin_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.serpent_skin";
		this.m.Name = "Pele da serpente";
		this.m.Description = "A pele escamosa de uma grande serpente.Um artesão qualificado poderia transformar isso em algo útil.";
		this.m.Icon = "loot/southern_13.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Crafting;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 350;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/combat/armor_leather_impact_03.wav", this.Const.Sound.Volume.Inventory);
	}

});

