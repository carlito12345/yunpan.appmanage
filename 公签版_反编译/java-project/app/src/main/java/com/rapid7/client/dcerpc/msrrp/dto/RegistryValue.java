package com.rapid7.client.dcerpc.msrrp.dto;

import da.b;
import j$.util.Objects;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.LinkedList;
import javax.activation.UnsupportedDataTypeException;
import v7.e;

/* loaded from: classes.dex */
public class RegistryValue {
    private final byte[] data;
    private final String name;
    private final RegistryValueType type;

    /* renamed from: com.rapid7.client.dcerpc.msrrp.dto.RegistryValue$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType;

        static {
            int[] iArr = new int[RegistryValueType.values().length];
            $SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType = iArr;
            try {
                iArr[RegistryValueType.REG_DWORD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[RegistryValueType.REG_DWORD_BIG_ENDIAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[RegistryValueType.REG_QWORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[RegistryValueType.REG_EXPAND_SZ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[RegistryValueType.REG_LINK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[RegistryValueType.REG_SZ.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[RegistryValueType.REG_MULTI_SZ.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[RegistryValueType.REG_BINARY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[RegistryValueType.REG_NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[RegistryValueType.REG_FULL_RESOURCE_DESCRIPTOR.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[RegistryValueType.REG_RESOURCE_LIST.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[RegistryValueType.REG_RESOURCE_REQUIREMENTS_LIST.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public RegistryValue(String str, RegistryValueType registryValueType, byte[] bArr) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException(b.c("Name is invalid: ", str));
        }
        if (registryValueType == null) {
            throw new IllegalArgumentException("Type is invalid: " + registryValueType);
        }
        if (bArr == null) {
            throw new IllegalArgumentException("Data is invalid: " + bArr);
        }
        this.name = str;
        this.type = registryValueType;
        int[] iArr = AnonymousClass1.$SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType;
        switch (iArr[registryValueType.ordinal()]) {
            case 1:
            case 2:
                if (bArr.length != 4) {
                    throw new IOException(String.format("Data type %s is invalid with length %d: 0x%s,", registryValueType, Integer.valueOf(bArr.length), e.f16646d.c(bArr)));
                }
                break;
            case 3:
                if (bArr.length != 8) {
                    throw new IOException(String.format("Data type %s is invalid with length %d: 0x%s,", registryValueType, Integer.valueOf(bArr.length), e.f16646d.c(bArr)));
                }
                break;
            case 4:
            case 5:
            case 6:
            case 7:
                if ((bArr.length & 1) != 0) {
                    throw new IOException(String.format("Data type %s is invalid with length %d: 0x%s,", registryValueType, Integer.valueOf(bArr.length), e.f16646d.c(bArr)));
                }
                break;
        }
        int i10 = iArr[registryValueType.ordinal()];
        if (i10 != 1 && i10 != 3) {
            this.data = Arrays.copyOf(bArr, bArr.length);
            return;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        this.data = bArrCopyOf;
        if (bArrCopyOf != null) {
            int length = bArrCopyOf.length;
            int iMin = Math.min(bArrCopyOf.length, length) - 1;
            for (int iMax = Math.max(0, 0); iMin > iMax; iMax++) {
                byte b10 = bArrCopyOf[iMin];
                bArrCopyOf[iMin] = bArrCopyOf[iMax];
                bArrCopyOf[iMax] = b10;
                iMin--;
            }
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof RegistryValue) {
            RegistryValue registryValue = (RegistryValue) obj;
            if (Objects.equals(this.name, registryValue.name) && Objects.equals(this.type, registryValue.type) && Arrays.equals(this.data, registryValue.data)) {
                return true;
            }
        }
        return false;
    }

    public byte[] getData() {
        return this.data;
    }

    public String getDataAsBinaryStr() {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : this.data) {
            for (int i10 = 7; i10 >= 0; i10--) {
                sb2.append((b10 >> i10) & 1);
            }
        }
        return sb2.toString();
    }

    public String getDataAsHexStr() {
        return e.f16646d.c(this.data);
    }

    public int getDataAsInt() {
        int i10 = AnonymousClass1.$SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[this.type.ordinal()];
        if (i10 == 1 || i10 == 2) {
            return new BigInteger(1, this.data).intValue();
        }
        throw new IllegalStateException();
    }

    public long getDataAsLong() {
        int i10 = AnonymousClass1.$SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[this.type.ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return new BigInteger(1, this.data).longValue();
        }
        throw new IllegalStateException();
    }

    public String[] getDataAsMultiStr() {
        if (AnonymousClass1.$SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[this.type.ordinal()] != 7) {
            throw new IllegalStateException();
        }
        StringBuilder sb2 = new StringBuilder();
        LinkedList linkedList = new LinkedList();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.data);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        while (byteBufferWrap.hasRemaining()) {
            short s8 = byteBufferWrap.getShort();
            if (s8 == 0) {
                linkedList.add(sb2.toString());
                sb2.setLength(0);
            } else {
                sb2.append((char) s8);
            }
        }
        if (sb2.length() > 0) {
            linkedList.add(sb2.toString());
            sb2.setLength(0);
        }
        if (linkedList.size() > 0) {
            int size = linkedList.size() - 1;
            if (((String) linkedList.get(size)).isEmpty()) {
                linkedList.remove(size);
            }
        }
        return (String[]) linkedList.toArray(new String[linkedList.size()]);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.activation.UnsupportedDataTypeException */
    public String getDataAsStr() throws UnsupportedDataTypeException {
        short s8;
        StringBuilder sb2 = new StringBuilder();
        switch (AnonymousClass1.$SwitchMap$com$rapid7$client$dcerpc$msrrp$dto$RegistryValueType[this.type.ordinal()]) {
            case 1:
            case 2:
                sb2.append(getDataAsInt());
                break;
            case 3:
                sb2.append(getDataAsLong());
                break;
            case 4:
            case 5:
            case 6:
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.data);
                byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
                while (byteBufferWrap.hasRemaining() && (s8 = byteBufferWrap.getShort()) != 0) {
                    sb2.append((char) s8);
                }
                break;
            case 7:
                StringBuilder sb3 = new StringBuilder();
                for (String str : getDataAsMultiStr()) {
                    if (sb3.length() > 0) {
                        sb3.append(", ");
                    }
                    sb3.append("\"");
                    sb3.append(str.replace("\"", "\\\""));
                    sb3.append("\"");
                }
                if (sb3.length() > 0) {
                    sb2.append("{");
                    sb2.append(sb3.toString());
                    sb2.append("}");
                    break;
                }
                break;
            case 8:
            case 9:
                sb2.append(getDataAsBinaryStr());
                break;
            default:
                throw new UnsupportedDataTypeException();
        }
        return sb2.toString();
    }

    public String getName() {
        return this.name;
    }

    public RegistryValueType getType() {
        return this.type;
    }

    public int hashCode() {
        return Objects.hash(this.name, this.type, Integer.valueOf(Arrays.hashCode(this.data)));
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.name);
        sb2.append(" (");
        sb2.append(this.type);
        sb2.append(")");
        try {
            if (!getDataAsStr().isEmpty()) {
                sb2.append(" = ");
                sb2.append(getDataAsStr());
                sb2.append(" (0x");
                sb2.append(getDataAsHexStr());
                sb2.append(")");
            }
        } catch (UnsupportedEncodingException | UnsupportedDataTypeException e7) {
            sb2.append(" ! ");
            sb2.append(e7.getClass().getName());
            sb2.append("::");
            sb2.append(e7.getLocalizedMessage());
        }
        return sb2.toString();
    }
}
