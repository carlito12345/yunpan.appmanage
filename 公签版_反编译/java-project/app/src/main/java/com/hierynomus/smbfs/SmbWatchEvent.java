package com.hierynomus.smbfs;

import com.hierynomus.msfscc.FileNotifyAction;
import com.hierynomus.msfscc.directory.FileNotifyInformation;
import java.nio.file.Path;
import java.nio.file.StandardWatchEventKinds;
import java.nio.file.WatchEvent;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
class SmbWatchEvent implements WatchEvent<Path> {
    private final SmbFileSystem fileSystem;
    private final FileNotifyInformation info;

    /* renamed from: com.hierynomus.smbfs.SmbWatchEvent$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$hierynomus$msfscc$FileNotifyAction;

        static {
            int[] iArr = new int[FileNotifyAction.values().length];
            $SwitchMap$com$hierynomus$msfscc$FileNotifyAction = iArr;
            try {
                iArr[FileNotifyAction.FILE_ACTION_RENAMED_NEW_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$hierynomus$msfscc$FileNotifyAction[FileNotifyAction.FILE_ACTION_ADDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$hierynomus$msfscc$FileNotifyAction[FileNotifyAction.FILE_ACTION_MODIFIED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$hierynomus$msfscc$FileNotifyAction[FileNotifyAction.FILE_ACTION_REMOVED_BY_DELETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$hierynomus$msfscc$FileNotifyAction[FileNotifyAction.FILE_ACTION_RENAMED_OLD_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$hierynomus$msfscc$FileNotifyAction[FileNotifyAction.FILE_ACTION_REMOVED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public SmbWatchEvent(SmbFileSystem smbFileSystem, FileNotifyInformation fileNotifyInformation) {
        this.fileSystem = smbFileSystem;
        this.info = fileNotifyInformation;
    }

    @Override // java.nio.file.WatchEvent
    public int count() {
        return 1;
    }

    @Override // java.nio.file.WatchEvent
    public WatchEvent.Kind<Path> kind() {
        switch (AnonymousClass1.$SwitchMap$com$hierynomus$msfscc$FileNotifyAction[this.info.getAction().ordinal()]) {
            case 1:
            case 2:
                return StandardWatchEventKinds.ENTRY_CREATE;
            case 3:
                return StandardWatchEventKinds.ENTRY_MODIFY;
            case 4:
            case 5:
            case 6:
                return StandardWatchEventKinds.ENTRY_DELETE;
            default:
                return StandardWatchEventKinds.ENTRY_MODIFY;
        }
    }

    @Override // java.nio.file.WatchEvent
    public Path context() {
        return SmbPath.of(this.fileSystem, (SmbPath) null, (List<String>) Collections.singletonList(this.info.getFileName()));
    }
}
