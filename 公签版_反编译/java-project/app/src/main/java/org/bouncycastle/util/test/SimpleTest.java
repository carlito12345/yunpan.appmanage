package org.bouncycastle.util.test;

import java.io.PrintStream;
import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public abstract class SimpleTest implements Test {

    public interface TestExceptionOperation {
        void operation();
    }

    public static void runTest(Test test) {
        runTest(test, System.out);
    }

    public static void runTests(Test[] testArr) {
        runTests(testArr, System.out);
    }

    private TestResult success() {
        return SimpleTestResult.successful(this, "Okay");
    }

    public boolean areEqual(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        return Arrays.areEqual(bArr, i10, i11, bArr2, i12, i13);
    }

    public void fail(String str) {
        throw new TestFailedException(SimpleTestResult.failed(this, str));
    }

    @Override // org.bouncycastle.util.test.Test
    public abstract String getName();

    public void isEquals(int i10, int i11) {
        if (i10 != i11) {
            throw new TestFailedException(SimpleTestResult.failed(this, "no message"));
        }
    }

    public void isTrue(String str, boolean z) {
        if (!z) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
    }

    @Override // org.bouncycastle.util.test.Test
    public TestResult perform() {
        try {
            performTest();
            return success();
        } catch (TestFailedException e7) {
            return e7.getResult();
        } catch (Exception e10) {
            return SimpleTestResult.failed(this, "Exception: " + e10, e10);
        }
    }

    public abstract void performTest();

    public Exception testException(String str, String str2, TestExceptionOperation testExceptionOperation) {
        try {
            testExceptionOperation.operation();
            fail(str);
            return null;
        } catch (Exception e7) {
            if (str != null) {
                isTrue(e7.getMessage(), e7.getMessage().indexOf(str) >= 0);
            }
            isTrue(e7.getMessage(), e7.getClass().getName().indexOf(str2) >= 0);
            return e7;
        }
    }

    public static void runTest(Test test, PrintStream printStream) {
        TestResult testResultPerform = test.perform();
        if (testResultPerform.getException() != null) {
            testResultPerform.getException().printStackTrace(printStream);
        }
        printStream.getClass();
    }

    public static void runTests(Test[] testArr, PrintStream printStream) {
        Vector vector = new Vector();
        for (int i10 = 0; i10 != testArr.length; i10++) {
            TestResult testResultPerform = testArr[i10].perform();
            if (!testResultPerform.isSuccessful()) {
                vector.addElement(testResultPerform);
            }
            if (testResultPerform.getException() != null) {
                testResultPerform.getException().printStackTrace(printStream);
            }
            printStream.getClass();
        }
        printStream.getClass();
        if (vector.isEmpty()) {
            return;
        }
        vector.size();
        Enumeration enumerationElements = vector.elements();
        while (enumerationElements.hasMoreElements()) {
            PrintStream printStream2 = System.out;
            TestResult testResult = (TestResult) enumerationElements.nextElement();
            if (testResult != null) {
                testResult.toString();
            }
            printStream2.getClass();
        }
    }

    public boolean areEqual(byte[] bArr, byte[] bArr2) {
        return Arrays.areEqual(bArr, bArr2);
    }

    public void fail(String str, Object obj, Object obj2) {
        throw new TestFailedException(SimpleTestResult.failed(this, str, obj, obj2));
    }

    public void isEquals(long j10, long j11) {
        if (j10 != j11) {
            throw new TestFailedException(SimpleTestResult.failed(this, "no message"));
        }
    }

    public void isTrue(boolean z) {
        if (!z) {
            throw new TestFailedException(SimpleTestResult.failed(this, "no message"));
        }
    }

    public boolean areEqual(byte[][] bArr, byte[][] bArr2) {
        if (bArr == null && bArr2 == null) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length != bArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if (!areEqual(bArr[i10], bArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    public void fail(String str, Throwable th2) {
        throw new TestFailedException(SimpleTestResult.failed(this, str, th2));
    }

    public void isEquals(Object obj, Object obj2) {
        if (!obj.equals(obj2)) {
            throw new TestFailedException(SimpleTestResult.failed(this, "no message"));
        }
    }

    public void isEquals(String str, long j10, long j11) {
        if (j10 != j11) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
    }

    public void isEquals(String str, Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return;
        }
        if (obj == null) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
        if (obj2 == null) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
        if (!obj.equals(obj2)) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
    }

    public void isEquals(String str, boolean z, boolean z4) {
        if (z != z4) {
            throw new TestFailedException(SimpleTestResult.failed(this, str));
        }
    }

    public void isEquals(boolean z, boolean z4) {
        if (z != z4) {
            throw new TestFailedException(SimpleTestResult.failed(this, "no message"));
        }
    }
}
