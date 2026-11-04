package io.github.muntashirakon.adb;

import android.os.Build;
import android.os.Process;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;
import java.security.Security;

/* loaded from: classes.dex */
public final class PRNGFixes {
    private static final byte[] BUILD_FINGERPRINT_AND_DEVICE_SERIAL = getBuildFingerprintAndDeviceSerial();

    public static class LinuxPRNGSecureRandom extends SecureRandomSpi {
        private static final File URANDOM_FILE = new File("/dev/urandom");
        private static final Object sLock = new Object();
        private static DataInputStream sUrandomIn;
        private static OutputStream sUrandomOut;
        private boolean mSeeded;

        private DataInputStream getUrandomInputStream() {
            DataInputStream dataInputStream;
            synchronized (sLock) {
                if (sUrandomIn == null) {
                    try {
                        sUrandomIn = new DataInputStream(new FileInputStream(URANDOM_FILE));
                    } catch (IOException e7) {
                        throw new SecurityException("Failed to open " + URANDOM_FILE + " for reading", e7);
                    }
                }
                dataInputStream = sUrandomIn;
            }
            return dataInputStream;
        }

        private OutputStream getUrandomOutputStream() {
            OutputStream outputStream;
            synchronized (sLock) {
                try {
                    if (sUrandomOut == null) {
                        sUrandomOut = new FileOutputStream(URANDOM_FILE);
                    }
                    outputStream = sUrandomOut;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return outputStream;
        }

        @Override // java.security.SecureRandomSpi
        public byte[] engineGenerateSeed(int i10) {
            byte[] bArr = new byte[i10];
            engineNextBytes(bArr);
            return bArr;
        }

        @Override // java.security.SecureRandomSpi
        public void engineNextBytes(byte[] bArr) {
            DataInputStream urandomInputStream;
            if (!this.mSeeded) {
                engineSetSeed(PRNGFixes.generateSeed());
            }
            try {
                synchronized (sLock) {
                    urandomInputStream = getUrandomInputStream();
                }
                synchronized (urandomInputStream) {
                    urandomInputStream.readFully(bArr);
                }
            } catch (IOException e7) {
                throw new SecurityException("Failed to read from " + URANDOM_FILE, e7);
            }
        }

        @Override // java.security.SecureRandomSpi
        public void engineSetSeed(byte[] bArr) {
            OutputStream urandomOutputStream;
            try {
                try {
                    synchronized (sLock) {
                        urandomOutputStream = getUrandomOutputStream();
                    }
                    urandomOutputStream.write(bArr);
                    urandomOutputStream.flush();
                } catch (IOException unused) {
                    File file = URANDOM_FILE;
                    if (file != null) {
                        file.toString();
                    }
                }
            } finally {
                this.mSeeded = true;
            }
        }
    }

    public static class LinuxPRNGSecureRandomProvider extends Provider {
        public LinuxPRNGSecureRandomProvider() {
            super("LinuxPRNG", 1.0d, "A Linux-specific random number provider that uses /dev/urandom");
            put("SecureRandom.SHA1PRNG", LinuxPRNGSecureRandom.class.getName());
            put("SecureRandom.SHA1PRNG ImplementedIn", "Software");
        }
    }

    private PRNGFixes() {
    }

    public static void apply() throws IllegalAccessException, NoSuchAlgorithmException, IOException, IllegalArgumentException, InvocationTargetException {
        applyOpenSSLFix();
        installLinuxPRNGSecureRandom();
    }

    private static void applyOpenSSLFix() throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT > 18) {
            return;
        }
        try {
            Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_seed", byte[].class).invoke(null, generateSeed());
            int iIntValue = ((Integer) Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_load_file", String.class, Long.TYPE).invoke(null, "/dev/urandom", 1024)).intValue();
            if (iIntValue == 1024) {
                return;
            }
            throw new IOException("Unexpected number of bytes read from Linux PRNG: " + iIntValue);
        } catch (Exception e7) {
            throw new SecurityException("Failed to seed OpenSSL PRNG", e7);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] generateSeed() throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeLong(System.currentTimeMillis());
            dataOutputStream.writeLong(System.nanoTime());
            dataOutputStream.writeInt(Process.myPid());
            dataOutputStream.writeInt(Process.myUid());
            dataOutputStream.write(BUILD_FINGERPRINT_AND_DEVICE_SERIAL);
            dataOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e7) {
            throw new SecurityException("Failed to generate seed", e7);
        }
    }

    private static byte[] getBuildFingerprintAndDeviceSerial() {
        StringBuilder sb2 = new StringBuilder();
        String str = Build.FINGERPRINT;
        if (str != null) {
            sb2.append(str);
        }
        String deviceSerialNumber = getDeviceSerialNumber();
        if (deviceSerialNumber != null) {
            sb2.append(deviceSerialNumber);
        }
        try {
            return sb2.toString().getBytes(HTTP.UTF_8);
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("UTF-8 encoding not supported");
        }
    }

    private static String getDeviceSerialNumber() {
        try {
            return (String) Build.class.getField("SERIAL").get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    private static void installLinuxPRNGSecureRandom() throws NoSuchAlgorithmException {
        if (Build.VERSION.SDK_INT > 18) {
            return;
        }
        Provider[] providers = Security.getProviders("SecureRandom.SHA1PRNG");
        if (providers == null || providers.length < 1 || !LinuxPRNGSecureRandomProvider.class.equals(providers[0].getClass())) {
            Security.insertProviderAt(new LinuxPRNGSecureRandomProvider(), 1);
        }
        SecureRandom secureRandom = new SecureRandom();
        if (!LinuxPRNGSecureRandomProvider.class.equals(secureRandom.getProvider().getClass())) {
            throw new SecurityException("new SecureRandom() backed by wrong Provider: " + secureRandom.getProvider().getClass());
        }
        try {
            SecureRandom secureRandom2 = SecureRandom.getInstance("SHA1PRNG");
            if (LinuxPRNGSecureRandomProvider.class.equals(secureRandom2.getProvider().getClass())) {
                return;
            }
            throw new SecurityException("SecureRandom.getInstance(\"SHA1PRNG\") backed by wrong provider: " + secureRandom2.getProvider().getClass());
        } catch (NoSuchAlgorithmException e7) {
            throw new SecurityException("SHA1PRNG not available", e7);
        }
    }
}
