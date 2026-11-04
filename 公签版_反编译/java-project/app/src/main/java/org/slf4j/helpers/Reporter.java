package org.slf4j.helpers;

import java.io.PrintStream;

/* loaded from: classes3.dex */
public class Reporter {
    static final String SLF4J_DEBUG_PREFIX = "SLF4J(D): ";
    static final String SLF4J_ERROR_PREFIX = "SLF4J(E): ";
    static final String SLF4J_INFO_PREFIX = "SLF4J(I): ";
    public static final String SLF4J_INTERNAL_REPORT_STREAM_KEY = "slf4j.internal.report.stream";
    public static final String SLF4J_INTERNAL_VERBOSITY_KEY = "slf4j.internal.verbosity";
    static final String SLF4J_WARN_PREFIX = "SLF4J(W): ";
    private static final String[] SYSOUT_KEYS = {"System.out", "stdout", "sysout"};
    private static final TargetChoice TARGET_CHOICE = getTargetChoice();
    private static final Level INTERNAL_VERBOSITY = initVerbosity();

    public enum Level {
        DEBUG(0),
        INFO(1),
        WARN(2),
        ERROR(3);

        int levelInt;

        Level(int i10) {
            this.levelInt = i10;
        }

        private int getLevelInt() {
            return this.levelInt;
        }
    }

    public enum TargetChoice {
        Stderr,
        Stdout
    }

    public static void debug(String str) {
        if (isEnabledFor(Level.DEBUG)) {
            getTarget().getClass();
        }
    }

    public static final void error(String str, Throwable th2) {
        getTarget().getClass();
        getTarget().getClass();
        th2.printStackTrace(getTarget());
    }

    private static PrintStream getTarget() {
        return TARGET_CHOICE.ordinal() != 1 ? System.err : System.out;
    }

    private static TargetChoice getTargetChoice() {
        String property = System.getProperty(SLF4J_INTERNAL_REPORT_STREAM_KEY);
        if (property == null || property.isEmpty()) {
            return TargetChoice.Stderr;
        }
        for (String str : SYSOUT_KEYS) {
            if (str.equalsIgnoreCase(property)) {
                return TargetChoice.Stdout;
            }
        }
        return TargetChoice.Stderr;
    }

    public static void info(String str) {
        if (isEnabledFor(Level.INFO)) {
            getTarget().getClass();
        }
    }

    private static Level initVerbosity() {
        String property = System.getProperty(SLF4J_INTERNAL_VERBOSITY_KEY);
        return (property == null || property.isEmpty()) ? Level.INFO : property.equalsIgnoreCase("DEBUG") ? Level.DEBUG : property.equalsIgnoreCase("ERROR") ? Level.ERROR : property.equalsIgnoreCase("WARN") ? Level.WARN : Level.INFO;
    }

    public static boolean isEnabledFor(Level level) {
        return level.levelInt >= INTERNAL_VERBOSITY.levelInt;
    }

    public static final void warn(String str) {
        if (isEnabledFor(Level.WARN)) {
            getTarget().getClass();
        }
    }

    public static final void error(String str) {
        getTarget().getClass();
    }
}
