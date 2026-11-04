package org.bouncycastle.util.test;

import g.b;
import org.bouncycastle.util.Strings;

/* loaded from: classes3.dex */
public class SimpleTestResult implements TestResult {
    private static final String SEPARATOR = Strings.lineSeparator();
    private Throwable exception;
    private String message;
    private boolean success;

    public SimpleTestResult(boolean z, String str) {
        this.success = z;
        this.message = str;
    }

    public static TestResult failed(Test test, String str) {
        return new SimpleTestResult(false, test.getName() + ": " + str);
    }

    public static String failedMessage(String str, String str2, String str3, String str4) {
        StringBuffer stringBuffer = new StringBuffer(str);
        stringBuffer.append(" failing ");
        stringBuffer.append(str2);
        String str5 = SEPARATOR;
        stringBuffer.append(str5);
        stringBuffer.append("    expected: ");
        stringBuffer.append(str3);
        stringBuffer.append(str5);
        stringBuffer.append("    got     : ");
        stringBuffer.append(str4);
        return stringBuffer.toString();
    }

    public static TestResult successful(Test test, String str) {
        return new SimpleTestResult(true, test.getName() + ": " + str);
    }

    @Override // org.bouncycastle.util.test.TestResult
    public Throwable getException() {
        return this.exception;
    }

    @Override // org.bouncycastle.util.test.TestResult
    public boolean isSuccessful() {
        return this.success;
    }

    @Override // org.bouncycastle.util.test.TestResult
    public String toString() {
        return this.message;
    }

    public SimpleTestResult(boolean z, String str, Throwable th2) {
        this.success = z;
        this.message = str;
        this.exception = th2;
    }

    public static TestResult failed(Test test, String str, Object obj, Object obj2) {
        StringBuilder sbM = b.m(str);
        String str2 = SEPARATOR;
        sbM.append(str2);
        sbM.append("Expected: ");
        sbM.append(obj);
        sbM.append(str2);
        sbM.append("Found   : ");
        sbM.append(obj2);
        return failed(test, sbM.toString());
    }

    public static TestResult failed(Test test, String str, Throwable th2) {
        return new SimpleTestResult(false, test.getName() + ": " + str, th2);
    }
}
