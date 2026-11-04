package okhttp3.internal.io;

import fg.c;
import fg.c0;
import fg.r;
import fg.x;
import fg.z;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.logging.Logger;
import ue.d;

/* loaded from: classes.dex */
public interface FileSystem {
    public static final FileSystem SYSTEM = new FileSystem() { // from class: okhttp3.internal.io.FileSystem.1
        @Override // okhttp3.internal.io.FileSystem
        public x appendingSink(File file) {
            try {
                Logger logger = r.f5868a;
                d.e(file, "<this>");
                return new c(new FileOutputStream(file, true), 1, new c0());
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                Logger logger2 = r.f5868a;
                return new c(new FileOutputStream(file, true), 1, new c0());
            }
        }

        @Override // okhttp3.internal.io.FileSystem
        public void delete(File file) throws IOException {
            if (file.delete() || !file.exists()) {
                return;
            }
            throw new IOException("failed to delete " + file);
        }

        @Override // okhttp3.internal.io.FileSystem
        public void deleteContents(File file) throws IOException {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                throw new IOException("not a readable directory: " + file);
            }
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    deleteContents(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete " + file2);
                }
            }
        }

        @Override // okhttp3.internal.io.FileSystem
        public boolean exists(File file) {
            return file.exists();
        }

        @Override // okhttp3.internal.io.FileSystem
        public void rename(File file, File file2) throws IOException {
            delete(file2);
            if (file.renameTo(file2)) {
                return;
            }
            throw new IOException("failed to rename " + file + " to " + file2);
        }

        @Override // okhttp3.internal.io.FileSystem
        public x sink(File file) {
            try {
                Logger logger = r.f5868a;
                d.e(file, "<this>");
                return new c(new FileOutputStream(file, false), 1, new c0());
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                Logger logger2 = r.f5868a;
                return new c(new FileOutputStream(file, false), 1, new c0());
            }
        }

        @Override // okhttp3.internal.io.FileSystem
        public long size(File file) {
            return file.length();
        }

        @Override // okhttp3.internal.io.FileSystem
        public z source(File file) {
            Logger logger = r.f5868a;
            d.e(file, "<this>");
            return new fg.d(new FileInputStream(file), c0.NONE);
        }
    };

    x appendingSink(File file);

    void delete(File file);

    void deleteContents(File file);

    boolean exists(File file);

    void rename(File file, File file2);

    x sink(File file);

    long size(File file);

    z source(File file);
}
