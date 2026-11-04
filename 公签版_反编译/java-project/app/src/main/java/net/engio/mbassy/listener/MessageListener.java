package net.engio.mbassy.listener;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import net.engio.mbassy.common.IPredicate;
import net.engio.mbassy.common.ReflectionUtils;

/* loaded from: classes.dex */
public class MessageListener<T> {
    private ArrayList<MessageHandler> handlers = new ArrayList<>();
    private Listener listenerAnnotation;
    private Class<T> listenerDefinition;

    public MessageListener(Class<T> cls) {
        this.listenerDefinition = cls;
        this.listenerAnnotation = (Listener) ReflectionUtils.getAnnotation(cls, Listener.class);
    }

    public static IPredicate<MessageHandler> ForMessage(final Class<?> cls) {
        return new IPredicate<MessageHandler>() { // from class: net.engio.mbassy.listener.MessageListener.1
            @Override // net.engio.mbassy.common.IPredicate
            public boolean apply(MessageHandler messageHandler) {
                return messageHandler.handlesMessage(cls);
            }
        };
    }

    public boolean addHandler(MessageHandler messageHandler) {
        return this.handlers.add(messageHandler);
    }

    public MessageListener addHandlers(Collection<? extends MessageHandler> collection) {
        this.handlers.addAll(collection);
        return this;
    }

    public MessageHandler[] getHandlers() {
        return (MessageHandler[]) this.handlers.toArray(new MessageHandler[this.handlers.size()]);
    }

    public Class<T> getListerDefinition() {
        return this.listenerDefinition;
    }

    public boolean handles(Class<?> cls) {
        return !getHandlers(ForMessage(cls)).isEmpty();
    }

    public boolean isFromListener(Class cls) {
        return this.listenerDefinition.equals(cls);
    }

    public boolean useStrongReferences() {
        Listener listener = this.listenerAnnotation;
        return listener != null && listener.references().equals(References.Strong);
    }

    public List<MessageHandler> getHandlers(IPredicate<MessageHandler> iPredicate) {
        ArrayList arrayList = new ArrayList();
        Iterator<MessageHandler> it = this.handlers.iterator();
        while (it.hasNext()) {
            MessageHandler next = it.next();
            if (iPredicate.apply(next)) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }
}
