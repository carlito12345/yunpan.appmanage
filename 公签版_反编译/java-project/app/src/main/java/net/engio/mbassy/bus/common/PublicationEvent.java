package net.engio.mbassy.bus.common;

/* loaded from: classes.dex */
public abstract class PublicationEvent {
    private Object relatedMessage;

    public PublicationEvent(Object obj) {
        this.relatedMessage = obj;
    }

    public Object getMessage() {
        return this.relatedMessage;
    }
}
