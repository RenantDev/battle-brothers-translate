this.hyena_fur_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.hyena_fur";
		this.m.Name = "Hiena furiosa";
		this.m.Description = "A pele colorida de uma hiena deserta contribui para uma adição impressionante e exótica a qualquer armadura mercenária, se não era sofisticada.";
		this.m.Icon = "loot/southern_10.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Crafting;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 500;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/combat/armor_leather_impact_03.wav", this.Const.Sound.Volume.Inventory);
	}

});

