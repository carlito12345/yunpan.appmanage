package net.engio.mbassy.bus.error;

/* loaded from: classes.dex */
public class MessageBusException extends Exception {
    public MessageBusException(String str) {
        super(str);
    }

    public MessageBusException(String str, Throwable th2) {
        super(str, th2);
    }

    public MessageBusException(Throwable th2) {
        super(th2);
    }
}
