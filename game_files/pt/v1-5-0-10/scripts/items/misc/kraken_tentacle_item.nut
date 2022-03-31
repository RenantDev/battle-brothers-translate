this.kraken_tentacle_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.kraken_tentacle";
		this.m.Name = "Tentáculo cortado";
		this.m.Description = "Os restos murcados de um tentáculo de um lendário Kraken \ 's, viscoso e mole, mas altamente procurado por alquimistas por suas supostas propriedades raras.";
		this.m.Icon = "misc/inventory_kraken_tentacle.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Crafting;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 4000;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/enemies/unhold_regenerate_01.wav", this.Const.Sound.Volume.Inventory);
	}

});

