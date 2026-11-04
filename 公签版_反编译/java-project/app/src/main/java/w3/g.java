package w3;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.ZipException;

/* loaded from: classes.dex */
public abstract class g {
    public static f a(RandomAccessFile randomAccessFile) throws IOException {
        long length = randomAccessFile.length();
        long j10 = length - 22;
        if (j10 < 0) {
            throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
        }
        long j11 = length - 65558;
        long j12 = j11 >= 0 ? j11 : 0L;
        int iReverseBytes = Integer.reverseBytes(101010256);
        do {
            randomAccessFile.seek(j10);
            if (randomAccessFile.readInt() == iReverseBytes) {
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                f fVar = new f();
                fVar.f17442b = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                fVar.f17441a = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                return fVar;
            }
            j10--;
        } while (j10 >= j12);
        throw new ZipException("End Of Central Directory signature not found");
    }
}
