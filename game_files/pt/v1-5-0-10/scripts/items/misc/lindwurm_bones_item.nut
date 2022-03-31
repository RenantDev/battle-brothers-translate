this.lindwurm_bones_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.lindwurm_bones";
		this.m.Name = "Lindwurm ossos.";
		this.m.Description = "Os ossos do Lindwurm são principalmente ocos de dentro, tornando-os fáceis de transportar troféu apesar de seu tamanho.";
		this.m.Icon = "misc/inventory_lindwurm_bones.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Crafting;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 2200;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/combat/armor_leather_impact_03.wav", this.Const.Sound.Volume.Inventory);
	}

});

