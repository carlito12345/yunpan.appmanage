.class public final Lpa/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/reverse/Reverse$ReverseStateListener;


# instance fields
.field public final synthetic a:Lpa/e;


# direct methods
.method public constructor <init>(Lpa/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpa/c;->a:Lpa/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReverseStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lpa/c;->a:Lpa/e;

    .line 2
    .line 3
    iget-boolean v1, v0, Lpa/e;->f:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, v0, Lpa/e;->f:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/16 v0, 0x2718

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/16 v0, 0x2719

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lwa/s;->i(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
