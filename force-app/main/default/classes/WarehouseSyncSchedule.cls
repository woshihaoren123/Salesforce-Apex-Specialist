global class WarehouseSyncSchedule implements schedulable{
    // implement scheduled code here
    global void execute(SchedulableContext context) {
        WarehouseCalloutService.runWarehouseEquipmentSync();
    }
}