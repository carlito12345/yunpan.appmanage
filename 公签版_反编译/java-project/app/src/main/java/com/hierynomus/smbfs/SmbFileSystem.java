package com.hierynomus.smbfs;

import androidx.media3.exoplayer.video.i;
import com.hierynomus.msdtyp.AccessMask;
import com.hierynomus.mserref.NtStatus;
import com.hierynomus.msfscc.fileinformation.FileIdBothDirectoryInformation;
import com.hierynomus.mssmb2.SMB2CreateDisposition;
import com.hierynomus.mssmb2.SMB2CreateOptions;
import com.hierynomus.mssmb2.SMBApiException;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smbj.common.SMBRuntimeException;
import com.hierynomus.smbj.share.Directory;
import com.hierynomus.smbj.share.DiskShare;
import com.hierynomus.smbj.share.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.AccessMode;
import java.nio.file.DirectoryStream;
import java.nio.file.FileStore;
import java.nio.file.FileSystem;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.PathMatcher;
import java.nio.file.StandardOpenOption;
import java.nio.file.WatchService;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.UserPrincipalLookupService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class SmbFileSystem extends FileSystem {
    private static final String SEPARATOR = "\\";
    private final SmbFileSystemProvider provider;
    private final String share;
    private final ShareSource shares;
    private final SmbPath root = SmbPath.root(this);
    private volatile boolean open = true;

    public SmbFileSystem(SmbFileSystemProvider smbFileSystemProvider, ShareSource shareSource, String str) {
        this.provider = smbFileSystemProvider;
        this.shares = shareSource;
        this.share = str;
    }

    private static Set<AccessMask> accessMasks(Set<? extends OpenOption> set) {
        boolean zContains = set.contains(StandardOpenOption.READ);
        boolean zContains2 = set.contains(StandardOpenOption.APPEND);
        boolean z = !zContains2 && set.contains(StandardOpenOption.WRITE);
        if (set.contains(StandardOpenOption.DELETE_ON_CLOSE)) {
            throw ToBeImplementedException.toBeImplemented();
        }
        EnumSet enumSetNoneOf = EnumSet.noneOf(AccessMask.class);
        if (zContains2) {
            enumSetNoneOf.add(AccessMask.FILE_APPEND_DATA);
        } else if (z) {
            enumSetNoneOf.add(AccessMask.FILE_WRITE_DATA);
        }
        if (zContains || (!z && !zContains2)) {
            enumSetNoneOf.add(AccessMask.FILE_READ_DATA);
        }
        return enumSetNoneOf;
    }

    private String combine(String str, String[] strArr) {
        if (strArr.length == 0) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(str);
        for (String str2 : strArr) {
            if (!str2.isEmpty()) {
                if (sb2.length() > 0) {
                    sb2.append(SmbPath.SEPARATOR);
                }
                sb2.append(str2);
            }
        }
        return sb2.toString();
    }

    private static SMB2CreateDisposition createDisposition(Set<? extends OpenOption> set) {
        return set.contains(StandardOpenOption.CREATE_NEW) ? SMB2CreateDisposition.FILE_CREATE : (set.contains(StandardOpenOption.WRITE) && set.contains(StandardOpenOption.TRUNCATE_EXISTING)) ? SMB2CreateDisposition.FILE_OVERWRITE_IF : set.contains(StandardOpenOption.CREATE) ? SMB2CreateDisposition.FILE_OPEN_IF : SMB2CreateDisposition.FILE_OPEN;
    }

    private static Set<SMB2CreateOptions> createOptions(Set<? extends OpenOption> set) {
        if (set.contains(StandardOpenOption.DSYNC) || set.contains(StandardOpenOption.SYNC)) {
            return EnumSet.of(SMB2CreateOptions.FILE_WRITE_THROUGH);
        }
        return null;
    }

    public void checkAccess(Path path, AccessMode... accessModeArr) throws IOException {
        if (accessModeArr.length > 0) {
            throw ToBeImplementedException.toBeImplemented();
        }
        try {
            this.shares.getShare(this.share).getFileInformation(path.toString());
        } catch (SMBApiException e7) {
            if (e7.getStatus() != NtStatus.STATUS_OBJECT_PATH_NOT_FOUND && e7.getStatus() != NtStatus.STATUS_OBJECT_NAME_NOT_FOUND) {
                throw new IOException(e7);
            }
            throw new NoSuchFileException(path.toString());
        }
    }

    @Override // java.nio.file.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        ShareSource shareSource = this.shares;
        try {
            this.open = false;
            this.provider.removeFileSystem(this);
            if (shareSource != null) {
                shareSource.close();
            }
        } catch (Throwable th2) {
            if (shareSource != null) {
                try {
                    shareSource.close();
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

    public void copy(Path path, Path path2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IOException, IllegalArgumentException, InvocationTargetException {
        Set setSingleton = Collections.singleton(StandardOpenOption.READ);
        HashSet hashSet = new HashSet(Arrays.asList(StandardOpenOption.WRITE, StandardOpenOption.CREATE_NEW));
        DiskShare share = this.shares.getShare(this.share);
        try {
            File fileOpenFile = share.openFile(path.toString(), accessMasks(setSingleton), null, null, createDisposition(setSingleton), createOptions(setSingleton));
            try {
                File fileOpenFile2 = share.openFile(path2.toString(), accessMasks(hashSet), null, null, createDisposition(hashSet), createOptions(hashSet));
                try {
                    fileOpenFile.remoteCopyTo(fileOpenFile2);
                    if (fileOpenFile2 != null) {
                        fileOpenFile2.close();
                    }
                    fileOpenFile.close();
                } finally {
                }
            } finally {
            }
        } catch (Buffer.BufferException e7) {
            throw new IOException(e7);
        }
    }

    public void createDirectory(Path path, FileAttribute<?>[] fileAttributeArr) throws IOException {
        EnumSet enumSetOf = EnumSet.of(AccessMask.FILE_LIST_DIRECTORY, AccessMask.FILE_ADD_SUBDIRECTORY);
        try {
            Directory directoryOpenDirectory = this.shares.getShare(this.share).openDirectory(path.toString(), enumSetOf, null, null, SMB2CreateDisposition.FILE_CREATE, null);
            if (directoryOpenDirectory != null) {
                directoryOpenDirectory.close();
            }
        } catch (SMBApiException e7) {
            throw new IOException(e7);
        }
    }

    public void delete(SmbPath smbPath) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        File fileOpenFile = this.shares.getShare(this.share).openFile(smbPath.toString(), EnumSet.of(AccessMask.DELETE), null, null, null, null);
        try {
            fileOpenFile.deleteOnClose();
            fileOpenFile.close();
        } catch (Throwable th2) {
            if (fileOpenFile != null) {
                try {
                    fileOpenFile.close();
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

    @Override // java.nio.file.FileSystem
    public Iterable<FileStore> getFileStores() {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.file.FileSystem
    public PathMatcher getPathMatcher(String str) {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.file.FileSystem
    public Iterable<Path> getRootDirectories() {
        return Collections.singletonList(this.root);
    }

    @Override // java.nio.file.FileSystem
    public String getSeparator() {
        return SEPARATOR;
    }

    @Override // java.nio.file.FileSystem
    public UserPrincipalLookupService getUserPrincipalLookupService() {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.file.FileSystem
    public boolean isOpen() {
        return this.open;
    }

    @Override // java.nio.file.FileSystem
    public boolean isReadOnly() {
        return false;
    }

    public void move(SmbPath smbPath, SmbPath smbPath2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        File fileOpenFile = this.shares.getShare(this.share).openFile(smbPath.toString(), EnumSet.of(AccessMask.FILE_WRITE_ATTRIBUTES), null, null, null, null);
        try {
            fileOpenFile.rename(smbPath2.toString());
            fileOpenFile.close();
        } catch (Throwable th2) {
            if (fileOpenFile != null) {
                try {
                    fileOpenFile.close();
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

    public SeekableByteChannel newByteChannel(Path path, Set<? extends OpenOption> set, FileAttribute<?>[] fileAttributeArr) {
        File fileOpenFile = this.shares.getShare(this.share).openFile(path.toString(), accessMasks(set), null, null, createDisposition(set), createOptions(set));
        return new SmbFileChannel(fileOpenFile, set.contains(StandardOpenOption.APPEND) ? fileOpenFile.getLength() : 0L);
    }

    public DirectoryStream<Path> newDirectoryStream(Path path, DirectoryStream.Filter<? super Path> filter) {
        DiskShare share = this.shares.getShare(this.share);
        ArrayList arrayList = new ArrayList();
        Iterator<FileIdBothDirectoryInformation> it = share.list(path.toString()).iterator();
        while (it.hasNext()) {
            String fileName = it.next().getFileName();
            if (!fileName.equals(".") && !fileName.equals("..")) {
                Path pathResolve = path.resolve(fileName);
                if (filter.accept(pathResolve)) {
                    arrayList.add(pathResolve);
                }
            }
        }
        return new SmbDirectoryStream(arrayList);
    }

    @Override // java.nio.file.FileSystem
    public WatchService newWatchService() throws IOException {
        try {
            return new SmbWatchService(this.shares.getShare(this.share), this);
        } catch (SMBRuntimeException e7) {
            throw new IOException("Can't connect share", e7);
        }
    }

    public <A extends BasicFileAttributes> A readAttributes(Path path, Class<A> cls) throws IOException {
        if (cls != i.b()) {
            throw new UnsupportedOperationException(cls.getName());
        }
        try {
            return (A) i.k(cls.cast(new SmbFileAttributes(this.shares.getShare(this.share).getFileInformation(path.toString()))));
        } catch (SMBApiException e7) {
            throw new IOException(e7);
        }
    }

    public SmbPath root() {
        return this.root;
    }

    public String share() {
        return this.share;
    }

    @Override // java.nio.file.FileSystem
    public Set<String> supportedFileAttributeViews() {
        throw ToBeImplementedException.toBeImplemented();
    }

    @Override // java.nio.file.FileSystem
    public SmbPath getPath(String str, String... strArr) {
        String strReplaceAll = combine(str, strArr).replaceAll("/", "\\\\");
        return strReplaceAll.equals(SEPARATOR) ? this.root : strReplaceAll.isEmpty() ? SmbPath.of(this, (SmbPath) null, (List<String>) Collections.emptyList()) : strReplaceAll.startsWith(SEPARATOR) ? SmbPath.parse(this, this.root, strReplaceAll.substring(1)) : SmbPath.parse(this, null, strReplaceAll);
    }

    @Override // java.nio.file.FileSystem
    public SmbFileSystemProvider provider() {
        return this.provider;
    }
}
