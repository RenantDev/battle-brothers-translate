this.vampire_dust_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.vampire_dust";
		this.m.Name = "Cinzas cintilantes";
		this.m.Description = "Um pequeno monte de cinzas cintilando em muitas facetas de azul.Alegadamente são os restos de uma poderosa criatura morta-viva, mas poucas pessoas acreditariam em uma reivindicação como essa.";
		this.m.Icon = "misc/inventory_vampire_dust_01.png";
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

