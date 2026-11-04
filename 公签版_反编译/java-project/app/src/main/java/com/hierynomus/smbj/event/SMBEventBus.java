package com.hierynomus.smbj.event;

import net.engio.mbassy.bus.SyncMessageBus;
import net.engio.mbassy.bus.common.PubSubSupport;
import net.engio.mbassy.bus.error.IPublicationErrorHandler;
import net.engio.mbassy.bus.error.PublicationError;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class SMBEventBus {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) SMBEventBus.class);
    private PubSubSupport<SMBEvent> wrappedBus;

    public SMBEventBus() {
        this(new SyncMessageBus(new IPublicationErrorHandler() { // from class: com.hierynomus.smbj.event.SMBEventBus.1
            @Override // net.engio.mbassy.bus.error.IPublicationErrorHandler
            public void handleError(PublicationError publicationError) {
                if (publicationError.getCause() != null) {
                    SMBEventBus.logger.error(publicationError.toString(), publicationError.getCause());
                } else {
                    SMBEventBus.logger.error(publicationError.toString());
                }
            }
        }));
    }

    public void publish(SMBEvent sMBEvent) {
        this.wrappedBus.publish(sMBEvent);
    }

    public void subscribe(Object obj) {
        this.wrappedBus.subscribe(obj);
    }

    public boolean unsubscribe(Object obj) {
        return this.wrappedBus.unsubscribe(obj);
    }

    public SMBEventBus(PubSubSupport<SMBEvent> pubSubSupport) {
        this.wrappedBus = pubSubSupport;
    }
}
