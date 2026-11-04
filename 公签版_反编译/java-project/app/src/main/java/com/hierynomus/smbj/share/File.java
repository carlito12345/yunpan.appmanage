package com.hierynomus.smbj.share;

import com.hierynomus.mserref.NtStatus;
import com.hierynomus.msfscc.fileinformation.FileEndOfFileInformation;
import com.hierynomus.msfscc.fileinformation.FileStandardInformation;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMBApiException;
import com.hierynomus.mssmb2.copy.CopyChunkRequest;
import com.hierynomus.mssmb2.copy.CopyChunkResponse;
import com.hierynomus.mssmb2.messages.SMB2IoctlResponse;
import com.hierynomus.mssmb2.messages.SMB2ReadResponse;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smbj.ProgressListener;
import com.hierynomus.smbj.common.SMBRuntimeException;
import com.hierynomus.smbj.common.SmbPath;
import com.hierynomus.smbj.io.ArrayByteChunkProvider;
import com.hierynomus.smbj.io.ByteBufferByteChunkProvider;
import com.hierynomus.smbj.io.ByteChunkProvider;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class File extends DiskEntry {
    private static final StatusHandler COPY_CHUNK_ALLOWED_STATUS_VALUES = new StatusHandler() { // from class: com.hierynomus.smbj.share.File.1
        @Override // com.hierynomus.smbj.share.StatusHandler
        public boolean isSuccess(long j10) {
            return j10 == NtStatus.STATUS_SUCCESS.getValue() || j10 == NtStatus.STATUS_INVALID_PARAMETER.getValue();
        }
    };
    private static final int FSCTL_SRV_REQUEST_RESUME_KEY = 1310840;
    private final SMB2Writer writer;

    public File(SMB2FileId sMB2FileId, DiskShare diskShare, SmbPath smbPath) {
        super(sMB2FileId, diskShare, smbPath);
        this.writer = new SMB2Writer(diskShare, sMB2FileId, smbPath.toUncPath());
    }

    private static SMB2IoctlResponse copyChunk(Share share, File file, CopyChunkRequest copyChunkRequest) {
        SMBBuffer sMBBuffer = new SMBBuffer();
        copyChunkRequest.write(sMBBuffer);
        byte[] compactData = sMBBuffer.getCompactData();
        SMB2IoctlResponse sMB2IoctlResponse = (SMB2IoctlResponse) share.receive(share.ioctlAsync(file.fileId, CopyChunkRequest.getCtlCode(), true, new ArrayByteChunkProvider(compactData, 0, compactData.length, 0L), 12), "IOCTL", file.fileId, COPY_CHUNK_ALLOWED_STATUS_VALUES, share.getReadTimeout());
        if (sMB2IoctlResponse.getError() == null) {
            return sMB2IoctlResponse;
        }
        throw new SMBApiException(sMB2IoctlResponse.getHeader(), "FSCTL_SRV_COPYCHUNK failed");
    }

    private static List<CopyChunkRequest.Chunk> createCopyChunks(long j10, long j11, long j12, long j13, long j14, long j15) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        long j16 = j10;
        long j17 = j11;
        long j18 = j12;
        int i11 = 0;
        while (j18 > 0 && i10 < j13) {
            long j19 = i11;
            if (j19 >= j15) {
                break;
            }
            long jMin = Math.min(j18, j14);
            arrayList.add(new CopyChunkRequest.Chunk(j16, j17, jMin));
            i10++;
            i11 = (int) (j19 + jMin);
            j16 += jMin;
            j17 += jMin;
            j18 -= jMin;
        }
        return arrayList;
    }

    private byte[] getResumeKey() {
        return Arrays.copyOf(ioctl(FSCTL_SRV_REQUEST_RESUME_KEY, true, new byte[0], 0, 0, 32), 24);
    }

    private static void remoteFileCopy(File file, long j10, File file2, long j11, long j12) {
        long j13;
        byte[] resumeKey = file.getResumeKey();
        long j14 = j12;
        long jMin = 1048576;
        long chunksWritten = 16;
        long j15 = j10;
        long j16 = j11;
        while (j14 > 0) {
            long j17 = j16;
            SMB2IoctlResponse sMB2IoctlResponseCopyChunk = copyChunk(file.share, file2, new CopyChunkRequest(resumeKey, createCopyChunks(j15, j16, j14, chunksWritten, jMin, 16777216L)));
            CopyChunkResponse copyChunkResponse = new CopyChunkResponse();
            copyChunkResponse.read(new SMBBuffer(sMB2IoctlResponseCopyChunk.getOutputBuffer()));
            if (sMB2IoctlResponseCopyChunk.getHeader().getStatusCode() == NtStatus.STATUS_INVALID_PARAMETER.getValue()) {
                chunksWritten = copyChunkResponse.getChunksWritten();
                jMin = Math.min(copyChunkResponse.getChunkBytesWritten(), copyChunkResponse.getTotalBytesWritten());
                j13 = j17;
            } else {
                long totalBytesWritten = copyChunkResponse.getTotalBytesWritten();
                j15 += totalBytesWritten;
                j13 = j17 + totalBytesWritten;
                j14 -= totalBytesWritten;
            }
            j16 = j13;
        }
    }

    public InputStream getInputStream() {
        return getInputStream(null);
    }

    public long getLength() {
        return ((FileStandardInformation) getFileInformation(FileStandardInformation.class)).getEndOfFile();
    }

    public OutputStream getOutputStream() {
        return getOutputStream(false);
    }

    public int read(byte[] bArr, long j10) {
        return read(bArr, j10, 0, bArr.length);
    }

    public Future<SMB2ReadResponse> readAsync(long j10, int i10) {
        return ((DiskShare) this.share).readAsync(this.fileId, j10, i10);
    }

    public void remoteCopyTo(File file) {
        if (file.share != this.share) {
            throw new SMBRuntimeException("Remote copy is only possible between files on the same server");
        }
        remoteCopyTo(0L, file, 0L, ((FileStandardInformation) getFileInformation(FileStandardInformation.class)).getEndOfFile());
    }

    public void setLength(long j10) {
        setFileInformation(new FileEndOfFileInformation(j10));
    }

    public String toString() {
        return "File{fileId=" + this.fileId + ", fileName='" + this.name.toUncPath() + "'}";
    }

    public long write(byte[] bArr, long j10) {
        return this.writer.write(bArr, j10);
    }

    public Future<Long> writeAsync(byte[] bArr, long j10, int i10, int i11) {
        return this.writer.writeAsync(bArr, j10, i10, i11);
    }

    public InputStream getInputStream(ProgressListener progressListener) {
        return new FileInputStream(this, ((DiskShare) this.share).getReadBufferSize(), ((DiskShare) this.share).getReadTimeout(), progressListener);
    }

    public OutputStream getOutputStream(boolean z) {
        return getOutputStream(null, z);
    }

    public int read(byte[] bArr, long j10, int i10, int i11) {
        SMB2ReadResponse sMB2ReadResponse = ((DiskShare) this.share).read(this.fileId, j10, i11);
        if (sMB2ReadResponse.getHeader().getStatusCode() == NtStatus.STATUS_END_OF_FILE.getValue()) {
            return -1;
        }
        byte[] data = sMB2ReadResponse.getData();
        int iMin = Math.min(i11, data.length);
        System.arraycopy(data, 0, bArr, i10, iMin);
        return iMin;
    }

    public long write(byte[] bArr, long j10, int i10, int i11) {
        return this.writer.write(bArr, j10, i10, i11);
    }

    public Future<Long> writeAsync(ByteChunkProvider byteChunkProvider) {
        return this.writer.writeAsync(byteChunkProvider);
    }

    public OutputStream getOutputStream(ProgressListener progressListener) {
        return getOutputStream(progressListener, false);
    }

    public long write(ByteChunkProvider byteChunkProvider) {
        return this.writer.write(byteChunkProvider);
    }

    public OutputStream getOutputStream(ProgressListener progressListener, boolean z) {
        return this.writer.getOutputStream(progressListener, z ? ((FileStandardInformation) getFileInformation(FileStandardInformation.class)).getEndOfFile() : 0L);
    }

    public long write(ByteChunkProvider byteChunkProvider, ProgressListener progressListener) {
        return this.writer.write(byteChunkProvider, progressListener);
    }

    public void remoteCopyTo(long j10, File file, long j11, long j12) {
        if (file.share == this.share) {
            remoteFileCopy(this, j10, file, j11, j12);
            return;
        }
        throw new SMBRuntimeException("Remote copy is only possible between files on the same server");
    }

    public long write(ByteBuffer byteBuffer, long j10) {
        return write(new ByteBufferByteChunkProvider(byteBuffer, j10));
    }

    public void read(OutputStream outputStream) throws IOException {
        read(outputStream, (ProgressListener) null);
    }

    public void read(OutputStream outputStream, ProgressListener progressListener) throws IOException {
        InputStream inputStream = getInputStream(progressListener);
        byte[] bArr = new byte[((DiskShare) this.share).getReadBufferSize()];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 != -1) {
                outputStream.write(bArr, 0, i10);
            } else {
                inputStream.close();
                return;
            }
        }
    }

    public long read(ByteBuffer byteBuffer, long j10) {
        int iRemaining = byteBuffer.remaining();
        SMB2ReadResponse sMB2ReadResponse = ((DiskShare) this.share).read(this.fileId, j10, iRemaining);
        if (sMB2ReadResponse.getHeader().getStatusCode() == NtStatus.STATUS_END_OF_FILE.getValue()) {
            return -1L;
        }
        byte[] data = sMB2ReadResponse.getData();
        int iMin = Math.min(iRemaining, data.length);
        byteBuffer.put(data, 0, iMin);
        return iMin;
    }
}
