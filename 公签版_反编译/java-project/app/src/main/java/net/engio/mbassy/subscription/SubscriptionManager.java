package net.engio.mbassy.subscription;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import net.engio.mbassy.bus.BusRuntime;
import net.engio.mbassy.common.ReflectionUtils;
import net.engio.mbassy.common.StrongConcurrentSet;
import net.engio.mbassy.listener.MessageHandler;
import net.engio.mbassy.listener.MetadataReader;

/* loaded from: classes.dex */
public class SubscriptionManager {
    private final MetadataReader metadataReader;
    private final BusRuntime runtime;
    private final SubscriptionFactory subscriptionFactory;
    private final StrongConcurrentSet<Class> nonListeners = new StrongConcurrentSet<>();
    private final ReentrantReadWriteLock readWriteLock = new ReentrantReadWriteLock();
    private final Map<Class, ArrayList<Subscription>> subscriptionsPerMessage = new HashMap(256);
    private final Map<Class, Subscription[]> subscriptionsPerListener = new HashMap(256);

    public SubscriptionManager(MetadataReader metadataReader, SubscriptionFactory subscriptionFactory, BusRuntime busRuntime) {
        this.metadataReader = metadataReader;
        this.subscriptionFactory = subscriptionFactory;
        this.runtime = busRuntime;
    }

    private Subscription[] getSubscriptionsByListener(Object obj) {
        ReentrantReadWriteLock.ReadLock lock = this.readWriteLock.readLock();
        try {
            lock.lock();
            return this.subscriptionsPerListener.get(obj.getClass());
        } finally {
            lock.unlock();
        }
    }

    public Collection<Subscription> getSubscriptionsByMessageType(Class cls) {
        TreeSet treeSet = new TreeSet(Subscription.SubscriptionByPriorityDesc);
        ReentrantReadWriteLock.ReadLock lock = this.readWriteLock.readLock();
        try {
            lock.lock();
            ArrayList<Subscription> arrayList = this.subscriptionsPerMessage.get(cls);
            if (arrayList != null) {
                treeSet.addAll(arrayList);
            }
            for (Class cls2 : ReflectionUtils.getSuperTypes(cls)) {
                ArrayList<Subscription> arrayList2 = this.subscriptionsPerMessage.get(cls2);
                if (arrayList2 != null) {
                    int size = arrayList2.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        Subscription subscription = arrayList2.get(i10);
                        if (subscription.handlesMessageType(cls)) {
                            treeSet.add(subscription);
                        }
                    }
                }
            }
            lock.unlock();
            return treeSet;
        } catch (Throwable th2) {
            lock.unlock();
            throw th2;
        }
    }

    public void subscribe(Object obj) {
        try {
            Class<?> cls = obj.getClass();
            if (this.nonListeners.contains(cls)) {
                return;
            }
            Subscription[] subscriptionsByListener = getSubscriptionsByListener(obj);
            int i10 = 0;
            if (subscriptionsByListener != null) {
                int length = subscriptionsByListener.length;
                while (i10 < length) {
                    subscriptionsByListener[i10].subscribe(obj);
                    i10++;
                }
                return;
            }
            MessageHandler[] handlers = this.metadataReader.getMessageListener(cls).getHandlers();
            int length2 = handlers.length;
            if (length2 == 0) {
                this.nonListeners.add(cls);
                return;
            }
            Subscription[] subscriptionArr = new Subscription[length2];
            while (i10 < length2) {
                subscriptionArr[i10] = this.subscriptionFactory.createSubscription(this.runtime, handlers[i10]);
                i10++;
            }
            subscribe(obj, subscriptionArr);
        } catch (Exception e7) {
            throw new RuntimeException(e7);
        }
    }

    public boolean unsubscribe(Object obj) {
        Subscription[] subscriptionsByListener;
        if (obj == null || (subscriptionsByListener = getSubscriptionsByListener(obj)) == null) {
            return false;
        }
        boolean zUnsubscribe = true;
        for (Subscription subscription : subscriptionsByListener) {
            zUnsubscribe &= subscription.unsubscribe(obj);
        }
        return zUnsubscribe;
    }

    private void subscribe(Object obj, Subscription[] subscriptionArr) {
        ReentrantReadWriteLock.WriteLock writeLock = this.readWriteLock.writeLock();
        try {
            writeLock.lock();
            Subscription[] subscriptionsByListener = getSubscriptionsByListener(obj);
            if (subscriptionsByListener == null) {
                for (Subscription subscription : subscriptionArr) {
                    subscription.subscribe(obj);
                    for (Class cls : subscription.getHandledMessageTypes()) {
                        ArrayList<Subscription> arrayList = this.subscriptionsPerMessage.get(cls);
                        if (arrayList == null) {
                            arrayList = new ArrayList<>(8);
                            this.subscriptionsPerMessage.put(cls, arrayList);
                        }
                        arrayList.add(subscription);
                    }
                }
                this.subscriptionsPerListener.put(obj.getClass(), subscriptionArr);
            } else {
                for (Subscription subscription2 : subscriptionsByListener) {
                    subscription2.subscribe(obj);
                }
            }
            writeLock.unlock();
        } catch (Throwable th2) {
            writeLock.unlock();
            throw th2;
        }
    }
}
