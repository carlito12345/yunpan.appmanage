package net.engio.mbassy.subscription;

import java.util.Collection;
import java.util.Comparator;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import net.engio.mbassy.bus.MessagePublication;
import net.engio.mbassy.dispatch.IMessageDispatcher;

/* loaded from: classes.dex */
public class Subscription {
    public static final Comparator<Subscription> SubscriptionByPriorityDesc = new Comparator<Subscription>() { // from class: net.engio.mbassy.subscription.Subscription.1
        @Override // java.util.Comparator
        public int compare(Subscription subscription, Subscription subscription2) {
            int iCompareTo = Integer.valueOf(subscription2.getPriority()).compareTo(Integer.valueOf(subscription.getPriority()));
            return iCompareTo == 0 ? subscription2.f11358id.compareTo(subscription.f11358id) : iCompareTo;
        }
    };
    private final SubscriptionContext context;
    private final IMessageDispatcher dispatcher;
    protected final Collection<Object> listeners;

    /* renamed from: id, reason: collision with root package name */
    private final UUID f11358id = UUID.randomUUID();
    private final CopyOnWriteArrayList<Runnable> onSubscription = new CopyOnWriteArrayList<>();

    public class Handle {
        public Handle() {
        }

        public void onSubscription(Runnable runnable) {
            Subscription.this.onSubscription.add(runnable);
        }
    }

    public Subscription(SubscriptionContext subscriptionContext, IMessageDispatcher iMessageDispatcher, Collection<Object> collection) {
        this.context = subscriptionContext;
        this.dispatcher = iMessageDispatcher;
        this.listeners = collection;
    }

    public boolean belongsTo(Class cls) {
        return this.context.getHandler().isFromListener(cls);
    }

    public boolean contains(Object obj) {
        return this.listeners.contains(obj);
    }

    public Handle getHandle() {
        return new Handle();
    }

    public Class[] getHandledMessageTypes() {
        return this.context.getHandler().getHandledMessages();
    }

    public int getPriority() {
        return this.context.getHandler().getPriority();
    }

    public boolean handlesMessageType(Class<?> cls) {
        return this.context.getHandler().handlesMessage(cls);
    }

    public void publish(MessagePublication messagePublication, Object obj) {
        if (this.listeners.isEmpty()) {
            return;
        }
        this.dispatcher.dispatch(messagePublication, obj, this.listeners);
    }

    public int size() {
        return this.listeners.size();
    }

    public void subscribe(Object obj) {
        this.listeners.add(obj);
        for (Runnable runnable : (Runnable[]) this.onSubscription.toArray(new Runnable[0])) {
            runnable.run();
        }
    }

    public boolean unsubscribe(Object obj) {
        return this.listeners.remove(obj);
    }
}
