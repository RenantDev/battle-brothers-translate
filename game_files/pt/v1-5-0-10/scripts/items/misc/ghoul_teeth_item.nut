this.ghoul_teeth_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.ghoul_teeth";
		this.m.Name = "Presas jagged";
		this.m.Description = "Um punhado de presas irregulares tiradas de um nachzehrer.Infectado com podridão, mas com força suficiente para mastigar qualquer osso.Pode buscar alguma moeda de alquimistas no mercado.";
		this.m.Icon = "misc/inventory_ghoul_teeth_01.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Crafting;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 200;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/combat/armor_leather_impact_03.wav", this.Const.Sound.Volume.Inventory);
	}

});

