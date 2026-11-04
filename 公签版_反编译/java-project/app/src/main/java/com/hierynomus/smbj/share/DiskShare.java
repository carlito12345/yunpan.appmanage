package com.hierynomus.smbj.share;

import com.hierynomus.msdtyp.AccessMask;
import com.hierynomus.msdtyp.SecurityDescriptor;
import com.hierynomus.msdtyp.SecurityInformation;
import com.hierynomus.mserref.NtStatus;
import com.hierynomus.msfscc.FileAttributes;
import com.hierynomus.msfscc.FileSystemInformationClass;
import com.hierynomus.msfscc.fileinformation.FileAllInformation;
import com.hierynomus.msfscc.fileinformation.FileDirectoryQueryableInformation;
import com.hierynomus.msfscc.fileinformation.FileDispositionInformation;
import com.hierynomus.msfscc.fileinformation.FileIdBothDirectoryInformation;
import com.hierynomus.msfscc.fileinformation.FileInformation;
import com.hierynomus.msfscc.fileinformation.FileInformationFactory;
import com.hierynomus.msfscc.fileinformation.FileQueryableInformation;
import com.hierynomus.msfscc.fileinformation.FileSettableInformation;
import com.hierynomus.msfscc.fileinformation.ShareInfo;
import com.hierynomus.msfscc.fileinformation.VolumeInfo;
import com.hierynomus.mssmb2.LeaseKey;
import com.hierynomus.mssmb2.SMB2CreateDisposition;
import com.hierynomus.mssmb2.SMB2CreateOptions;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMB2ImpersonationLevel;
import com.hierynomus.mssmb2.SMB2LeaseState;
import com.hierynomus.mssmb2.SMB2MessageCommandCode;
import com.hierynomus.mssmb2.SMB2OplockLevel;
import com.hierynomus.mssmb2.SMB2ShareAccess;
import com.hierynomus.mssmb2.SMBApiException;
import com.hierynomus.mssmb2.messages.SMB2CreateResponse;
import com.hierynomus.mssmb2.messages.SMB2QueryInfoRequest;
import com.hierynomus.mssmb2.messages.SMB2SetInfoRequest;
import com.hierynomus.mssmb2.messages.create.SMB2CreateContext;
import com.hierynomus.mssmb2.messages.create.SMB2LeaseCreateContext;
import com.hierynomus.mssmb2.messages.create.SMB2LeaseResponseContext;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.protocol.commons.buffer.Endian;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smbj.common.SMBRuntimeException;
import com.hierynomus.smbj.common.SmbPath;
import com.hierynomus.smbj.connection.ConnectionContext;
import com.hierynomus.smbj.connection.LeaseEntry;
import com.hierynomus.smbj.connection.LeaseManager;
import com.hierynomus.smbj.paths.PathResolveException;
import com.hierynomus.smbj.paths.PathResolver;
import com.hierynomus.smbj.session.Session;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class DiskShare extends Share {
    private final PathResolver resolver;
    private static final StatusHandler FILE_EXISTS_STATUS_HANDLER = new StatusHandler() { // from class: com.hierynomus.smbj.share.DiskShare.3
        @Override // com.hierynomus.smbj.share.StatusHandler
        public boolean isSuccess(long j10) {
            return j10 == NtStatus.STATUS_OBJECT_NAME_NOT_FOUND.getValue() || j10 == NtStatus.STATUS_OBJECT_PATH_NOT_FOUND.getValue() || j10 == NtStatus.STATUS_FILE_IS_A_DIRECTORY.getValue() || j10 == NtStatus.STATUS_DELETE_PENDING.getValue();
        }
    };
    private static final StatusHandler FOLDER_EXISTS_STATUS_HANDLER = new StatusHandler() { // from class: com.hierynomus.smbj.share.DiskShare.4
        @Override // com.hierynomus.smbj.share.StatusHandler
        public boolean isSuccess(long j10) {
            return j10 == NtStatus.STATUS_OBJECT_NAME_NOT_FOUND.getValue() || j10 == NtStatus.STATUS_OBJECT_PATH_NOT_FOUND.getValue() || j10 == NtStatus.STATUS_NOT_A_DIRECTORY.getValue() || j10 == NtStatus.STATUS_DELETE_PENDING.getValue();
        }
    };
    private static StatusHandler ALREADY_DELETED_STATUS_HANDLER = new StatusHandler() { // from class: com.hierynomus.smbj.share.DiskShare.5
        @Override // com.hierynomus.smbj.share.StatusHandler
        public boolean isSuccess(long j10) {
            return j10 == NtStatus.STATUS_DELETE_PENDING.getValue();
        }
    };

    public static class SMB2CreateResponseContext {
        final SMB2CreateResponse resp;
        final DiskShare share;
        final SmbPath target;

        public SMB2CreateResponseContext(SMB2CreateResponse sMB2CreateResponse, SmbPath smbPath, DiskShare diskShare) {
            this.resp = sMB2CreateResponse;
            this.target = smbPath;
            this.share = diskShare;
        }
    }

    public DiskShare(SmbPath smbPath, TreeConnect treeConnect, PathResolver pathResolver) {
        super(smbPath, treeConnect);
        this.resolver = pathResolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SMB2CreateResponseContext createFileAndResolve(final SmbPath smbPath, final SMB2ImpersonationLevel sMB2ImpersonationLevel, final Set<AccessMask> set, final Set<FileAttributes> set2, final Set<SMB2ShareAccess> set3, final SMB2CreateDisposition sMB2CreateDisposition, final Set<SMB2CreateOptions> set4, final SMB2OplockLevel sMB2OplockLevel, final List<SMB2CreateContext> list) {
        SMB2CreateResponse sMB2CreateResponseCreateFile = super.createFile(smbPath, sMB2ImpersonationLevel, set, set2, set3, sMB2CreateDisposition, set4, sMB2OplockLevel, list);
        try {
            try {
                SMB2CreateResponseContext sMB2CreateResponseContext = (SMB2CreateResponseContext) this.resolver.resolve(this.session, sMB2CreateResponseCreateFile, smbPath, new PathResolver.ResolveAction<SMB2CreateResponseContext>() { // from class: com.hierynomus.smbj.share.DiskShare.1
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.hierynomus.smbj.paths.PathResolver.ResolveAction
                    public SMB2CreateResponseContext apply(SmbPath smbPath2) {
                        DiskShare diskShareRerouteIfNeeded = DiskShare.this.rerouteIfNeeded(smbPath, smbPath2);
                        if (smbPath.equals(smbPath2)) {
                            return null;
                        }
                        return diskShareRerouteIfNeeded.createFileAndResolve(smbPath2, sMB2ImpersonationLevel, set, set2, set3, sMB2CreateDisposition, set4, sMB2OplockLevel, list);
                    }
                });
                if (sMB2CreateResponseContext != null) {
                    return sMB2CreateResponseContext;
                }
                try {
                    return new SMB2CreateResponseContext(sMB2CreateResponseCreateFile, smbPath, this);
                } catch (PathResolveException e7) {
                    e = e7;
                    throw new SMBApiException(e.getStatusCode(), SMB2MessageCommandCode.SMB2_CREATE, "Cannot resolve path " + smbPath, e);
                }
            } catch (PathResolveException e10) {
                e = e10;
            }
        } catch (PathResolveException e11) {
            e = e11;
        }
    }

    private boolean exists(String str, EnumSet<SMB2CreateOptions> enumSet, StatusHandler statusHandler) {
        try {
            DiskEntry diskEntryOpen = open(str, EnumSet.of(AccessMask.FILE_READ_ATTRIBUTES), EnumSet.of(FileAttributes.FILE_ATTRIBUTE_NORMAL), SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OPEN, enumSet);
            if (diskEntryOpen == null) {
                return true;
            }
            diskEntryOpen.close();
            return true;
        } catch (SMBApiException e7) {
            if (statusHandler.isSuccess(e7.getStatusCode())) {
                return false;
            }
            throw e7;
        }
    }

    private Directory openDirectoryWithLease(String str, Set<AccessMask> set, Set<FileAttributes> set2, Set<SMB2ShareAccess> set3, SMB2CreateDisposition sMB2CreateDisposition, Set<SMB2CreateOptions> set4) {
        LeaseKey leaseKeyLeaseKeyForExistingPath;
        LeaseManager leaseManager = this.session.getConnection().getLeaseManager();
        SmbPath smbPath = new SmbPath(this.smbPath, str);
        String path = smbPath.getPath() == null ? "" : smbPath.getPath();
        LeaseKey leaseKeyLeaseKeyForPath = leaseManager.leaseKeyForPath(path);
        SmbPath parent = smbPath.getParent();
        if (parent != null) {
            leaseKeyLeaseKeyForExistingPath = leaseManager.leaseKeyForExistingPath(parent.getPath() != null ? parent.getPath() : "");
        } else {
            leaseKeyLeaseKeyForExistingPath = null;
        }
        long handle = SMB2LeaseState.readHandle();
        SMB2CreateContext createContext = SMB2LeaseCreateContext.v2(leaseKeyLeaseKeyForPath, handle, leaseKeyLeaseKeyForExistingPath).toCreateContext();
        LeaseEntry byPath = leaseManager.getByPath(path);
        boolean z = (byPath == null || byPath.isBroken()) ? false : true;
        if (!z) {
            byPath = new LeaseEntry(leaseKeyLeaseKeyForPath, leaseKeyLeaseKeyForExistingPath, handle, path);
        }
        LeaseEntry leaseEntry = byPath;
        if (!z) {
            leaseManager.register(leaseEntry);
        }
        try {
            SMB2OplockLevel sMB2OplockLevel = SMB2OplockLevel.SMB2_OPLOCK_LEVEL_LEASE;
            LeaseEntry leaseEntry2 = leaseEntry;
            SMB2CreateResponseContext sMB2CreateResponseContextResolveAndCreateFile = resolveAndCreateFile(smbPath, null, set, set2, set3, sMB2CreateDisposition, set4, sMB2OplockLevel, Collections.singletonList(createContext));
            SMB2CreateResponse sMB2CreateResponse = sMB2CreateResponseContextResolveAndCreateFile.resp;
            try {
                SMB2LeaseResponseContext leaseResponseContext = sMB2CreateResponse.getLeaseResponseContext();
                if (sMB2CreateResponse.getOplockLevel() != sMB2OplockLevel || leaseResponseContext == null) {
                    if (!z) {
                        leaseManager.unregister(leaseKeyLeaseKeyForPath);
                    }
                    leaseEntry2 = null;
                } else {
                    leaseEntry2.setFileId(sMB2CreateResponse.getFileId());
                    leaseEntry2.setGrantedState(leaseResponseContext.getLeaseState());
                    leaseEntry2.setEpoch(leaseResponseContext.getEpoch());
                    leaseEntry2.setGranted(true);
                    leaseEntry2.setOwner(this.session, getTreeConnect().getTreeId(), getTreeConnect().getNegotiatedProtocol().getDialect());
                }
                return new Directory(sMB2CreateResponse.getFileId(), sMB2CreateResponseContextResolveAndCreateFile.share, sMB2CreateResponseContextResolveAndCreateFile.target, leaseEntry2);
            } catch (Buffer.BufferException e7) {
                throw new SMBRuntimeException("Failed to parse lease response context", e7);
            }
        } catch (RuntimeException e10) {
            if (!z) {
                leaseManager.unregister(leaseKeyLeaseKeyForPath);
            }
            throw e10;
        }
    }

    private Directory openLeasedCacheHandle(String str, Set<AccessMask> set) {
        if (set == null) {
            set = EnumSet.of(AccessMask.FILE_LIST_DIRECTORY, AccessMask.FILE_READ_ATTRIBUTES, AccessMask.FILE_READ_EA);
        }
        Directory directoryOpenDirectory = openDirectory(str, set, null, SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OPEN, null);
        LeaseEntry leaseEntry = directoryOpenDirectory.getLeaseEntry();
        if (leaseEntry != null && leaseEntry.isGranted() && SMB2LeaseState.isReadHandle(leaseEntry.getGrantedState())) {
            leaseEntry.setCacheDirectory(directoryOpenDirectory);
        }
        return directoryOpenDirectory;
    }

    private <I extends FileDirectoryQueryableInformation> List<I> openLeasedCacheHandleAndList(String str, Set<AccessMask> set, Class<I> cls, String str2) {
        Directory directoryOpenLeasedCacheHandle = openLeasedCacheHandle(str, set);
        try {
            return directoryOpenLeasedCacheHandle.list(cls, str2);
        } catch (RuntimeException e7) {
            LeaseEntry leaseEntry = directoryOpenLeasedCacheHandle.getLeaseEntry();
            if (leaseEntry != null) {
                leaseEntry.setCacheDirectory(null);
            }
            directoryOpenLeasedCacheHandle.closeSilently();
            throw e7;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DiskShare rerouteIfNeeded(SmbPath smbPath, SmbPath smbPath2) {
        Session nestedSession = this.session;
        if (!smbPath.isOnSameHost(smbPath2)) {
            nestedSession = nestedSession.getNestedSession(smbPath2);
        }
        return !smbPath.isOnSameShare(smbPath2) ? (DiskShare) nestedSession.connectShare(smbPath2.getShareName()) : this;
    }

    private SMB2CreateResponseContext resolveAndCreateFile(final SmbPath smbPath, final SMB2ImpersonationLevel sMB2ImpersonationLevel, final Set<AccessMask> set, final Set<FileAttributes> set2, final Set<SMB2ShareAccess> set3, final SMB2CreateDisposition sMB2CreateDisposition, final Set<SMB2CreateOptions> set4, final SMB2OplockLevel sMB2OplockLevel, final List<SMB2CreateContext> list) {
        try {
            return (SMB2CreateResponseContext) this.resolver.resolve(this.session, smbPath, new PathResolver.ResolveAction<SMB2CreateResponseContext>() { // from class: com.hierynomus.smbj.share.DiskShare.2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.hierynomus.smbj.paths.PathResolver.ResolveAction
                public SMB2CreateResponseContext apply(SmbPath smbPath2) {
                    return DiskShare.this.rerouteIfNeeded(smbPath, smbPath2).createFileAndResolve(smbPath2, sMB2ImpersonationLevel, set, set2, set3, sMB2CreateDisposition, set4, sMB2OplockLevel, list);
                }
            });
        } catch (PathResolveException e7) {
            throw new SMBApiException(e7.getStatus().getValue(), SMB2MessageCommandCode.SMB2_CREATE, "Cannot resolve path " + smbPath, e7);
        }
    }

    public void deleteOnClose(SMB2FileId sMB2FileId) {
        setFileInformation(sMB2FileId, (SMB2FileId) new FileDispositionInformation(true));
    }

    public boolean fileExists(String str) {
        return exists(str, EnumSet.of(SMB2CreateOptions.FILE_NON_DIRECTORY_FILE), FILE_EXISTS_STATUS_HANDLER);
    }

    public boolean folderExists(String str) {
        return exists(str, EnumSet.of(SMB2CreateOptions.FILE_DIRECTORY_FILE), FOLDER_EXISTS_STATUS_HANDLER);
    }

    public ConnectionContext getConnectionContext() {
        return this.session.getConnection().getConnectionContext();
    }

    @Override // com.hierynomus.smbj.share.Share
    public StatusHandler getCreateStatusHandler() {
        return this.resolver.statusHandler();
    }

    public DiskEntry getDiskEntry(SMB2CreateResponseContext sMB2CreateResponseContext) {
        SMB2CreateResponse sMB2CreateResponse = sMB2CreateResponseContext.resp;
        return sMB2CreateResponse.getFileAttributes().contains(FileAttributes.FILE_ATTRIBUTE_DIRECTORY) ? new Directory(sMB2CreateResponse.getFileId(), sMB2CreateResponseContext.share, sMB2CreateResponseContext.target) : new File(sMB2CreateResponse.getFileId(), sMB2CreateResponseContext.share, sMB2CreateResponseContext.target);
    }

    public FileAllInformation getFileInformation(String str) {
        return (FileAllInformation) getFileInformation(str, FileAllInformation.class);
    }

    public SecurityDescriptor getSecurityInfo(String str, Set<SecurityInformation> set) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        EnumSet enumSetOf = EnumSet.of(AccessMask.READ_CONTROL);
        if (set.contains(SecurityInformation.SACL_SECURITY_INFORMATION)) {
            enumSetOf.add(AccessMask.ACCESS_SYSTEM_SECURITY);
        }
        DiskEntry diskEntryOpen = open(str, enumSetOf, null, SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OPEN, null);
        try {
            SecurityDescriptor securityInformation = diskEntryOpen.getSecurityInformation(set);
            diskEntryOpen.close();
            return securityInformation;
        } catch (Throwable th2) {
            if (diskEntryOpen != null) {
                try {
                    diskEntryOpen.close();
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

    public ShareInfo getShareInformation() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Directory directoryOpenDirectory = openDirectory("", EnumSet.of(AccessMask.FILE_READ_ATTRIBUTES), null, SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OPEN, null);
        try {
            try {
                ShareInfo fsFullSizeInformation = ShareInfo.parseFsFullSizeInformation(new Buffer.PlainBuffer(queryInfo(directoryOpenDirectory.getFileId(), SMB2QueryInfoRequest.SMB2QueryInfoType.SMB2_0_INFO_FILESYSTEM, null, null, FileSystemInformationClass.FileFsFullSizeInformation).getOutputBuffer(), Endian.LE));
                directoryOpenDirectory.close();
                return fsFullSizeInformation;
            } catch (Buffer.BufferException e7) {
                throw new SMBRuntimeException(e7);
            }
        } catch (Throwable th2) {
            if (directoryOpenDirectory != null) {
                try {
                    directoryOpenDirectory.close();
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

    public VolumeInfo getVolumeInfo() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Directory directoryOpenDirectory = openDirectory("", EnumSet.of(AccessMask.FILE_READ_ATTRIBUTES), null, SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OPEN, null);
        try {
            try {
                VolumeInfo fileFsVolumeInformation = VolumeInfo.parseFileFsVolumeInformation(new Buffer.PlainBuffer(queryInfo(directoryOpenDirectory.getFileId(), SMB2QueryInfoRequest.SMB2QueryInfoType.SMB2_0_INFO_FILESYSTEM, null, null, FileSystemInformationClass.FileFsVolumeInformation).getOutputBuffer(), Endian.LE));
                directoryOpenDirectory.close();
                return fileFsVolumeInformation;
            } catch (Buffer.BufferException e7) {
                throw new SMBRuntimeException(e7);
            }
        } catch (Throwable th2) {
            if (directoryOpenDirectory != null) {
                try {
                    directoryOpenDirectory.close();
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

    public List<FileIdBothDirectoryInformation> list(String str) {
        return list(str, FileIdBothDirectoryInformation.class, null, null);
    }

    public void mkdir(String str) {
        openDirectory(str, EnumSet.of(AccessMask.FILE_LIST_DIRECTORY, AccessMask.FILE_ADD_SUBDIRECTORY), EnumSet.of(FileAttributes.FILE_ATTRIBUTE_DIRECTORY), SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_CREATE, EnumSet.of(SMB2CreateOptions.FILE_DIRECTORY_FILE)).close();
    }

    public DiskEntry open(String str, Set<AccessMask> set, Set<FileAttributes> set2, Set<SMB2ShareAccess> set3, SMB2CreateDisposition sMB2CreateDisposition, Set<SMB2CreateOptions> set4) {
        return getDiskEntry(resolveAndCreateFile(new SmbPath(this.smbPath, str), null, set, set2, set3, sMB2CreateDisposition, set4, SMB2OplockLevel.SMB2_OPLOCK_LEVEL_NONE, Collections.emptyList()));
    }

    public Directory openDirectory(String str, Set<AccessMask> set, Set<FileAttributes> set2, Set<SMB2ShareAccess> set3, SMB2CreateDisposition sMB2CreateDisposition, Set<SMB2CreateOptions> set4) {
        EnumSet enumSetCopyOf = set4 != null ? EnumSet.copyOf((Collection) set4) : EnumSet.noneOf(SMB2CreateOptions.class);
        enumSetCopyOf.add(SMB2CreateOptions.FILE_DIRECTORY_FILE);
        enumSetCopyOf.remove(SMB2CreateOptions.FILE_NON_DIRECTORY_FILE);
        EnumSet enumSetCopyOf2 = set2 != null ? EnumSet.copyOf((Collection) set2) : EnumSet.noneOf(FileAttributes.class);
        enumSetCopyOf2.add(FileAttributes.FILE_ATTRIBUTE_DIRECTORY);
        return getConnectionContext().supportsDirectoryLeasing() ? openDirectoryWithLease(str, set, enumSetCopyOf2, set3, sMB2CreateDisposition, enumSetCopyOf) : (Directory) open(str, set, enumSetCopyOf2, set3, sMB2CreateDisposition, enumSetCopyOf);
    }

    public File openFile(String str, Set<AccessMask> set, Set<FileAttributes> set2, Set<SMB2ShareAccess> set3, SMB2CreateDisposition sMB2CreateDisposition, Set<SMB2CreateOptions> set4) {
        EnumSet enumSetCopyOf = set4 != null ? EnumSet.copyOf((Collection) set4) : EnumSet.noneOf(SMB2CreateOptions.class);
        enumSetCopyOf.add(SMB2CreateOptions.FILE_NON_DIRECTORY_FILE);
        enumSetCopyOf.remove(SMB2CreateOptions.FILE_DIRECTORY_FILE);
        EnumSet enumSetCopyOf2 = set2 != null ? EnumSet.copyOf((Collection) set2) : EnumSet.noneOf(FileAttributes.class);
        enumSetCopyOf2.remove(FileAttributes.FILE_ATTRIBUTE_DIRECTORY);
        return (File) open(str, set, enumSetCopyOf2, set3, sMB2CreateDisposition, enumSetCopyOf);
    }

    public void rm(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            DiskEntry diskEntryOpen = open(str, EnumSet.of(AccessMask.DELETE), EnumSet.of(FileAttributes.FILE_ATTRIBUTE_NORMAL), EnumSet.of(SMB2ShareAccess.FILE_SHARE_DELETE, SMB2ShareAccess.FILE_SHARE_WRITE, SMB2ShareAccess.FILE_SHARE_READ), SMB2CreateDisposition.FILE_OPEN, EnumSet.of(SMB2CreateOptions.FILE_NON_DIRECTORY_FILE));
            try {
                diskEntryOpen.deleteOnClose();
                diskEntryOpen.close();
            } catch (Throwable th2) {
                if (diskEntryOpen != null) {
                    try {
                        diskEntryOpen.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                }
                throw th2;
            }
        } catch (SMBApiException e7) {
            if (!ALREADY_DELETED_STATUS_HANDLER.isSuccess(e7.getStatusCode())) {
                throw e7;
            }
        }
    }

    public void rmdir(String str, boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("rmdir: path should be non-null and non-empty");
        }
        try {
            if (!z) {
                DiskEntry diskEntryOpen = open(str, EnumSet.of(AccessMask.DELETE), EnumSet.of(FileAttributes.FILE_ATTRIBUTE_DIRECTORY), EnumSet.of(SMB2ShareAccess.FILE_SHARE_DELETE, SMB2ShareAccess.FILE_SHARE_WRITE, SMB2ShareAccess.FILE_SHARE_READ), SMB2CreateDisposition.FILE_OPEN, EnumSet.of(SMB2CreateOptions.FILE_DIRECTORY_FILE));
                try {
                    diskEntryOpen.deleteOnClose();
                    diskEntryOpen.close();
                    return;
                } catch (Throwable th2) {
                    if (diskEntryOpen != null) {
                        try {
                            diskEntryOpen.close();
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
            for (FileIdBothDirectoryInformation fileIdBothDirectoryInformation : list(str)) {
                if (!fileIdBothDirectoryInformation.getFileName().equals(".") && !fileIdBothDirectoryInformation.getFileName().equals("..")) {
                    String str2 = str + "\\" + fileIdBothDirectoryInformation.getFileName();
                    if (EnumWithValue.EnumUtils.isSet(fileIdBothDirectoryInformation.getFileAttributes(), FileAttributes.FILE_ATTRIBUTE_DIRECTORY)) {
                        rmdir(str2, true);
                    } else {
                        rm(str2);
                    }
                }
            }
            rmdir(str, false);
        } catch (SMBApiException e7) {
            if (!ALREADY_DELETED_STATUS_HANDLER.isSuccess(e7.getStatusCode())) {
                throw e7;
            }
        }
    }

    public <F extends FileSettableInformation> void setFileInformation(SMB2FileId sMB2FileId, F f10) {
        SMBBuffer sMBBuffer = new SMBBuffer();
        FileInformation.Encoder encoder = FileInformationFactory.getEncoder(f10);
        encoder.write(f10, sMBBuffer);
        setInfo(sMB2FileId, SMB2SetInfoRequest.SMB2InfoType.SMB2_0_INFO_FILE, null, encoder.getInformationClass(), sMBBuffer.getCompactData());
    }

    public void setSecurityInfo(String str, Set<SecurityInformation> set, SecurityDescriptor securityDescriptor) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        EnumSet enumSetNoneOf = EnumSet.noneOf(AccessMask.class);
        if (set.contains(SecurityInformation.SACL_SECURITY_INFORMATION)) {
            enumSetNoneOf.add(AccessMask.ACCESS_SYSTEM_SECURITY);
        }
        if (set.contains(SecurityInformation.OWNER_SECURITY_INFORMATION) || set.contains(SecurityInformation.GROUP_SECURITY_INFORMATION)) {
            enumSetNoneOf.add(AccessMask.WRITE_OWNER);
        }
        if (set.contains(SecurityInformation.DACL_SECURITY_INFORMATION)) {
            enumSetNoneOf.add(AccessMask.WRITE_DAC);
        }
        DiskEntry diskEntryOpen = open(str, enumSetNoneOf, null, SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OPEN, null);
        try {
            diskEntryOpen.setSecurityInformation(securityDescriptor, set);
            diskEntryOpen.close();
        } catch (Throwable th2) {
            if (diskEntryOpen != null) {
                try {
                    diskEntryOpen.close();
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

    public String toString() {
        return getClass().getSimpleName() + "[" + getSmbPath() + "]";
    }

    public <F extends FileQueryableInformation> F getFileInformation(String str, Class<F> cls) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        DiskEntry diskEntryOpen = open(str, EnumSet.of(AccessMask.FILE_READ_ATTRIBUTES, AccessMask.FILE_READ_EA), null, SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OPEN, null);
        try {
            F f10 = (F) diskEntryOpen.getFileInformation(cls);
            diskEntryOpen.close();
            return f10;
        } catch (Throwable th2) {
            if (diskEntryOpen != null) {
                try {
                    diskEntryOpen.close();
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

    public List<FileIdBothDirectoryInformation> list(String str, String str2) {
        return list(str, FileIdBothDirectoryInformation.class, str2, null);
    }

    public <I extends FileDirectoryQueryableInformation> List<I> list(String str, Class<I> cls) {
        return list(str, cls, null, null);
    }

    public <I extends FileDirectoryQueryableInformation> List<I> list(String str, Class<I> cls, String str2, EnumSet<AccessMask> enumSet) {
        List<I> listOpenLeasedCacheHandleAndList;
        if (getConnectionContext().supportsDirectoryLeasing() && LeasedDirectoryCache.isCacheable(str2)) {
            LeaseManager leaseManager = this.session.getConnection().getLeaseManager();
            SmbPath smbPath = new SmbPath(this.smbPath, str);
            String path = smbPath.getPath() == null ? "" : smbPath.getPath();
            LeaseEntry byPath = leaseManager.getByPath(path);
            if (byPath != null && byPath.isGranted() && !byPath.isBroken() && SMB2LeaseState.isReadHandle(byPath.getGrantedState())) {
                List<I> listServe = byPath.getCache().serve(path, cls, str2);
                if (listServe != null) {
                    return listServe;
                }
                Directory cacheDirectory = byPath.getCacheDirectory();
                if (cacheDirectory != null) {
                    try {
                        listOpenLeasedCacheHandleAndList = cacheDirectory.list(cls, str2);
                    } catch (SMBApiException e7) {
                        if (e7.getStatusCode() == NtStatus.STATUS_FILE_CLOSED.getValue()) {
                            byPath.setCacheDirectory(null);
                            listOpenLeasedCacheHandleAndList = openLeasedCacheHandleAndList(str, enumSet, cls, str2);
                        } else {
                            throw e7;
                        }
                    }
                } else {
                    listOpenLeasedCacheHandleAndList = openLeasedCacheHandleAndList(str, enumSet, cls, str2);
                }
                LeaseEntry byPath2 = leaseManager.getByPath(path);
                if (byPath2 != null) {
                    byPath2.getCache().populate(path, cls, str2, listOpenLeasedCacheHandleAndList);
                }
                return listOpenLeasedCacheHandleAndList;
            }
            Directory directoryOpenLeasedCacheHandle = openLeasedCacheHandle(str, enumSet);
            LeaseEntry leaseEntry = directoryOpenLeasedCacheHandle.getLeaseEntry();
            if (leaseEntry != null && leaseEntry.isGranted() && SMB2LeaseState.isReadHandle(leaseEntry.getGrantedState())) {
                try {
                    List<I> list = directoryOpenLeasedCacheHandle.list(cls, str2);
                    leaseEntry.getCache().populate(path, cls, str2, list);
                    return list;
                } catch (RuntimeException e10) {
                    leaseEntry.setCacheDirectory(null);
                    throw e10;
                }
            }
            try {
                return directoryOpenLeasedCacheHandle.list(cls, str2);
            } finally {
                directoryOpenLeasedCacheHandle.closeSilently();
            }
        }
        if (enumSet == null) {
            enumSet = EnumSet.of(AccessMask.FILE_LIST_DIRECTORY, AccessMask.FILE_READ_ATTRIBUTES, AccessMask.FILE_READ_EA);
        }
        Directory directoryOpenDirectory = openDirectory(str, enumSet, null, SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OPEN, null);
        try {
            List<I> list2 = directoryOpenDirectory.list(cls, str2);
            directoryOpenDirectory.closeSilently();
            return list2;
        } catch (Throwable th2) {
            if (directoryOpenDirectory != null) {
                directoryOpenDirectory.closeSilently();
            }
            throw th2;
        }
    }

    public FileAllInformation getFileInformation(SMB2FileId sMB2FileId) {
        return (FileAllInformation) getFileInformation(sMB2FileId, FileAllInformation.class);
    }

    public <F extends FileQueryableInformation> F getFileInformation(SMB2FileId sMB2FileId, Class<F> cls) {
        FileInformation.Decoder decoder = FileInformationFactory.getDecoder(cls);
        try {
            return (F) decoder.read(new Buffer.PlainBuffer(queryInfo(sMB2FileId, SMB2QueryInfoRequest.SMB2QueryInfoType.SMB2_0_INFO_FILE, null, decoder.getInformationClass(), null).getOutputBuffer(), Endian.LE));
        } catch (Buffer.BufferException e7) {
            throw new SMBRuntimeException(e7);
        }
    }

    public SecurityDescriptor getSecurityInfo(SMB2FileId sMB2FileId, Set<SecurityInformation> set) {
        try {
            return SecurityDescriptor.read(new SMBBuffer(queryInfo(sMB2FileId, SMB2QueryInfoRequest.SMB2QueryInfoType.SMB2_0_INFO_SECURITY, set, null, null).getOutputBuffer()));
        } catch (Buffer.BufferException e7) {
            throw new SMBRuntimeException(e7);
        }
    }

    public <F extends FileSettableInformation> void setFileInformation(String str, F f10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        DiskEntry diskEntryOpen = open(str, EnumSet.of(AccessMask.FILE_WRITE_ATTRIBUTES, AccessMask.FILE_WRITE_EA), null, SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OPEN, null);
        try {
            diskEntryOpen.setFileInformation(f10);
            diskEntryOpen.close();
        } catch (Throwable th2) {
            if (diskEntryOpen != null) {
                try {
                    diskEntryOpen.close();
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

    public void setSecurityInfo(SMB2FileId sMB2FileId, Set<SecurityInformation> set, SecurityDescriptor securityDescriptor) {
        SMBBuffer sMBBuffer = new SMBBuffer();
        securityDescriptor.write(sMBBuffer);
        setInfo(sMB2FileId, SMB2SetInfoRequest.SMB2InfoType.SMB2_0_INFO_SECURITY, set, null, sMBBuffer.getCompactData());
    }
}
