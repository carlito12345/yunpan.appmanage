package org.slf4j.helpers;

import java.io.Serializable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.a;
import org.slf4j.event.Level;
import org.slf4j.spi.LoggingEventBuilder;

/* loaded from: classes3.dex */
abstract class NamedLoggerBase implements Logger, Serializable {
    private static final long serialVersionUID = 7535258609338176893L;
    protected String name;

    @Override // org.slf4j.Logger
    public final /* synthetic */ LoggingEventBuilder atDebug() {
        return a.a(this);
    }

    @Override // org.slf4j.Logger
    public final /* synthetic */ LoggingEventBuilder atError() {
        return a.b(this);
    }

    @Override // org.slf4j.Logger
    public final /* synthetic */ LoggingEventBuilder atInfo() {
        return a.c(this);
    }

    @Override // org.slf4j.Logger
    public final /* synthetic */ LoggingEventBuilder atLevel(Level level) {
        return a.d(this, level);
    }

    @Override // org.slf4j.Logger
    public final /* synthetic */ LoggingEventBuilder atTrace() {
        return a.e(this);
    }

    @Override // org.slf4j.Logger
    public final /* synthetic */ LoggingEventBuilder atWarn() {
        return a.f(this);
    }

    @Override // org.slf4j.Logger
    public String getName() {
        return this.name;
    }

    @Override // org.slf4j.Logger
    public final /* synthetic */ boolean isEnabledForLevel(Level level) {
        return a.g(this, level);
    }

    @Override // org.slf4j.Logger
    public final /* synthetic */ LoggingEventBuilder makeLoggingEventBuilder(Level level) {
        return a.h(this, level);
    }

    public Object readResolve() {
        return LoggerFactory.getLogger(getName());
    }
}
