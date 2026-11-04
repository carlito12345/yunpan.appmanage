package io.github.muntashirakon.adb;

/* loaded from: classes.dex */
public class AdbAuthenticationFailedException extends RuntimeException {
    public AdbAuthenticationFailedException() {
        super("Initial authentication attempt rejected by peer.");
    }
}
