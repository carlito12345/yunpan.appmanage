.class public final La2/l0;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:Lr1/p;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Lr1/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p2, p0, La2/l0;->a:Lr1/p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lr1/p;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p2, p0, La2/l0;->a:Lr1/p;

    return-void
.end method
