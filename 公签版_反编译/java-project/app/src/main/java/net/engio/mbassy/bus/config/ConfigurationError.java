package net.engio.mbassy.bus.config;

import android.support.v4.media.session.a;

/* loaded from: classes.dex */
public class ConfigurationError extends RuntimeException {
    private String message;

    private ConfigurationError(String str) {
        this.message = str;
    }

    public static ConfigurationError MissingFeature(Class<? extends Feature> cls) {
        return new ConfigurationError(a.r("The expected feature ", cls, " was missing. Use addFeature() in IBusConfiguration to add features."));
    }

    @Override // java.lang.Throwable
    public String toString() {
        return this.message;
    }
}
