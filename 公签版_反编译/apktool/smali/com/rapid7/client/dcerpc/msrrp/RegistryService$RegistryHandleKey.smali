.class Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/msrrp/RegistryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegistryHandleKey"
.end annotation


# instance fields
.field private final access:I

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;->path:Ljava/lang/String;

    .line 8
    .line 9
    iput p2, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;->access:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;->path:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;->path:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;->access:I

    .line 20
    .line 21
    iget p1, p1, Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;->access:I

    .line 22
    .line 23
    if-ne v0, p1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;->path:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;->access:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v0, v2, v3

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    aput-object v1, v2, v0

    .line 17
    .line 18
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method
