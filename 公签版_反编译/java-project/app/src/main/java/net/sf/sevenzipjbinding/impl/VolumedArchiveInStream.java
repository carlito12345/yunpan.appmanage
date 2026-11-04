package net.sf.sevenzipjbinding.impl;

import android.support.v4.media.session.a;
import g.b;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
import net.sf.sevenzipjbinding.IArchiveOpenVolumeCallback;
import net.sf.sevenzipjbinding.IInStream;
import net.sf.sevenzipjbinding.PropID;
import net.sf.sevenzipjbinding.SevenZipException;

/* loaded from: classes.dex */
public class VolumedArchiveInStream implements IInStream {
    private static final String SEVEN_ZIP_FIRST_VOLUME_POSTFIX = ".7z.001";
    private long absoluteLength;
    private long absoluteOffset;
    private final IArchiveOpenVolumeCallback archiveOpenVolumeCallback;
    private IInStream currentInStream;
    private int currentIndex;
    private long currentVolumeLength;
    private long currentVolumeOffset;
    private String cuttedVolumeFilename;
    private List<Long> volumePositions;

    public VolumedArchiveInStream(IArchiveOpenVolumeCallback iArchiveOpenVolumeCallback) {
        this((String) iArchiveOpenVolumeCallback.getProperty(PropID.NAME), iArchiveOpenVolumeCallback);
    }

    private void openVolume(int i10, boolean z) {
        if (this.currentIndex == i10) {
            return;
        }
        for (int size = this.volumePositions.size(); size < i10 && this.absoluteLength == -1; size++) {
            openVolume(size, false);
        }
        if (this.absoluteLength == -1 || this.volumePositions.size() > i10) {
            IInStream stream = this.archiveOpenVolumeCallback.getStream(this.cuttedVolumeFilename + MessageFormat.format("{0,number,000}", Integer.valueOf(i10)));
            if (stream == null) {
                List<Long> list = this.volumePositions;
                this.absoluteLength = list.get(list.size() - 1).longValue();
                return;
            }
            this.currentInStream = stream;
            if (this.volumePositions.size() == i10) {
                long jSeek = this.currentInStream.seek(0L, 2);
                this.currentVolumeLength = jSeek;
                if (jSeek == 0) {
                    throw new RuntimeException(b.i("Volume ", i10, " is empty"));
                }
                List<Long> list2 = this.volumePositions;
                list2.add(Long.valueOf(list2.get(i10 - 1).longValue() + this.currentVolumeLength));
                if (z) {
                    this.currentInStream.seek(0L, 0);
                }
            } else {
                this.currentVolumeLength = this.volumePositions.get(i10).longValue() - this.volumePositions.get(i10 - 1).longValue();
            }
            if (z) {
                this.currentVolumeOffset = 0L;
                this.absoluteOffset = this.volumePositions.get(i10 - 1).longValue();
            }
            this.currentIndex = i10;
        }
    }

    private void openVolumeToAbsoluteOffset() {
        int size = this.volumePositions.size() - 1;
        long j10 = this.absoluteLength;
        if (j10 == -1 || this.absoluteOffset < j10) {
            while (this.volumePositions.get(size).longValue() > this.absoluteOffset) {
                size--;
            }
            if (size < this.volumePositions.size() - 1) {
                openVolume(size + 1, false);
                return;
            }
            do {
                size++;
                openVolume(size, false);
                long j11 = this.absoluteLength;
                if (j11 != -1 && this.absoluteOffset >= j11) {
                    return;
                }
            } while (this.volumePositions.get(size).longValue() <= this.absoluteOffset);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new RuntimeException("close() method not supported. The user should implement its own caching and closing stratagies within the IArchiveOpenVolumeCallback.getStream() implementation.");
    }

    @Override // net.sf.sevenzipjbinding.ISequentialInStream
    public synchronized int read(byte[] bArr) {
        long j10 = this.absoluteLength;
        if (j10 != -1 && this.absoluteOffset >= j10) {
            return 0;
        }
        int i10 = this.currentInStream.read(bArr);
        long j11 = i10;
        this.absoluteOffset += j11;
        long j12 = this.currentVolumeOffset + j11;
        this.currentVolumeOffset = j12;
        if (j12 >= this.currentVolumeLength) {
            openVolume(this.currentIndex + 1, true);
        }
        return i10;
    }

    @Override // net.sf.sevenzipjbinding.ISeekableStream
    public synchronized long seek(long j10, int i10) {
        boolean z;
        try {
            if (i10 == 0) {
                z = false;
            } else if (i10 == 1) {
                j10 += this.absoluteOffset;
                z = false;
            } else {
                if (i10 != 2) {
                    throw new RuntimeException("Seek: unknown origin: " + i10);
                }
                if (this.absoluteLength == -1) {
                    openVolume(Integer.MAX_VALUE, false);
                    z = true;
                } else {
                    z = false;
                }
                j10 += this.absoluteLength;
            }
            if (j10 == this.absoluteOffset && !z) {
                return j10;
            }
            this.absoluteOffset = j10;
            openVolumeToAbsoluteOffset();
            long j11 = this.absoluteLength;
            if (j11 != -1 && j11 <= this.absoluteOffset) {
                this.absoluteOffset = j11;
                return j11;
            }
            long jLongValue = this.absoluteOffset - this.volumePositions.get(this.currentIndex - 1).longValue();
            this.currentVolumeOffset = jLongValue;
            this.currentInStream.seek(jLongValue, 0);
            return j10;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public VolumedArchiveInStream(String str, IArchiveOpenVolumeCallback iArchiveOpenVolumeCallback) throws SevenZipException {
        this.absoluteLength = -1L;
        this.currentIndex = -1;
        ArrayList arrayList = new ArrayList();
        this.volumePositions = arrayList;
        this.archiveOpenVolumeCallback = iArchiveOpenVolumeCallback;
        arrayList.add(0L);
        if (!str.endsWith(SEVEN_ZIP_FIRST_VOLUME_POSTFIX)) {
            throw new SevenZipException(b.A("The first 7z volume filename '", str, "' don't ends with the postfix: '.7z.001'. Can't proceed"));
        }
        this.cuttedVolumeFilename = a.l(3, 0, str);
        openVolume(1, true);
    }
}
