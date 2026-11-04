.class public final Lpa/g;
.super Lcom/hsae/autosdk/hmi/IHmiCallback$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lpa/h;


# direct methods
.method public constructor <init>(Lpa/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpa/g;->e:Lpa/h;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/hsae/autosdk/hmi/IHmiCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAirConditionerInputKeyEvent(IZ)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/KeyEvent;

    .line 2
    .line 3
    xor-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    invoke-direct {v0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lpa/g;->e:Lpa/h;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lpa/h;->b(Landroid/view/KeyEvent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onVirtualInputKeyEvent(IZ)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/KeyEvent;

    .line 2
    .line 3
    xor-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    invoke-direct {v0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lpa/g;->e:Lpa/h;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lpa/h;->b(Landroid/view/KeyEvent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
