package net.engio.mbassy.bus.publication;

import java.util.concurrent.TimeUnit;
import net.engio.mbassy.bus.IMessagePublication;
import net.engio.mbassy.bus.MBassador;

/* loaded from: classes.dex */
public class SyncAsyncPostCommand<T> implements ISyncAsyncPublicationCommand {
    private MBassador<T> mBassador;
    private T message;

    public SyncAsyncPostCommand(MBassador<T> mBassador, T t10) {
        this.mBassador = mBassador;
        this.message = t10;
    }

    @Override // net.engio.mbassy.bus.publication.ISyncAsyncPublicationCommand
    public IMessagePublication asynchronously() {
        return this.mBassador.publishAsync(this.message);
    }

    @Override // net.engio.mbassy.bus.publication.IPublicationCommand
    public IMessagePublication now() {
        return this.mBassador.publish(this.message);
    }

    @Override // net.engio.mbassy.bus.publication.ISyncAsyncPublicationCommand
    public IMessagePublication asynchronously(long j10, TimeUnit timeUnit) {
        return this.mBassador.publishAsync(this.message, j10, timeUnit);
    }
}
