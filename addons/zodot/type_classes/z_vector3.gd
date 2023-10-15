class_name z_vector3 extends Zodot

func _valid_type(value: Variant) -> bool:
	return typeof(value) == TYPE_VECTOR3

func parse(value: Variant, field: String = "") -> ZodotResult:
	if _coerce:
		value = str_to_var(value)
		
	if _nullable and value == null:
		return ZodotResult.ok(value)
	
	if not _valid_type(value):
		return ZodotResult.type_error(field)
		
	return ZodotResult.ok(value)
