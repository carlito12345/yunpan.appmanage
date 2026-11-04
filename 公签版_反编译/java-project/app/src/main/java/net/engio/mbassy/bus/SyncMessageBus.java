package net.engio.mbassy.bus;

import net.engio.mbassy.bus.common.ErrorHandlingSupport;
import net.engio.mbassy.bus.common.GenericMessagePublicationSupport;
import net.engio.mbassy.bus.common.PubSubSupport;
import net.engio.mbassy.bus.config.BusConfiguration;
import net.engio.mbassy.bus.config.Feature;
import net.engio.mbassy.bus.config.IBusConfiguration;
import net.engio.mbassy.bus.error.IPublicationErrorHandler;
import net.engio.mbassy.bus.error.PublicationError;
import net.engio.mbassy.bus.publication.IPublicationCommand;

/* loaded from: classes.dex */
public class SyncMessageBus<T> extends AbstractPubSubSupport<T> implements PubSubSupport<T>, ErrorHandlingSupport, GenericMessagePublicationSupport<T, SyncPostCommand> {

    public class SyncPostCommand implements IPublicationCommand {
        private T message;

        public SyncPostCommand(T t10) {
            this.message = t10;
        }

        @Override // net.engio.mbassy.bus.publication.IPublicationCommand
        public IMessagePublication now() {
            return SyncMessageBus.this.publish(this.message);
        }
    }

    public SyncMessageBus() {
        super(new BusConfiguration().addFeature(Feature.SyncPubSub.Default()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.engio.mbassy.bus.common.GenericMessagePublicationSupport
    public /* bridge */ /* synthetic */ IPublicationCommand post(Object obj) {
        return post((SyncMessageBus<T>) obj);
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

    public SyncMessageBus(IPublicationErrorHandler iPublicationErrorHandler) {
        super(new BusConfiguration().addFeature(Feature.SyncPubSub.Default()).addPublicationErrorHandler(iPublicationErrorHandler));
    }

    @Override // net.engio.mbassy.bus.common.GenericMessagePublicationSupport
    public SyncMessageBus<T>.SyncPostCommand post(T t10) {
        return new SyncPostCommand(t10);
    }

    public SyncMessageBus(IBusConfiguration iBusConfiguration) {
        super(iBusConfiguration);
    }
}
