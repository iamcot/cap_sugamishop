namespace vn.sugami.shop;

using {  cuid, managed, Currency } from '@sap/cds/common';

entity ItemConfigs : cuid, managed {
    name  : localized String(100) @mandatory;
    price : Decimal(10,2);
    currency: Currency;
    stock : Integer;
    description : localized String(500);
}

entity Orders : cuid, managed {
    items     : Composition of many OrderItems on items.order = $self;
    totalPrice : Decimal(10,2);
    currency   : Currency;
    status     : String(20) @default: 'Pending';
}

entity OrderItems : cuid, managed {
    order     : Association to Orders;
    item      : Association to ItemConfigs;
    quantity  : Integer;
    price     : Decimal(10,2);
    currency  : Currency;
}