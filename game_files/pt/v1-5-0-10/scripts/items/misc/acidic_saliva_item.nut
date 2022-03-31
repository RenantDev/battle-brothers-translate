this.acidic_saliva_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.acidic_saliva";
		this.m.Name = "Saliva ácida";
		this.m.Description = "A saliva do deserto selvagem Hyena tem preço pelos alquimistas do sul por suas propriedades únicas.";
		this.m.Icon = "loot/southern_12.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Crafting;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 500;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/bottle_01.wav", this.Const.Sound.Volume.Inventory);
	}

});

