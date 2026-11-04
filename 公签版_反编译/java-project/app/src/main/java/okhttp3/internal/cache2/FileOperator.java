package okhttp3.internal.cache2;

import fg.i;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* loaded from: classes.dex */
final class FileOperator {
    private final FileChannel fileChannel;

    public FileOperator(FileChannel fileChannel) {
        this.fileChannel = fileChannel;
    }

    public void read(long j10, i iVar, long j11) throws IOException {
        if (j11 < 0) {
            throw new IndexOutOfBoundsException();
        }
        while (j11 > 0) {
            long jTransferTo = this.fileChannel.transferTo(j10, j11, iVar);
            j10 += jTransferTo;
            j11 -= jTransferTo;
        }
    }

    public void write(long j10, i iVar, long j11) throws IOException {
        if (j11 < 0 || j11 > iVar.f5853b) {
            throw new IndexOutOfBoundsException();
        }
        long j12 = j10;
        long j13 = j11;
        while (j13 > 0) {
            long jTransferFrom = this.fileChannel.transferFrom(iVar, j12, j13);
            j12 += jTransferFrom;
            j13 -= jTransferFrom;
        }
    }
}
