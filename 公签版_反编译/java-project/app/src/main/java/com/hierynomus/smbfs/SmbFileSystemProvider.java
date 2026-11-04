package com.hierynomus.smbfs;

import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.auth.AuthenticationContext;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URI;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.AccessMode;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileStore;
import java.nio.file.FileSystem;
import java.nio.file.FileSystemAlreadyExistsException;
import java.nio.file.FileSystemNotFoundException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileAttributeView;
import java.nio.file.spi.FileSystemProvider;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class SmbFileSystemProvider extends FileSystemProvider {
    public static final String DFS_ENABLED_PROPERTY = "smbfs.dfsEnabled";
    public static final String DOMAIN_PROPERTY = "smbfs.domain";
    public static final String PASSWORD_PROPERTY = "smbfs.password";
    private static final String SCHEME = "smb";
    public static final String USERNAME_PROPERTY = "smbfs.username";
    private final Factory factory;
    private final Map<String, SmbFileSystem> fileSystems;

    public interface Factory {
        SmbFileSystem create(SmbFileSystemProvider smbFileSystemProvider, String str, int i10, AuthenticationContext authenticationContext, String str2, boolean z);
    }

    public static class FactoryImpl implements Factory {
        private FactoryImpl() {
        }

        @Override // com.hierynomus.smbfs.SmbFileSystemProvider.Factory
        public SmbFileSystem create(SmbFileSystemProvider smbFileSystemProvider, String str, int i10, AuthenticationContext authenticationContext, String str2, boolean z) {
            return new SmbFileSystem(smbFileSystemProvider, new ShareSourceImpl(new SMBClient(SmbConfig.builder().withDfsEnabled(z).build()), str, i10, authenticationContext), str2);
        }
    }

    public SmbFileSystemProvider() {
        this(new FactoryImpl());
    }

    private AuthenticationContext createAuthenticationContext(URI uri, Map<String, ?> map) {
        AuthenticationContext authenticationContextSplitUserInfo = splitUserInfo(userInfo(uri));
        return new AuthenticationContext(extractUser(authenticationContextSplitUserInfo, map), extractPassword(authenticationContextSplitUserInfo, map), extractDomain(authenticationContextSplitUserInfo, map));
    }

    private boolean extractDfsEnabled(Map<String, ?> map) {
        if (!map.containsKey(DFS_ENABLED_PROPERTY)) {
            return false;
        }
        Object obj = map.get(DFS_ENABLED_PROPERTY);
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof String) {
            return Boolean.parseBoolean((String) obj);
        }
        throw new IllegalArgumentException("smbfs.dfsEnabled must be a Boolean or String");
    }

    private String extractDomain(AuthenticationContext authenticationContext, Map<String, ?> map) {
        return map.containsKey(DOMAIN_PROPERTY) ? (String) map.get(DOMAIN_PROPERTY) : authenticationContext.getDomain();
    }

    private String extractHost(URI uri) {
        String host = uri.getHost();
        if (host == null || host.isEmpty()) {
            throw new InvalidShareException(uri.toString());
        }
        return host;
    }

    private char[] extractPassword(AuthenticationContext authenticationContext, Map<String, ?> map) {
        if (!map.containsKey(PASSWORD_PROPERTY)) {
            return authenticationContext.getPassword();
        }
        Object obj = map.get(PASSWORD_PROPERTY);
        if (obj instanceof char[]) {
            return (char[]) obj;
        }
        if (obj instanceof String) {
            return ((String) obj).toCharArray();
        }
        throw new IllegalArgumentException("smbfs.password must be a String or char[]");
    }

    private String extractShareName(URI uri) {
        String path = uri.getPath();
        if (path != null && !path.isEmpty()) {
            String[] strArrSplit = path.split("/");
            if (strArrSplit.length > 1) {
                return strArrSplit[1];
            }
        }
        throw new InvalidShareException(uri.toString());
    }

    private String extractUser(AuthenticationContext authenticationContext, Map<String, ?> map) {
        return map.containsKey(USERNAME_PROPERTY) ? (String) map.get(USERNAME_PROPERTY) : authenticationContext.getUsername();
    }

    private String getKey(URI uri) {
        String strUserInfo = userInfo(uri);
        String strExtractHost = extractHost(uri);
        String strExtractShareName = extractShareName(uri);
        int iLastIndexOf = strUserInfo.lastIndexOf(58);
        if (iLastIndexOf >= 0) {
            strUserInfo = strUserInfo.substring(0, iLastIndexOf);
        }
        return strUserInfo + "@" + strExtractHost + "/" + strExtractShareName;
    }

    private AuthenticationContext splitUserInfo(String str) {
        String strSubstring;
        char[] charArray = new char[0];
        int iLastIndexOf = str.lastIndexOf(58);
        if (iLastIndexOf >= 0) {
            charArray = str.substring(iLastIndexOf + 1).trim().toCharArray();
            str = str.substring(0, iLastIndexOf);
        }
        int iLastIndexOf2 = str.lastIndexOf(59);
        if (iLastIndexOf2 >= 0) {
            strSubstring = str.substring(0, iLastIndexOf2);
            str = str.substring(iLastIndexOf2 + 1);
        } else {
            strSubstring = null;
        }
        return new AuthenticationContext(str, charArray, strSubstring);
    }

    private static String userInfo(URI uri) {
        String userInfo = uri.getUserInfo();
        return userInfo == null ? "" : userInfo;
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public void checkAccess(Path path, AccessMode... accessModeArr) throws IOException {
        SmbPath.requireSmbPath(path).getFileSystem().checkAccess(path, accessModeArr);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public void copy(Path path, Path path2, CopyOption... copyOptionArr) throws IllegalAccessException, NoSuchMethodException, SecurityException, IOException, IllegalArgumentException, InvocationTargetException {
        Path pathRequireSmbPath = SmbPath.requireSmbPath(path);
        SmbPath smbPathRequireSmbPath = SmbPath.requireSmbPath(path2);
        SmbFileSystem fileSystem = pathRequireSmbPath.getFileSystem();
        if (fileSystem == smbPathRequireSmbPath.getFileSystem()) {
            if (copyOptionArr.length > 0) {
                throw ToBeImplementedException.toBeImplemented();
            }
            fileSystem.copy(pathRequireSmbPath, smbPathRequireSmbPath);
            return;
        }
        InputStream inputStreamNewInputStream = Files.newInputStream(path, new OpenOption[0]);
        try {
            Files.copy(inputStreamNewInputStream, path2, copyOptionArr);
            if (inputStreamNewInputStream != null) {
                inputStreamNewInputStream.close();
            }
        } catch (Throwable th2) {
            if (inputStreamNewInputStream != null) {
                try {
                    inputStreamNewInputStream.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
            }
            throw th2;
        }
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public void createDirectory(Path path, FileAttribute<?>... fileAttributeArr) throws IOException {
        SmbPath smbPathRequireSmbPath = SmbPath.requireSmbPath(path);
        if (fileAttributeArr.length > 0) {
            throw ToBeImplementedException.toBeImplemented();
        }
        smbPathRequireSmbPath.getFileSystem().createDirectory(path, fileAttributeArr);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public void delete(Path path) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        SmbPath smbPathRequireSmbPath = SmbPath.requireSmbPath(path);
        smbPathRequireSmbPath.getFileSystem().delete(smbPathRequireSmbPath);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public <V extends FileAttributeView> V getFileAttributeView(Path path, Class<V> cls, LinkOption... linkOptionArr) {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public FileStore getFileStore(Path path) {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public String getScheme() {
        return SCHEME;
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public boolean isHidden(Path path) {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public boolean isSameFile(Path path, Path path2) {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public void move(Path path, Path path2, CopyOption... copyOptionArr) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        SmbPath smbPathRequireSmbPath = SmbPath.requireSmbPath(path);
        SmbPath smbPathRequireSmbPath2 = SmbPath.requireSmbPath(path2);
        SmbFileSystem fileSystem = smbPathRequireSmbPath.getFileSystem();
        if (fileSystem == smbPathRequireSmbPath2.getFileSystem()) {
            if (copyOptionArr.length > 0) {
                throw ToBeImplementedException.toBeImplemented();
            }
            fileSystem.move(smbPathRequireSmbPath, smbPathRequireSmbPath2);
            return;
        }
        InputStream inputStreamNewInputStream = Files.newInputStream(path, new OpenOption[0]);
        try {
            Files.copy(inputStreamNewInputStream, path2, copyOptionArr);
            if (inputStreamNewInputStream != null) {
                inputStreamNewInputStream.close();
            }
            fileSystem.delete(smbPathRequireSmbPath);
        } catch (Throwable th2) {
            if (inputStreamNewInputStream != null) {
                try {
                    inputStreamNewInputStream.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
            }
            throw th2;
        }
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public SeekableByteChannel newByteChannel(Path path, Set<? extends OpenOption> set, FileAttribute<?>... fileAttributeArr) {
        return SmbPath.requireSmbPath(path).getFileSystem().newByteChannel(path, set, fileAttributeArr);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public DirectoryStream<Path> newDirectoryStream(Path path, DirectoryStream.Filter<? super Path> filter) {
        return SmbPath.requireSmbPath(path).getFileSystem().newDirectoryStream(path, filter);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public /* bridge */ /* synthetic */ FileSystem newFileSystem(URI uri, Map map) {
        return newFileSystem(uri, (Map<String, ?>) map);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public <A extends BasicFileAttributes> A readAttributes(Path path, Class<A> cls, LinkOption... linkOptionArr) {
        return (A) SmbPath.requireSmbPath(path).getFileSystem().readAttributes(path, cls);
    }

    public void removeFileSystem(SmbFileSystem smbFileSystem) {
        synchronized (this.fileSystems) {
            try {
                for (Map.Entry<String, SmbFileSystem> entry : this.fileSystems.entrySet()) {
                    if (entry.getValue() == smbFileSystem) {
                        this.fileSystems.remove(entry.getKey());
                        return;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public void setAttribute(Path path, String str, Object obj, LinkOption... linkOptionArr) {
        throw ToBeImplementedException.toBeImplemented();
    }

    public SmbFileSystemProvider(Factory factory) {
        this.fileSystems = new HashMap();
        this.factory = factory;
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public SmbFileSystem getFileSystem(URI uri) {
        SmbFileSystem smbFileSystem;
        String key = getKey(uri);
        synchronized (this.fileSystems) {
            try {
                if (!this.fileSystems.containsKey(key)) {
                    throw new FileSystemNotFoundException(uri.toString());
                }
                smbFileSystem = this.fileSystems.get(key);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return smbFileSystem;
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public SmbPath getPath(URI uri) {
        String path = uri.getPath();
        SmbFileSystem fileSystem = getFileSystem(uri);
        String strSubstring = path.substring(fileSystem.share().length() + 1);
        return (strSubstring.isEmpty() || strSubstring.equals("/")) ? fileSystem.root() : fileSystem.getPath(strSubstring, new String[0]);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public SmbFileSystem newFileSystem(URI uri, Map<String, ?> map) {
        SmbFileSystem smbFileSystemCreate;
        String key = getKey(uri);
        synchronized (this.fileSystems) {
            try {
                if (this.fileSystems.containsKey(key)) {
                    throw new FileSystemAlreadyExistsException(key);
                }
                AuthenticationContext authenticationContextCreateAuthenticationContext = createAuthenticationContext(uri, map);
                int port = uri.getPort();
                smbFileSystemCreate = this.factory.create(this, extractHost(uri), port < 0 ? SMBClient.DEFAULT_PORT : port, authenticationContextCreateAuthenticationContext, extractShareName(uri), extractDfsEnabled(map));
                this.fileSystems.put(key, smbFileSystemCreate);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return smbFileSystemCreate;
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public Map<String, Object> readAttributes(Path path, String str, LinkOption... linkOptionArr) {
        throw ToBeImplementedException.toBeImplemented();
    }
}
