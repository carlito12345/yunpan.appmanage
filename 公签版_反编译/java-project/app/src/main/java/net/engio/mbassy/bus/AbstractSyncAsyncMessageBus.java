package net.engio.mbassy.bus;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import net.engio.mbassy.bus.common.IMessageBus;
import net.engio.mbassy.bus.config.ConfigurationError;
import net.engio.mbassy.bus.config.Feature;
import net.engio.mbassy.bus.config.IBusConfiguration;
import net.engio.mbassy.bus.error.InternalPublicationError;
import net.engio.mbassy.bus.publication.ISyncAsyncPublicationCommand;

/* loaded from: classes.dex */
public abstract class AbstractSyncAsyncMessageBus<T, P extends ISyncAsyncPublicationCommand> extends AbstractPubSubSupport<T> implements IMessageBus<T, P> {
    private final List<Thread> dispatchers;
    private final ExecutorService executor;
    private final BlockingQueue<IMessagePublication> pendingMessages;

    public AbstractSyncAsyncMessageBus(IBusConfiguration iBusConfiguration) {
        super(iBusConfiguration);
        Feature.AsynchronousMessageDispatch asynchronousMessageDispatch = (Feature.AsynchronousMessageDispatch) iBusConfiguration.getFeature(Feature.AsynchronousMessageDispatch.class);
        if (asynchronousMessageDispatch == null) {
            throw ConfigurationError.MissingFeature(Feature.AsynchronousMessageDispatch.class);
        }
        this.pendingMessages = asynchronousMessageDispatch.getMessageQueue();
        this.dispatchers = new ArrayList(asynchronousMessageDispatch.getNumberOfMessageDispatchers());
        initDispatcherThreads(asynchronousMessageDispatch);
        Feature.AsynchronousHandlerInvocation asynchronousHandlerInvocation = (Feature.AsynchronousHandlerInvocation) iBusConfiguration.getFeature(Feature.AsynchronousHandlerInvocation.class);
        if (asynchronousHandlerInvocation == null) {
            throw ConfigurationError.MissingFeature(Feature.AsynchronousHandlerInvocation.class);
        }
        ExecutorService executor = asynchronousHandlerInvocation.getExecutor();
        this.executor = executor;
        getRuntime().add(IBusConfiguration.Properties.AsynchronousHandlerExecutor, executor);
    }

    private void initDispatcherThreads(Feature.AsynchronousMessageDispatch asynchronousMessageDispatch) {
        for (int i10 = 0; i10 < asynchronousMessageDispatch.getNumberOfMessageDispatchers(); i10++) {
            Thread threadNewThread = asynchronousMessageDispatch.getDispatcherThreadFactory().newThread(new Runnable() { // from class: net.engio.mbassy.bus.AbstractSyncAsyncMessageBus.1
                @Override // java.lang.Runnable
                public void run() {
                    IMessagePublication iMessagePublication;
                    Throwable th2;
                    while (true) {
                        try {
                            try {
                                iMessagePublication = (IMessagePublication) AbstractSyncAsyncMessageBus.this.pendingMessages.take();
                                try {
                                    iMessagePublication.execute();
                                } catch (Throwable th3) {
                                    th2 = th3;
                                    AbstractSyncAsyncMessageBus.this.handlePublicationError(new InternalPublicationError(th2, "Error in asynchronous dispatch", iMessagePublication));
                                }
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                                return;
                            }
                        } catch (Throwable th4) {
                            iMessagePublication = null;
                            th2 = th4;
                        }
                    }
                }
            });
            threadNewThread.setName("MsgDispatcher-" + i10);
            this.dispatchers.add(threadNewThread);
            threadNewThread.start();
        }
    }

    public IMessagePublication addAsynchronousPublication(MessagePublication messagePublication) throws InterruptedException {
        try {
            this.pendingMessages.put(messagePublication);
            return messagePublication.markScheduled();
        } catch (InterruptedException e7) {
            handlePublicationError(new InternalPublicationError(e7, "Error while adding an asynchronous message publication", messagePublication));
            return messagePublication;
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        shutdown();
    }

    @Override // net.engio.mbassy.bus.common.IMessageBus
    public boolean hasPendingMessages() {
        return this.pendingMessages.size() > 0;
    }

    @Override // net.engio.mbassy.bus.common.IMessageBus
    public void shutdown() {
        Iterator<Thread> it = this.dispatchers.iterator();
        while (it.hasNext()) {
            it.next().interrupt();
        }
        ExecutorService executorService = this.executor;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public IMessagePublication addAsynchronousPublication(MessagePublication messagePublication, long j10, TimeUnit timeUnit) {
        try {
            return this.pendingMessages.offer(messagePublication, j10, timeUnit) ? messagePublication.markScheduled() : messagePublication;
        } catch (InterruptedException e7) {
            handlePublicationError(new InternalPublicationError(e7, "Error while adding an asynchronous message publication", messagePublication));
            return messagePublication;
        }
    }
}
