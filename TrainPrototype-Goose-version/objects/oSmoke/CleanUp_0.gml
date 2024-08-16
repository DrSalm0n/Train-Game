// Clean up the particle system and type
if (part_system_exists(global.ps_smoke)) {
    part_system_destroy(global.ps_smoke);
}

if (part_type_exists(global.pt_smoke)) {
    part_type_destroy(global.pt_smoke);
}
