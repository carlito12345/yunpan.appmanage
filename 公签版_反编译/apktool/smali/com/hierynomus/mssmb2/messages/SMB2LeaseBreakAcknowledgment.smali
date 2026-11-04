.class public Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakAcknowledgment;
.super Lcom/hierynomus/mssmb2/SMB2Packet;
.source "SourceFile"


# instance fields
.field private final leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

.field private final leaseState:J


# direct methods
.method public constructor <init>(Lcom/hierynomus/mssmb2/SMB2Dialect;JJLcom/hierynomus/mssmb2/LeaseKey;J)V
    .locals 9

    .line 1
    move-object v8, p0

    .line 2
    const/16 v1, 0x24

    .line 3
    .line 4
    sget-object v3, Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;->SMB2_OPLOCK_BREAK:Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v2, p1

    .line 8
    move-wide v4, p2

    .line 9
    move-wide v6, p4

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/hierynomus/mssmb2/SMB2Packet;-><init>(ILcom/hierynomus/mssmb2/SMB2Dialect;Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;JJ)V

    .line 11
    .line 12
    .line 13
    move-object v0, p6

    .line 14
    iput-object v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakAcknowledgment;->leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 15
    .line 16
    move-wide/from16 v0, p7

    .line 17
    .line 18
    iput-wide v0, v8, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakAcknowledgment;->leaseState:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public writeTo(Lcom/hierynomus/smb/SMBBuffer;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/hierynomus/mssmb2/SMB2Packet;->structureSize:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/hierynomus/smb/SMBBuffer;->putReserved2()Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/hierynomus/smb/SMBBuffer;->putReserved4()Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakAcknowledgment;->leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/hierynomus/mssmb2/LeaseKey;->getBytes()[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putRawBytes([B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakAcknowledgment;->leaseState:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x8

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/hierynomus/smb/SMBBuffer;->putReserved(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 29
    .line 30
    .line 31
    return-void
.end method
