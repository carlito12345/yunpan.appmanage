package com.rapid7.client.dcerpc.transport;

import bh.a;
import com.rapid7.client.dcerpc.Interface;
import com.rapid7.client.dcerpc.PDUType;
import com.rapid7.client.dcerpc.PFCFlag;
import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.Transport;
import com.rapid7.client.dcerpc.messages.BindRequest;
import com.rapid7.client.dcerpc.messages.BindResponse;
import com.rapid7.client.dcerpc.messages.Request;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.messages.Response;
import com.rapid7.client.dcerpc.transport.exceptions.RPCFaultException;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.rmi.UnmarshalException;
import java.util.EnumSet;
import java.util.concurrent.atomic.AtomicInteger;
import ta.q;

/* loaded from: classes.dex */
public abstract class RPCTransport implements Transport {
    protected static final int DEFAULT_MAX_RECV_FRAG = 16384;
    protected static final int DEFAULT_MAX_XMIT_FRAG = 16384;
    private final AtomicInteger callID = new AtomicInteger();
    private int maxXmitFrag = 16384;
    private int maxRecvFrag = 16384;

    public void bind(Interface r5, Interface r62) throws IOException {
        BindRequest bindRequest = new BindRequest(16384, 16384, r5, r62);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PacketOutput packetOutput = new PacketOutput(byteArrayOutputStream);
        bindRequest.setCallID(getCallID());
        bindRequest.setPFCFlags(EnumSet.of(PFCFlag.FIRST_FRAGMENT, PFCFlag.LAST_FRAGMENT));
        bindRequest.marshal(packetOutput);
        byte[] bArr = new byte[getMaxXmitFrag()];
        PacketInput packetInput = new PacketInput(new ByteArrayInputStream(bArr, 0, transact(byteArrayOutputStream.toByteArray(), bArr)));
        BindResponse bindResponse = new BindResponse();
        bindResponse.unmarshal(packetInput);
        if (!bindResponse.isACK()) {
            throw new IOException(q.l("BIND ", r5.getName(), " (", r5.getRepr(), ") failed."));
        }
        setMaxXmitFrag(bindResponse.getMaxXmitFrag());
        setMaxRecvFrag(bindResponse.getMaxRecvFrag());
    }

    public <T extends RequestResponse> T call(RequestCall<T> requestCall) throws UnmarshalException, IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PacketOutput packetOutput = new PacketOutput(byteArrayOutputStream);
        Request request = new Request();
        request.setCallID(getCallID());
        request.setPFCFlags(EnumSet.of(PFCFlag.FIRST_FRAGMENT, PFCFlag.LAST_FRAGMENT));
        request.setOpNum(requestCall.getOpNum());
        request.setStub(requestCall.getStub());
        request.marshal(packetOutput);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byte[] bArr = new byte[getMaxXmitFrag()];
        a aVar = new a();
        aVar.f2816a = transact(byteArray, bArr);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        Response response = new Response();
        while (true) {
            response.unmarshal(new PacketInput(new ByteArrayInputStream(bArr, 0, aVar.f2816a)));
            byteArrayOutputStream2.write(response.getStub());
            if (response.getPFCFlags().contains(PFCFlag.LAST_FRAGMENT)) {
                break;
            }
            aVar.f2816a = read(bArr);
        }
        PacketInput packetInput = new PacketInput(new ByteArrayInputStream(byteArrayOutputStream2.toByteArray()));
        PDUType pDUType = response.getPDUType();
        PDUType pDUType2 = PDUType.RESPONSE;
        if (pDUType == pDUType2) {
            T t10 = (T) requestCall.getResponseObject();
            t10.unmarshal(packetInput);
            return t10;
        }
        if (response.getPDUType() == PDUType.FAULT || response.getPDUType() == PDUType.REJECT) {
            throw RPCFaultException.read(packetInput);
        }
        throw new IOException("Expected PDU " + pDUType2 + " but got: " + response.getPDUType());
    }

    public int getCallID() {
        return this.callID.getAndIncrement();
    }

    public int getMaxRecvFrag() {
        return this.maxRecvFrag;
    }

    public int getMaxXmitFrag() {
        return this.maxXmitFrag;
    }

    public void setMaxRecvFrag(int i10) {
        this.maxRecvFrag = i10;
    }

    public void setMaxXmitFrag(int i10) {
        this.maxXmitFrag = i10;
    }
}
