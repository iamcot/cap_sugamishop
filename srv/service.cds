using { vn.sugami.shop as db} from '../db/schema';

service ItemService {
    entity ItemConfigs as projection on db.ItemConfigs;
}

service OrderService {
    entity Orders as projection on db.Orders;
    entity OrderItems as projection on db.OrderItems;
}

service AdminService {
    entity ItemConfigs as projection on db.ItemConfigs;
    entity Orders as projection on db.Orders;
    entity OrderItems as projection on db.OrderItems;
}