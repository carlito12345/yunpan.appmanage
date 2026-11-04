.class public Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;
    }
.end annotation


# static fields
.field public static final NAME:[B


# instance fields
.field private final flags:J

.field private final leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

.field private final leaseState:J

.field private final parentLeaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

.field private final version:Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->NAME:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x52t
        0x71t
        0x4ct
        0x73t
    .end array-data
.end method

.method private constructor <init>(Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;Lcom/hierynomus/mssmb2/LeaseKey;JLcom/hierynomus/mssmb2/LeaseKey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->version:Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->leaseState:J

    .line 9
    .line 10
    if-eqz p5, :cond_0

    .line 11
    .line 12
    invoke-virtual {p5}, Lcom/hierynomus/mssmb2/LeaseKey;->isAllZero()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 p5, 0x0

    .line 25
    :goto_1
    iput-object p5, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->parentLeaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    sget-object p1, Lcom/hierynomus/mssmb2/SMB2LeaseFlags;->SMB2_LEASE_FLAG_PARENT_LEASE_KEY_SET:Lcom/hierynomus/mssmb2/SMB2LeaseFlags;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/SMB2LeaseFlags;->getValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const-wide/16 p1, 0x0

    .line 37
    .line 38
    :goto_2
    iput-wide p1, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->flags:J

    .line 39
    .line 40
    return-void
.end method

.method public static v1(Lcom/hierynomus/mssmb2/LeaseKey;J)Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;
    .locals 7

    .line 1
    new-instance v6, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;

    .line 2
    .line 3
    sget-object v1, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;->V1:Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, v6

    .line 7
    move-object v2, p0

    .line 8
    move-wide v3, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;-><init>(Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;Lcom/hierynomus/mssmb2/LeaseKey;JLcom/hierynomus/mssmb2/LeaseKey;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public static v2(Lcom/hierynomus/mssmb2/LeaseKey;JLcom/hierynomus/mssmb2/LeaseKey;)Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;
    .locals 7

    .line 1
    new-instance v6, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;

    .line 2
    .line 3
    sget-object v1, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;->V2:Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;

    .line 4
    .line 5
    move-object v0, v6

    .line 6
    move-object v2, p0

    .line 7
    move-wide v3, p1

    .line 8
    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;-><init>(Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;Lcom/hierynomus/mssmb2/LeaseKey;JLcom/hierynomus/mssmb2/LeaseKey;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method


# virtual methods
.method public getFlags()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->flags:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVersion()Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->version:Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;

    .line 2
    .line 3
    return-object v0
.end method

.method public toBytes()[B
    .locals 3

    .line 1
    new-instance v0, Lcom/hierynomus/smb/SMBBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hierynomus/smb/SMBBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->leaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/hierynomus/mssmb2/LeaseKey;->getBytes()[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putRawBytes([B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 13
    .line 14
    .line 15
    iget-wide v1, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->leaseState:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->flags:J

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/hierynomus/smb/SMBBuffer;->putReserved(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->version:Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;

    .line 31
    .line 32
    sget-object v2, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;->V2:Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext$Version;

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->parentLeaseKey:Lcom/hierynomus/mssmb2/LeaseKey;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/hierynomus/mssmb2/LeaseKey;->getBytes()[B

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 v1, 0x10

    .line 46
    .line 47
    new-array v1, v1, [B

    .line 48
    .line 49
    :goto_0
    invoke-virtual {v0, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putRawBytes([B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/hierynomus/smb/SMBBuffer;->putReserved2()Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->getCompactData()[B

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method public toCreateContext()Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;
    .locals 3

    .line 1
    new-instance v0, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;

    .line 2
    .line 3
    sget-object v1, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->NAME:[B

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->toBytes()[B

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;-><init>([B[B)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
