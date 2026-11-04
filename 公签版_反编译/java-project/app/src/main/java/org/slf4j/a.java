package org.slf4j;

import org.slf4j.event.Level;
import org.slf4j.spi.DefaultLoggingEventBuilder;
import org.slf4j.spi.LoggingEventBuilder;
import org.slf4j.spi.NOPLoggingEventBuilder;

/* loaded from: classes3.dex */
public abstract /* synthetic */ class a {
    public static LoggingEventBuilder a(Logger logger) {
        return logger.isDebugEnabled() ? logger.makeLoggingEventBuilder(Level.DEBUG) : NOPLoggingEventBuilder.singleton();
    }

    public static LoggingEventBuilder b(Logger logger) {
        return logger.isErrorEnabled() ? logger.makeLoggingEventBuilder(Level.ERROR) : NOPLoggingEventBuilder.singleton();
    }

    public static LoggingEventBuilder c(Logger logger) {
        return logger.isInfoEnabled() ? logger.makeLoggingEventBuilder(Level.INFO) : NOPLoggingEventBuilder.singleton();
    }

    public static LoggingEventBuilder d(Logger logger, Level level) {
        return logger.isEnabledForLevel(level) ? logger.makeLoggingEventBuilder(level) : NOPLoggingEventBuilder.singleton();
    }

    public static LoggingEventBuilder e(Logger logger) {
        return logger.isTraceEnabled() ? logger.makeLoggingEventBuilder(Level.TRACE) : NOPLoggingEventBuilder.singleton();
    }

    public static LoggingEventBuilder f(Logger logger) {
        return logger.isWarnEnabled() ? logger.makeLoggingEventBuilder(Level.WARN) : NOPLoggingEventBuilder.singleton();
    }

    public static boolean g(Logger logger, Level level) {
        int i10 = level.toInt();
        if (i10 == 0) {
            return logger.isTraceEnabled();
        }
        if (i10 == 10) {
            return logger.isDebugEnabled();
        }
        if (i10 == 20) {
            return logger.isInfoEnabled();
        }
        if (i10 == 30) {
            return logger.isWarnEnabled();
        }
        if (i10 == 40) {
            return logger.isErrorEnabled();
        }
        throw new IllegalArgumentException("Level [" + level + "] not recognized.");
    }

    public static LoggingEventBuilder h(Logger logger, Level level) {
        return new DefaultLoggingEventBuilder(logger, level);
    }
}
