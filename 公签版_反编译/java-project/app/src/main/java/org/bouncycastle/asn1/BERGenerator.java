package org.bouncycastle.asn1;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public abstract class BERGenerator extends ASN1Generator {
    private boolean _isExplicit;
    private int _tagNo;
    private boolean _tagged;

    public BERGenerator(OutputStream outputStream) {
        super(outputStream);
        this._tagged = false;
    }

    private void writeHdr(int i10) throws IOException {
        this._out.write(i10);
        this._out.write(128);
    }

    @Override // org.bouncycastle.asn1.ASN1Generator
    public OutputStream getRawOutputStream() {
        return this._out;
    }

    public void writeBEREnd() throws IOException {
        this._out.write(0);
        this._out.write(0);
        if (this._tagged && this._isExplicit) {
            this._out.write(0);
            this._out.write(0);
        }
    }

    public void writeBERHeader(int i10) throws IOException {
        if (this._tagged) {
            int i11 = this._tagNo;
            int i12 = i11 | 128;
            if (this._isExplicit) {
                writeHdr(i11 | CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ);
            } else {
                if ((i10 & 32) == 0) {
                    writeHdr(i12);
                    return;
                }
                i10 = i11 | CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ;
            }
        }
        writeHdr(i10);
    }

    public BERGenerator(OutputStream outputStream, int i10, boolean z) {
        super(outputStream);
        this._tagged = true;
        this._isExplicit = z;
        this._tagNo = i10;
    }
}
