package vn.sugami.sugamishop.handlers;

import org.springframework.stereotype.Component;

import com.sap.cds.services.EventContext;
import com.sap.cds.services.cds.CqnService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;

import cds.gen.itemservice.ItemConfigs_;
import cds.gen.itemservice.ItemService_;

@Component
@ServiceName(ItemService_.CDS_NAME)
public class ItemServiceHandler implements EventHandler {
    @On(event = CqnService.EVENT_READ, entity = ItemConfigs_.CDS_NAME)
    void onReadItem(EventContext context) {
        System.out.println("ItemServiceHandler.onReadItem() called");

        System.out.println(context);
    }
}
