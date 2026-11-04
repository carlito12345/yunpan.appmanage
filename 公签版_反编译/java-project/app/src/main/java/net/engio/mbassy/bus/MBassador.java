package net.engio.mbassy.bus;

import java.util.concurrent.TimeUnit;
import net.engio.mbassy.bus.common.IMessageBus;
import net.engio.mbassy.bus.config.BusConfiguration;
import net.engio.mbassy.bus.config.Feature;
import net.engio.mbassy.bus.config.IBusConfiguration;
import net.engio.mbassy.bus.error.IPublicationErrorHandler;
import net.engio.mbassy.bus.error.PublicationError;
import net.engio.mbassy.bus.publication.IPublicationCommand;
import net.engio.mbassy.bus.publication.ISyncAsyncPublicationCommand;
import net.engio.mbassy.bus.publication.SyncAsyncPostCommand;

/* loaded from: classes.dex */
public class MBassador<T> extends AbstractSyncAsyncMessageBus<T, SyncAsyncPostCommand<T>> implements IMessageBus<T, SyncAsyncPostCommand<T>> {
    public MBassador() {
        this(new BusConfiguration().addFeature(Feature.SyncPubSub.Default()).addFeature(Feature.AsynchronousHandlerInvocation.Default()).addFeature(Feature.AsynchronousMessageDispatch.Default()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.engio.mbassy.bus.common.GenericMessagePublicationSupport
    public /* bridge */ /* synthetic */ IPublicationCommand post(Object obj) {
        return post((MBassador<T>) obj);
    }

    @Override // net.engio.mbassy.bus.common.PubSubSupport
    public IMessagePublication publish(T t10) {
        MessagePublication messagePublicationCreateMessagePublication = createMessagePublication(t10);
        try {
            messagePublicationCreateMessagePublication.execute();
            return messagePublicationCreateMessagePublication;
        } catch (Throwable th2) {
            try {
                handlePublicationError(new PublicationError().setMessage("Error during publication of message").setCause(th2).setPublication(messagePublicationCreateMessagePublication));
            } catch (Throwable unused) {
            }
            return messagePublicationCreateMessagePublication;
        }
    }

    public IMessagePublication publishAsync(T t10) {
        return addAsynchronousPublication(createMessagePublication(t10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.engio.mbassy.bus.common.IMessageBus, net.engio.mbassy.bus.common.GenericMessagePublicationSupport
    public /* bridge */ /* synthetic */ ISyncAsyncPublicationCommand post(Object obj) {
        return post((MBassador<T>) obj);
    }

    public IMessagePublication publishAsync(T t10, long j10, TimeUnit timeUnit) {
        return addAsynchronousPublication(createMessagePublication(t10), j10, timeUnit);
    }

    @Override // net.engio.mbassy.bus.common.IMessageBus, net.engio.mbassy.bus.common.GenericMessagePublicationSupport
    public SyncAsyncPostCommand<T> post(T t10) {
        return new SyncAsyncPostCommand<>(this, t10);
    }

    public MBassador(IPublicationErrorHandler iPublicationErrorHandler) {
        super(new BusConfiguration().addFeature(Feature.SyncPubSub.Default()).addFeature(Feature.AsynchronousHandlerInvocation.Default()).addFeature(Feature.AsynchronousMessageDispatch.Default()).addPublicationErrorHandler(iPublicationErrorHandler));
    }

    public MBassador(IBusConfiguration iBusConfiguration) {
        super(iBusConfiguration);
    }
}
