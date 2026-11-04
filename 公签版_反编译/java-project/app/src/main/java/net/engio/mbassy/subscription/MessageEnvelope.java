package net.engio.mbassy.subscription;

/* loaded from: classes.dex */
public class MessageEnvelope {
    private Object message;

    public MessageEnvelope(Object obj) {
        this.message = obj;
    }

    public <T> T getMessage() {
        return (T) this.message;
    }
}
