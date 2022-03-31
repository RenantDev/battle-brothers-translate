this.witch_hair_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.witch_hair";
		this.m.Name = "Cabelo de bruxa";
		this.m.Description = "Fios longos e frágeis de cabelos acinzentados tirados de um hexético.Diz-se que o cabelo deles tem propriedades poderosas na criação de poções e elixires.Mas, novamente, é também dito que hexen mantém os genitais de suas vítimas como animais de estimação, então a informação alcançada a partir do campesinato pode não ser especialmente confiável.";
		this.m.Icon = "misc/inventory_hexe_hair.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Crafting;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 2000;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/cloth_01.wav", this.Const.Sound.Volume.Inventory);
	}

});

