package com.hierynomus.smbfs;

import com.hierynomus.msdtyp.AccessMask;
import com.hierynomus.msfscc.directory.FileNotifyInformation;
import com.hierynomus.mssmb2.SMB2CompletionFilter;
import com.hierynomus.mssmb2.SMB2CreateDisposition;
import com.hierynomus.mssmb2.SMB2ShareAccess;
import com.hierynomus.mssmb2.messages.SMB2ChangeNotifyResponse;
import com.hierynomus.smbj.share.Directory;
import com.hierynomus.smbj.share.DiskShare;
import java.nio.file.ClosedWatchServiceException;
import java.nio.file.WatchEvent;
import java.nio.file.WatchKey;
import java.nio.file.Watchable;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
class SmbWatchKey implements WatchKey {
    private volatile Directory directory;
    private final DiskShare diskShare;
    private volatile Future<SMB2ChangeNotifyResponse> future;
    private final SmbPath path;
    private final SmbWatchService watchService;
    private final List<WatchEvent<?>> events = new CopyOnWriteArrayList();
    private final AtomicBoolean valid = new AtomicBoolean(true);
    private final AtomicBoolean signalled = new AtomicBoolean(false);

    public SmbWatchKey(SmbPath smbPath, SmbWatchService smbWatchService) {
        this.path = smbPath;
        this.watchService = smbWatchService;
        DiskShare share = smbWatchService.getShare();
        this.diskShare = share;
        if (!share.isConnected()) {
            throw new ClosedWatchServiceException();
        }
        arm();
    }

    private void arm() {
        this.directory = this.diskShare.openDirectory(this.path.toString(), EnumSet.of(AccessMask.FILE_LIST_DIRECTORY, AccessMask.FILE_READ_ATTRIBUTES, AccessMask.FILE_READ_EA), null, SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OPEN, null);
        this.future = this.directory.watchAsync(EnumSet.allOf(SMB2CompletionFilter.class), true);
    }

    private void harvest(Future<SMB2ChangeNotifyResponse> future) {
        try {
            Iterator<FileNotifyInformation> it = future.get().getFileNotifyInfoList().iterator();
            while (it.hasNext()) {
                this.events.add(new SmbWatchEvent(this.watchService.getFileSystem(), it.next()));
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        } catch (ExecutionException unused2) {
            cancel();
        }
    }

    @Override // java.nio.file.WatchKey
    public void cancel() {
        if (this.valid.compareAndSet(true, false)) {
            Future<SMB2ChangeNotifyResponse> future = this.future;
            if (future != null) {
                future.cancel(true);
            }
            Directory directory = this.directory;
            if (directory != null) {
                directory.closeSilently();
            }
            this.watchService.unregister(this);
        }
    }

    public boolean isReady() {
        Future<SMB2ChangeNotifyResponse> future = this.future;
        if (!this.valid.get() || future == null || !future.isDone() || !this.signalled.compareAndSet(false, true)) {
            return false;
        }
        harvest(future);
        return true;
    }

    @Override // java.nio.file.WatchKey
    public boolean isValid() {
        return this.valid.get();
    }

    @Override // java.nio.file.WatchKey
    public List<WatchEvent<?>> pollEvents() {
        ArrayList arrayList = new ArrayList(this.events);
        this.events.clear();
        return arrayList;
    }

    @Override // java.nio.file.WatchKey
    public boolean reset() {
        if (!this.valid.get()) {
            return false;
        }
        if (!this.signalled.compareAndSet(true, false)) {
            return this.valid.get();
        }
        this.events.clear();
        if (this.diskShare.isConnected()) {
            arm();
            return true;
        }
        cancel();
        return false;
    }

    @Override // java.nio.file.WatchKey
    public Watchable watchable() {
        return this.path;
    }
}
