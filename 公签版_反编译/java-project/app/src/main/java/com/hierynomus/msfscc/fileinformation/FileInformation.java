package com.hierynomus.msfscc.fileinformation;

import com.hierynomus.msfscc.FileInformationClass;
import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
public interface FileInformation {

    public interface Codec<F extends FileInformation> extends Encoder<F>, Decoder<F> {
    }

    public interface Decoder<F extends FileInformation> {
        FileInformationClass getInformationClass();

        F read(Buffer<?> buffer);
    }

    public interface Encoder<F extends FileInformation> {
        FileInformationClass getInformationClass();

        void write(F f10, Buffer<?> buffer);
    }
}
