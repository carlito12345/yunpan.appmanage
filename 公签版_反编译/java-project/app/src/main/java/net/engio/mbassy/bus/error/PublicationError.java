package net.engio.mbassy.bus.error;

import da.b;
import java.lang.reflect.Method;
import net.engio.mbassy.bus.IMessagePublication;
import net.engio.mbassy.subscription.SubscriptionContext;

/* loaded from: classes.dex */
public class PublicationError {
    private Throwable cause;
    private String errorMsg;
    private Method handler;
    private Object listener;
    private Object message;
    private IMessagePublication publication;

    public PublicationError(Throwable th2, String str, Method method, Object obj, IMessagePublication iMessagePublication) {
        this.cause = th2;
        this.errorMsg = str;
        this.handler = method;
        this.listener = obj;
        this.publication = iMessagePublication;
        this.message = iMessagePublication != null ? iMessagePublication.getMessage() : null;
    }

    public Throwable getCause() {
        return this.cause;
    }

    public Method getHandler() {
        return this.handler;
    }

    public Object getListener() {
        return this.listener;
    }

    public String getMessage() {
        return this.errorMsg;
    }

    public Object getPublishedMessage() {
        return this.message;
    }

    public PublicationError setCause(Throwable th2) {
        this.cause = th2;
        return this;
    }

    public PublicationError setHandler(Method method) {
        this.handler = method;
        return this;
    }

    public PublicationError setListener(Object obj) {
        this.listener = obj;
        return this;
    }

    public PublicationError setMessage(String str) {
        this.errorMsg = str;
        return this;
    }

    public PublicationError setPublication(IMessagePublication iMessagePublication) {
        this.publication = iMessagePublication;
        return this;
    }

    public PublicationError setPublishedMessage(Object obj) {
        this.message = obj;
        return this;
    }

    public String toString() {
        String property = System.getProperty("line.separator");
        StringBuilder sbD = b.d("PublicationError{", property, "\tcause=");
        sbD.append(this.cause);
        sbD.append(property);
        sbD.append("\tmessage='");
        sbD.append(this.errorMsg);
        sbD.append('\'');
        sbD.append(property);
        sbD.append("\thandler=");
        sbD.append(this.handler);
        sbD.append(property);
        sbD.append("\tlistener=");
        sbD.append(this.listener);
        sbD.append(property);
        sbD.append("\tpublishedMessage=");
        sbD.append(getPublishedMessage());
        sbD.append('}');
        return sbD.toString();
    }

    public PublicationError(Throwable th2, String str, IMessagePublication iMessagePublication) {
        this.cause = th2;
        this.errorMsg = str;
    }

    public PublicationError(Throwable th2, String str, SubscriptionContext subscriptionContext) {
        this.cause = th2;
        this.errorMsg = str;
        this.handler = subscriptionContext.getHandler().getMethod();
    }

    public PublicationError(Throwable th2, String str) {
        this.cause = th2;
        this.errorMsg = str;
    }

    public PublicationError() {
    }
}
