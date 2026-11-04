package com.hierynomus.smbj.utils;

import com.hierynomus.msdtyp.AccessMask;
import com.hierynomus.msfscc.FileAttributes;
import com.hierynomus.mssmb2.SMB2CreateDisposition;
import com.hierynomus.mssmb2.SMB2CreateOptions;
import com.hierynomus.mssmb2.SMB2ShareAccess;
import com.hierynomus.smbj.common.SmbPath;
import com.hierynomus.smbj.io.InputStreamByteChunkProvider;
import com.hierynomus.smbj.share.DiskShare;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.EnumSet;

/* loaded from: classes.dex */
public class SmbFiles {
    public static long copy(File file, DiskShare diskShare, String str, boolean z) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        if (file == null || !file.exists() || !file.canRead() || !file.isFile()) {
            return 0L;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long jWrite = write(fileInputStream, diskShare, str, z);
            fileInputStream.close();
            return jWrite;
        } catch (Throwable th2) {
            try {
                fileInputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    public static long write(InputStream inputStream, DiskShare diskShare, String str, boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (str == null || inputStream == null) {
            return 0L;
        }
        com.hierynomus.smbj.share.File fileOpenFile = diskShare.openFile(str, EnumSet.of(AccessMask.GENERIC_WRITE), EnumSet.of(FileAttributes.FILE_ATTRIBUTE_NORMAL), EnumSet.of(SMB2ShareAccess.FILE_SHARE_WRITE), z ? SMB2CreateDisposition.FILE_OVERWRITE_IF : SMB2CreateDisposition.FILE_CREATE, EnumSet.noneOf(SMB2CreateOptions.class));
        try {
            long jWrite = fileOpenFile.write(new InputStreamByteChunkProvider(inputStream));
            fileOpenFile.close();
            return jWrite;
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

    public void mkdirs(DiskShare diskShare, String str) {
        mkdirs(diskShare, new SmbPath(diskShare.getSmbPath(), str));
    }

    public void mkdirs(DiskShare diskShare, SmbPath smbPath) {
        if (diskShare.folderExists(smbPath.getPath())) {
            return;
        }
        mkdirs(diskShare, smbPath.getParent());
        diskShare.mkdir(smbPath.getPath());
    }
}
