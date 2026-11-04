package net.sf.sevenzipjbinding;

import android.support.v4.media.session.a;
import g.b;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.AccessController;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Random;
import net.sf.sevenzipjbinding.impl.OutArchiveImpl;
import ta.q;

/* loaded from: classes.dex */
public class SevenZip {
    private static final String PROPERTY_BUILD_REF = "build.ref";
    private static final String PROPERTY_SEVENZIPJBINDING_LIB_HASH = "lib.%s.hash";
    private static final String PROPERTY_SEVENZIPJBINDING_LIB_NAME = "lib.%s.name";
    private static final String SEVENZIPJBINDING_LIB_PROPERTIES = "build.ref=000000000000\n\nlib.1.name=lib7-Zip-JBinding.so\nlib.1.hash=0000000000000000000000000000000000000000\n";
    private static final String SEVENZIPJBINDING_LIB_PROPERTIES_FILENAME = "sevenzipjbinding-lib.properties";
    public static final String SEVENZIPJBINDING_MANIFEST_MF = "Manifest-Version: 1.0\nImplementation-Vendor: sevenzipjbind.sf.net\nImplementation-Title: 7-Zip-JBinding native lib (Linux-arm)\nImplementation-Version: 16.02-2.02\nBuilt-By: Boris Brodski\nCMake: 3.3.2\nCreated-By: 1.6.0_33-b03 (Sun Microsystems Inc.)\nBuilt-Date: 2020-01-20 21:44:51Z\n";
    private static final String SEVENZIPJBINDING_PLATFORMS_PROPRETIES_FILENAME = "/sevenzipjbinding-platforms.properties";
    private static final String SEVENZIPJBINDING_PLATFORM_PROPERTIES = "platform.1=Linux-arm";
    private static final String SEVENZIPJBINDING_VERSION = "16.02-2.02";
    private static final String SYSTEM_PROPERTY_SEVEN_ZIP_NO_DO_PRIVILEGED_INITIALIZATION = "sevenzip.no_doprivileged_initialization";
    private static final String SYSTEM_PROPERTY_TMP = "java.io.tmpdir";
    private static boolean autoInitializationWillOccur = true;
    private static List<String> availablePlatforms = null;
    private static boolean initializationSuccessful = false;
    private static SevenZipNativeInitializationException lastInitializationException;
    private static File[] temporaryArtifacts;
    private static String usedPlatform;

    public static final class ArchiveOpenCryptoCallback implements IArchiveOpenCallback, ICryptoGetTextPassword {
        private final String passwordForOpen;

        public ArchiveOpenCryptoCallback(String str) {
            this.passwordForOpen = str;
        }

        @Override // net.sf.sevenzipjbinding.ICryptoGetTextPassword
        public String cryptoGetTextPassword() {
            return this.passwordForOpen;
        }

        @Override // net.sf.sevenzipjbinding.IArchiveOpenCallback
        public void setCompleted(Long l, Long l8) {
        }

        @Override // net.sf.sevenzipjbinding.IArchiveOpenCallback
        public void setTotal(Long l, Long l8) {
        }
    }

    public static class DummyOpenArchiveCallback implements IArchiveOpenCallback, ICryptoGetTextPassword {
        private DummyOpenArchiveCallback() {
        }

        @Override // net.sf.sevenzipjbinding.ICryptoGetTextPassword
        public String cryptoGetTextPassword() throws SevenZipException {
            throw new SevenZipException("No password was provided for opening protected archive.");
        }

        @Override // net.sf.sevenzipjbinding.IArchiveOpenCallback
        public void setCompleted(Long l, Long l8) {
        }

        @Override // net.sf.sevenzipjbinding.IArchiveOpenCallback
        public void setTotal(Long l, Long l8) {
        }
    }

    public static class Version {
        public int build;
        public String copyright;
        public String date;
        public int major;
        public int minor;
        public String version;
    }

    private SevenZip() {
    }

