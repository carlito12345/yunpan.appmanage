.class public Lx0/k2;
.super Ls5/c;
.source "SourceFile"


# instance fields
.field public final b:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;Ls9/a;)V
    .locals 0

    .line 1
    const/16 p2, 0x17

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ls5/c;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lx0/k2;->b:Landroid/view/Window;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final H(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/k2;->b:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    xor-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    and-int/2addr p1, v1

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
