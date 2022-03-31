this.snake_oil_item <- this.inherit("scripts/items/item", {
	m = {},
	function create()
	{
		this.item.create();
		this.m.ID = "misc.snake_oil";
		this.m.Name = "Óleo de cobra";
		this.m.Description = "Uma misteriosa misteriosa disse para ajudar contra a perda de cabelo, a sífilis, a surdez, a impotência, a erupção cutânea, o bloco da pox e o escritor.Uma verdadeira poção milagrosa se você acreditar nele.Pode ser vendido em todos os lugares por uma soma arrumada.";
		this.m.Icon = "misc/inventory_snake_oil.png";
		this.m.SlotType = this.Const.ItemSlot.None;
		this.m.ItemType = this.Const.Items.ItemType.Misc | this.Const.Items.ItemType.Loot;
		this.m.IsDroppedAsLoot = true;
		this.m.Value = 650;
	}

	function getBuyPrice()
	{
		return this.m.Value;
	}

	function getSellPrice()
	{
		return this.m.Value;
	}

	function getTooltip()
	{
		local result = [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			}
		];
		result.push({
			id = 66,
			type = "text",
			text = this.getValueString()
		});
		return result;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/bottle_01.wav", this.Const.Sound.Volume.Inventory);
	}

});

