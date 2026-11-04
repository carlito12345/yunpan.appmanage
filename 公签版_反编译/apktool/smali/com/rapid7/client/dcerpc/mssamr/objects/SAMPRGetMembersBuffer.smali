.class public Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# instance fields
.field private array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rapid7/client/dcerpc/mssamr/objects/GroupMembership;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;

.field private memberCount:I

.field private members:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getGroupMembership()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rapid7/client/dcerpc/mssamr/objects/GroupMembership;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->array:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->members:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->attributes:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 18
    .line 19
    .line 20
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->memberCount:I

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->array:Ljava/util/List;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    :goto_0
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->memberCount:I

    .line 31
    .line 32
    if-ge p1, v0, :cond_2

    .line 33
    .line 34
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/GroupMembership;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/GroupMembership;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->members:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->getArray()[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, [Ljava/lang/Integer;

    .line 46
    .line 47
    aget-object v1, v1, p1

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/rapid7/client/dcerpc/mssamr/objects/GroupMembership;->setRelativeID(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->attributes:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->getArray()[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, [Ljava/lang/Integer;

    .line 63
    .line 64
    aget-object v1, v1, p1

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/rapid7/client/dcerpc/mssamr/objects/GroupMembership;->setAttributes(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->array:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    add-int/lit8 p1, p1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->memberCount:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;

    .line 15
    .line 16
    iget v2, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->memberCount:I

    .line 17
    .line 18
    new-array v2, v2, [Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-direct {v0, v2}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;-><init>([Ljava/lang/Integer;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->members:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->members:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;

    .line 27
    .line 28
    :goto_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;

    .line 35
    .line 36
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->memberCount:I

    .line 37
    .line 38
    new-array v0, v0, [Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-direct {p1, v0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;-><init>([Ljava/lang/Integer;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->attributes:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGetMembersBuffer;->attributes:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;

    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method
