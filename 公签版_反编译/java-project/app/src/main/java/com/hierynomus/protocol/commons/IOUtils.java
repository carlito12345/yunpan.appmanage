package com.hierynomus.protocol.commons;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class IOUtils {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) IOUtils.class);

    public static void closeQuietly(AutoCloseable... autoCloseableArr) throws Exception {
        for (AutoCloseable autoCloseable : autoCloseableArr) {
            if (autoCloseable != null) {
                try {
                    autoCloseable.close();
                } catch (Exception e7) {
                    logger.warn("Error closing {} - {}", autoCloseable, e7);
                }
            }
        }
    }

    public static void closeSilently(AutoCloseable... autoCloseableArr) throws Exception {
        for (AutoCloseable autoCloseable : autoCloseableArr) {
            if (autoCloseable != null) {
                try {
                    autoCloseable.close();
                } catch (Exception unused) {
                }
            }
        }
    }
}
