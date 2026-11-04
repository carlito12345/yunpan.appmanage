package net.engio.mbassy.bus.error;

import net.engio.mbassy.bus.IMessagePublication;

/* loaded from: classes.dex */
public class InternalPublicationError extends PublicationError {
    public InternalPublicationError(Throwable th2, String str, IMessagePublication iMessagePublication) {
        super(th2, str, iMessagePublication);
    }

    public InternalPublicationError(Throwable th2, String str) {
        super(th2, str);
    }
}
