this.third_eye_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.third_eye";
		this.m.Name = "Terceiro olho";
		this.m.Description = "Os Alpes não têm olhos, mas esse órgão parecido com o olho pode ser recuperado dentro de seus crânios.";
		this.m.Icon = "misc/inventory_alp_eye.png";
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

