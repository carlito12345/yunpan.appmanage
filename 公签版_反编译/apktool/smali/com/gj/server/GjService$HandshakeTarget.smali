.class Lcom/gj/server/GjService$HandshakeTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gj/server/GjService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandshakeTarget"
.end annotation


# instance fields
.field final packageName:Ljava/lang/String;

.field final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/gj/server/GjService$HandshakeTarget;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/gj/server/GjService$HandshakeTarget;->userId:I

    .line 7
    .line 8
    return-void
.end method
