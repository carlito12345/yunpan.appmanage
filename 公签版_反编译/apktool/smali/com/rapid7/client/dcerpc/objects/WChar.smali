.class public abstract Lcom/rapid7/client/dcerpc/objects/WChar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
.implements Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/objects/WChar$NonNullTerminated;,
        Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;
    }
.end annotation


# instance fields
.field private actualCount:I

.field private offset:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/objects/WChar;->value:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method private getCodePoints()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/WChar;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/WChar;->isNullTerminated()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1
.end method

.method private readIndex(Ljava/lang/String;Lcom/rapid7/client/dcerpc/io/PacketInput;)I
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnsignedInt()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long p2, v0, v2

    .line 9
    .line 10
    if-gtz p2, :cond_0

    .line 11
    .line 12
    long-to-int p1, v0

    .line 13
    return p1

    .line 14
    :cond_0
    new-instance p2, Ljava/rmi/UnmarshalException;

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v1, 0x7fffffff

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x3

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object p1, v2, v3

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    aput-object v0, v2, p1

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    aput-object v1, v2, p1

    .line 38
    .line 39
    const-string p1, "%s %d > %d"

    .line 40
    .line 41
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p2, p1}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/rapid7/client/dcerpc/objects/WChar;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/rapid7/client/dcerpc/objects/WChar;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/WChar;->isNullTerminated()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/objects/WChar;->isNullTerminated()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/WChar;->getValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/objects/WChar;->getValue()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/objects/WChar;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/WChar;->isNullTerminated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/WChar;->getValue()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v0, v2, v3

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-object v1, v2, v0

    .line 21
    .line 22
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public abstract isNullTerminated()Z
.end method

.method public marshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/objects/WChar;->value:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeChars(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/WChar;->isNullTerminated()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public marshalEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/objects/WChar;->getCodePoints()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public marshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/objects/WChar;->getCodePoints()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/objects/WChar;->value:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "Expected non-null value"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/WChar;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "null"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/WChar;->getValue()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "\""

    .line 15
    .line 16
    invoke-static {v1, v0, v1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->TWO:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/rapid7/client/dcerpc/objects/WChar;->offset:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    mul-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/objects/WChar;->isNullTerminated()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget v0, p0, Lcom/rapid7/client/dcerpc/objects/WChar;->actualCount:I

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    sub-int/2addr v0, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v0, p0, Lcom/rapid7/client/dcerpc/objects/WChar;->actualCount:I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 34
    .line 35
    .line 36
    :goto_1
    if-ge v2, v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readChar()C

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/objects/WChar;->value:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Offset"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/rapid7/client/dcerpc/objects/WChar;->readIndex(Ljava/lang/String;Lcom/rapid7/client/dcerpc/io/PacketInput;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/rapid7/client/dcerpc/objects/WChar;->offset:I

    .line 13
    .line 14
    const-string v0, "ActualCount"

    .line 15
    .line 16
    invoke-direct {p0, v0, p1}, Lcom/rapid7/client/dcerpc/objects/WChar;->readIndex(Ljava/lang/String;Lcom/rapid7/client/dcerpc/io/PacketInput;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/rapid7/client/dcerpc/objects/WChar;->actualCount:I

    .line 21
    .line 22
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