    private static void applyTemporaryArtifacts(File file, List<File> list) {
        File[] fileArr = new File[list.size() + 1];
        temporaryArtifacts = fileArr;
        list.toArray(fileArr);
        temporaryArtifacts[r2.length - 1] = file;
    }

    private static String byteArrayToHex(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            sb2.append(Integer.toHexString(b10 & 255));
        }
        return sb2.toString();
    }

    private static IInArchive callNativeOpenArchive(ArchiveFormat archiveFormat, IInStream iInStream, IArchiveOpenCallback iArchiveOpenCallback) {
        if (iInStream != null) {
            return nativeOpenArchive(archiveFormat, iInStream, iArchiveOpenCallback);
        }
        throw new NullPointerException("SevenZip.callNativeOpenArchive(...): inStream parameter is null");
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0016: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]) (LINE:23), block:B:11:0x0016 */
    /* JADX WARN: Removed duplicated region for block: B:35:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void copyLibraryToFS(File file, InputStream inputStream) throws Throwable {
        Exception e7;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                FileOutputStream fileOutputStream3 = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int i10 = inputStream.read(bArr);
                        if (i10 > 0) {
                            fileOutputStream3.write(bArr, 0, i10);
                        } else {
                            try {
                                break;
                            } catch (IOException unused) {
                            }
                        }
                    }
                    inputStream.close();
                    try {
                        fileOutputStream3.close();
                    } catch (IOException unused2) {
                    }
                } catch (Exception e10) {
                    e7 = e10;
                    throw new RuntimeException("Error initializing SevenZipJBinding native library: can't copy native library out of a resource file to the temporary location: '" + file.getAbsolutePath() + "'", e7);
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                try {
                    inputStream.close();
                } catch (IOException unused3) {
                }
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception e11) {
            e7 = e11;
        } catch (Throwable th3) {
            th = th3;
            inputStream.close();
            if (fileOutputStream2 != null) {
            }
            throw th;
        }
    }

    private static List<File> copyOrSkipLibraries(Properties properties, File file) throws Throwable {
        File file2;
        ArrayList arrayList = new ArrayList(5);
        int i10 = 1;
        while (true) {
            String strI = b.i("lib.", i10, ".name");
            String strI2 = b.i("lib.", i10, ".hash");
            String property = properties.getProperty(strI);
            String property2 = properties.getProperty(strI2);
            if (property == null) {
                if (arrayList.size() != 0) {
                    applyTemporaryArtifacts(file, arrayList);
                    return arrayList;
                }
                throwInitException(b.A("property file 'sevenzipjbinding-lib.properties' from 'sevenzipjbinding-<Platform>.jar' missing property '", strI, "'"));
            }
            if (property2 == null) {
                throwInitException(q.l("property file 'sevenzipjbinding-lib.properties' from 'sevenzipjbinding-<Platform>.jar' missing property ", strI2, " containing the hash for the library '", property, "'"));
            }
            if (System.getProperty("java.vendor", "unknown").equals("The Android Project")) {
                file2 = new File(property.replaceAll("lib|.so", ""));
            } else {
                file2 = new File(file.getAbsolutePath() + File.separatorChar + property);
                if (!file2.exists() || !hashMatched(file2, property2)) {
                    InputStream resourceAsStream = SevenZip.class.getResourceAsStream("/" + usedPlatform + "/" + property);
                    if (resourceAsStream == null) {
                        throwInitException(b.A("error loading native library '", property, "' from a jar-file 'sevenzipjbinding-<Platform>.jar'."));
                    }
                    copyLibraryToFS(file2, resourceAsStream);
                }
            }
            arrayList.add(file2);
            i10++;
        }
    }

    private static File createOrVerifyTmpDir(File file) throws SevenZipNativeInitializationException {
        File file2;
        if (System.getProperty("java.vendor", "unknown").equals("The Android Project")) {
            return null;
        }
        if (file != null) {
            file2 = file;
        } else {
            String property = System.getProperty(SYSTEM_PROPERTY_TMP);
            if (property == null) {
                throwInitException("can't determinte tmp directory. Use may use -Djava.io.tmpdir=<path to tmp dir> parameter for jvm to fix this.");
            }
            file2 = new File(property);
        }
        if (!file2.exists() || !file2.isDirectory()) {
            throwInitException("invalid tmp directory '" + file + "'");
        }
        if (!file2.canWrite()) {
            throwInitException("can't create files in '" + file2.getAbsolutePath() + "'");
        }
        return file2;
    }

    private static void determineAndSetUsedPlatform(String str) {
        if (str == null) {
            usedPlatform = getPlatformBestMatch();
        } else {
            usedPlatform = str;
        }
    }

    private static void ensureLibraryIsInitialized() {
        if (autoInitializationWillOccur) {
            autoInitializationWillOccur = false;
            try {
                initSevenZipFromPlatformJAR();
            } catch (SevenZipNativeInitializationException e7) {
                lastInitializationException = e7;
                throw new RuntimeException("SevenZipJBinding couldn't be initialized automaticly using initialization from platform depended JAR and the default temporary directory. Please, make sure the correct 'sevenzipjbinding-<Platform>.jar' file is on the class path or consider initializing SevenZipJBinding manualy using one of the offered initialization methods: 'net.sf.sevenzipjbinding.SevenZip.init*()'", e7);
            }
        }
        if (!initializationSuccessful) {
            throw new RuntimeException("SevenZipJBinding wasn't initialized successfully last time.", lastInitializationException);
        }
    }

    public static synchronized Throwable getLastInitializationException() {
        return lastInitializationException;
    }

    private static File getOrCreateSevenZipJBindingTmpDir(File file, Properties properties) throws SevenZipNativeInitializationException {
        String orGenerateBuildRef = getOrGenerateBuildRef(properties);
        if (System.getProperty("java.vendor", "unknown").equals("The Android Project")) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file.getAbsolutePath());
        File file2 = new File(a.u(sb2, File.separator, "SevenZipJBinding-", orGenerateBuildRef));
        if (!file2.exists() && !file2.mkdir()) {
            throwInitException("Directory '" + file.getAbsolutePath() + "' couldn't be created");
        }
        return file2;
    }

    private static String getOrGenerateBuildRef(Properties properties) {
        String property = properties.getProperty(PROPERTY_BUILD_REF);
        return property == null ? Integer.toString(new Random().nextInt(10000000)) : property;
    }

    public static String getPlatformBestMatch() throws SevenZipNativeInitializationException {
        List<String> platformList = getPlatformList();
        if (platformList.size() == 1) {
            return platformList.get(0);
        }
        String property = System.getProperty("os.arch");
        String str = System.getProperty("os.name").split(" ")[0];
        if (platformList.contains(str + "-" + property)) {
            return b.k(str, "-", property);
        }
        StringBuilder sb2 = new StringBuilder("Can't find suited platform for os.arch=");
        sb2.append(property);
        sb2.append(", os.name=");
        sb2.append(str);
        sb2.append("... Available list of platforms: ");
        Iterator<String> it = platformList.iterator();
        while (it.hasNext()) {
            sb2.append(it.next());
            sb2.append(", ");
        }
        sb2.setLength(sb2.length() - 2);
        throwInitException(sb2.toString());
        return null;
    }

    public static synchronized List<String> getPlatformList() {
        try {
            List<String> list = availablePlatforms;
            if (list != null) {
                return list;
            }
            InputStream byteArrayInputStream = System.getProperty("java.vendor", "unknown").equals("The Android Project") ? new ByteArrayInputStream(SEVENZIPJBINDING_PLATFORM_PROPERTIES.getBytes()) : SevenZip.class.getResourceAsStream(SEVENZIPJBINDING_PLATFORMS_PROPRETIES_FILENAME);
            if (byteArrayInputStream == null) {
                throw new SevenZipNativeInitializationException("Can not find 7-Zip-JBinding platform property file /sevenzipjbinding-platforms.properties. Make sure the 'sevenzipjbinding-<Platform>.jar' file is on the class path or consider initializing SevenZipJBinding manualy using one of the offered initialization methods: 'net.sf.sevenzipjbinding.SevenZip.init*()'");
            }
            Properties properties = new Properties();
            try {
                properties.load(byteArrayInputStream);
            } catch (IOException e7) {
                throwInitException(e7, "Error loading existing property file /sevenzipjbinding-platforms.properties");
            }
            ArrayList arrayList = new ArrayList();
            int i10 = 1;
            while (true) {
                String property = properties.getProperty("platform." + i10);
                if (property == null) {
                    availablePlatforms = arrayList;
                    return arrayList;
                }
                arrayList.add(property);
                i10++;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static String getSevenZipJBindingVersion() {
        return SEVENZIPJBINDING_VERSION;
    }

    public static Version getSevenZipVersion() {
        ensureLibraryIsInitialized();
        Version version = new Version();
        version.major = nativeGetVersionMajor();
        version.minor = nativeGetVersionMinor();
        version.build = nativeGetVersionBuild();
        version.version = nativeGetVersionVersion();
        version.date = nativeGetVersionDate();
        version.copyright = nativeGetVersionCopyright();
        return version;
    }

    public static synchronized File[] getTemporaryArtifacts() {
        return temporaryArtifacts;
    }

    public static synchronized String getUsedPlatform() {
        return usedPlatform;
    }

    private static boolean hashMatched(File file, String str) throws SevenZipNativeInitializationException, NoSuchAlgorithmException, IOException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[131072];
                    while (true) {
                        try {
                            int i10 = fileInputStream.read(bArr);
                            if (i10 <= 0) {
                                break;
                            }
                            messageDigest.update(bArr, 0, i10);
                        } catch (IOException e7) {
                            throwInitException(e7, "Error reading from library file opened from the temp directory: '" + file.getAbsolutePath() + "'");
                            try {
                                fileInputStream.close();
                            } catch (IOException unused) {
                            }
                            return false;
                        }
                    }
                    boolean zEquals = byteArrayToHex(messageDigest.digest()).equals(str.trim().toLowerCase());
                    try {
                    } catch (IOException e10) {
                        throwInitException(e10, "Error closing library file from the temp directory (opened for reading): '" + file.getAbsolutePath() + "'");
                    }
                    return zEquals;
                } finally {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused2) {
                    }
                }
            } catch (IOException e11) {
                throwInitException(e11, "Error opening library file from the temp directory for reading: '" + file.getAbsolutePath() + "'");
                return false;
            }
        } catch (NoSuchAlgorithmException e12) {
            throwInitException(e12, "Error initializing SHA1 algorithm");
            return false;
        }
    }

    public static synchronized void initLoadedLibraries() {
        if (initializationSuccessful) {
            return;
        }
        autoInitializationWillOccur = false;
        nativeInitialization();
    }

    public static void initSevenZipFromPlatformJAR() {
        initSevenZipFromPlatformJARIntern(null, null);
    }

    private static synchronized void initSevenZipFromPlatformJARIntern(String str, File file) {
        try {
            autoInitializationWillOccur = false;
            if (initializationSuccessful) {
                return;
            }
            determineAndSetUsedPlatform(str);
            Properties propertiesLoadSevenZipJBindingLibProperties = loadSevenZipJBindingLibProperties();
            loadNativeLibraries(copyOrSkipLibraries(propertiesLoadSevenZipJBindingLibProperties, getOrCreateSevenZipJBindingTmpDir(createOrVerifyTmpDir(file), propertiesLoadSevenZipJBindingLibProperties)));
            nativeInitialization();
        } catch (SevenZipNativeInitializationException e7) {
            lastInitializationException = e7;
            throw e7;
        }
    }

    public static synchronized boolean isAutoInitializationWillOccur() {
        return autoInitializationWillOccur;
    }

    public static synchronized boolean isInitializedSuccessfully() {
        return initializationSuccessful;
    }

    private static void loadNativeLibraries(List<File> list) throws SevenZipNativeInitializationException {
        int size = list.size();
        while (true) {
            size--;
            if (size == -1) {
                return;
            }
            try {
                if (System.getProperty("java.vendor", "unknown").equals("The Android Project")) {
                    System.loadLibrary(list.get(size).getName());
                } else {
                    System.load(list.get(size).getAbsolutePath());
                }
            } catch (Throwable th2) {
                throw new SevenZipNativeInitializationException(b.A("7-Zip-JBinding initialization failed: Error loading native library: '", null, "'"), th2);
            }
        }
    }

    private static Properties loadSevenZipJBindingLibProperties() throws SevenZipNativeInitializationException, IOException {
        InputStream resourceAsStream;
        String strL = b.l(usedPlatform, "/", new StringBuilder("/"));
        if (System.getProperty("java.vendor", "unknown").equals("The Android Project")) {
            resourceAsStream = new ByteArrayInputStream(SEVENZIPJBINDING_LIB_PROPERTIES.getBytes());
        } else {
            resourceAsStream = SevenZip.class.getResourceAsStream(strL + SEVENZIPJBINDING_LIB_PROPERTIES_FILENAME);
        }
        if (resourceAsStream == null) {
            throwInitException(b.A("error loading property file '", strL, "sevenzipjbinding-lib.properties' from a jar-file 'sevenzipjbinding-<Platform>.jar'. Is the platform jar-file not on the class path?"));
        }
        Properties properties = new Properties();
        try {
            properties.load(resourceAsStream);
        } catch (IOException unused) {
            throwInitException("error loading property file 'sevenzipjbinding-lib.properties' from a jar-file 'sevenzipjbinding-<Platform>.jar'");
        }
        return properties;
    }

    private static native void nativeCreateArchive(OutArchiveImpl<?> outArchiveImpl, ArchiveFormat archiveFormat);

    private static native int nativeGetVersionBuild();

    private static native String nativeGetVersionCopyright();

    private static native String nativeGetVersionDate();

    private static native int nativeGetVersionMajor();

    private static native int nativeGetVersionMinor();

    private static native String nativeGetVersionVersion();

    /* JADX INFO: Access modifiers changed from: private */
    public static native String nativeInitSevenZipLibrary();

    private static void nativeInitialization() throws SevenZipNativeInitializationException {
        String property = System.getProperty(SYSTEM_PROPERTY_SEVEN_ZIP_NO_DO_PRIVILEGED_INITIALIZATION);
        final String[] strArr = new String[1];
        final Throwable[] thArr = new Throwable[1];
        if (property == null || property.trim().equals("0")) {
            AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: net.sf.sevenzipjbinding.SevenZip.1
                @Override // java.security.PrivilegedAction
                public Void run() {
                    try {
                        strArr[0] = SevenZip.nativeInitSevenZipLibrary();
                        return null;
                    } catch (Throwable th2) {
                        thArr[0] = th2;
                        return null;
                    }
                }
            });
        } else {
            strArr[0] = nativeInitSevenZipLibrary();
        }
        String str = strArr[0];
        if (str == null && thArr[0] == null) {
            initializationSuccessful = true;
            return;
        }
        if (str == null) {
            str = "No message";
        }
        SevenZipNativeInitializationException sevenZipNativeInitializationException = new SevenZipNativeInitializationException("Error initializing 7-Zip-JBinding: ".concat(str), thArr[0]);
        lastInitializationException = sevenZipNativeInitializationException;
        throw sevenZipNativeInitializationException;
    }

    private static native IInArchive nativeOpenArchive(ArchiveFormat archiveFormat, IInStream iInStream, IArchiveOpenCallback iArchiveOpenCallback);

    public static IInArchive openInArchive(ArchiveFormat archiveFormat, IInStream iInStream, IArchiveOpenCallback iArchiveOpenCallback) {
        ensureLibraryIsInitialized();
        if (iArchiveOpenCallback == null) {
            iArchiveOpenCallback = new DummyOpenArchiveCallback();
        }
        return archiveFormat != null ? callNativeOpenArchive(archiveFormat, iInStream, iArchiveOpenCallback) : callNativeOpenArchive(null, iInStream, iArchiveOpenCallback);
    }

    public static IOutCreateArchive<IOutItemAllFormats> openOutArchive(ArchiveFormat archiveFormat) {
        return openOutArchiveIntern(archiveFormat);
    }

    public static IOutCreateArchive7z openOutArchive7z() {
        return (IOutCreateArchive7z) openOutArchiveIntern(ArchiveFormat.SEVEN_ZIP);
    }

    public static IOutCreateArchiveBZip2 openOutArchiveBZip2() {
        return (IOutCreateArchiveBZip2) openOutArchiveIntern(ArchiveFormat.BZIP2);
    }

    public static IOutCreateArchiveGZip openOutArchiveGZip() {
        return (IOutCreateArchiveGZip) openOutArchiveIntern(ArchiveFormat.GZIP);
    }

    private static OutArchiveImpl<?> openOutArchiveIntern(ArchiveFormat archiveFormat) throws IllegalAccessException, InstantiationException {
        ensureLibraryIsInitialized();
        if (!archiveFormat.isOutArchiveSupported()) {
            throw new IllegalStateException("Archive format '" + archiveFormat + "' doesn't support archive creation.");
        }
        try {
            OutArchiveImpl<?> outArchiveImplNewInstance = archiveFormat.getOutArchiveImplementation().newInstance();
            nativeCreateArchive(outArchiveImplNewInstance, archiveFormat);
            return outArchiveImplNewInstance;
        } catch (Exception unused) {
            throw new IllegalStateException("Internal error: Can't create new instance of the class " + archiveFormat.getOutArchiveImplementation() + " using default constructor.");
        }
    }

    public static IOutCreateArchiveTar openOutArchiveTar() {
        return (IOutCreateArchiveTar) openOutArchiveIntern(ArchiveFormat.TAR);
    }

    public static IOutCreateArchiveZip openOutArchiveZip() {
        return (IOutCreateArchiveZip) openOutArchiveIntern(ArchiveFormat.ZIP);
    }

    private static void throwInitException(String str) throws SevenZipNativeInitializationException {
        throwInitException(null, str);
    }

    public static void initSevenZipFromPlatformJAR(File file) {
        initSevenZipFromPlatformJARIntern(null, file);
    }

    private static void throwInitException(Exception exc, String str) throws SevenZipNativeInitializationException {
        throw new SevenZipNativeInitializationException(b.A("Error loading SevenZipJBinding native library into JVM: ", str, " [You may also try different SevenZipJBinding initialization methods 'net.sf.sevenzipjbinding.SevenZip.init*()' in order to solve this problem] "), exc);
    }

    public static void initSevenZipFromPlatformJAR(String str, File file) {
        initSevenZipFromPlatformJARIntern(str, file);
    }

    public static void initSevenZipFromPlatformJAR(String str) {
        initSevenZipFromPlatformJARIntern(str, null);
    }

    public static IInArchive openInArchive(ArchiveFormat archiveFormat, IInStream iInStream, String str) {
        ensureLibraryIsInitialized();
        if (str == null) {
            return openInArchive(archiveFormat, iInStream);
        }
        return callNativeOpenArchive(archiveFormat, iInStream, new ArchiveOpenCryptoCallback(str));
    }

    public static IInArchive openInArchive(ArchiveFormat archiveFormat, IInStream iInStream) {
        ensureLibraryIsInitialized();
        return callNativeOpenArchive(archiveFormat, iInStream, new DummyOpenArchiveCallback());
    }
}
